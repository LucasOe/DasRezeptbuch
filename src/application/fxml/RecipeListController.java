package application.fxml;

import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.ResourceBundle;

import application.Main;
import application.category.Category;
import application.recipe.Recipe;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.control.ContentDisplay;
import javafx.scene.control.Label;
import javafx.scene.control.Tooltip;
import javafx.scene.effect.BlurType;
import javafx.scene.effect.DropShadow;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.HBox;
import javafx.scene.layout.Pane;
import javafx.scene.layout.VBox;
import javafx.scene.paint.Color;
import javafx.stage.Stage;

public class RecipeListController {

	@FXML
	private ResourceBundle resources;

	@FXML
	private URL location;

	@FXML
	private VBox recipeListView;

	@FXML
	private Pane sortNameLabel;

	@FXML
	private Pane sortTimeLabel;

	@FXML
	private Pane sortNameArrow;

	@FXML
	private Pane sortTimeArrow;

	private Stage primaryStage;

	private int sortMethod = 1; // 1 = Name, 2 = Time
	private boolean isNameAsc = true;
	private boolean isTimeAsc = true;

	private static final String CSS_SORT_SELECTED = "sortSelected";
	private static final String CSS_SORT_ASC = "asc";
	private static final String CSS_SORT_DESC = "desc";

	@FXML
	void initialize() {
		Main.connect();
		updateSortButtons(sortMethod, isNameAsc);
	}

	public RecipeListController(Stage primaryStage) {
		this.primaryStage = primaryStage;
	}

	private void addRecipes(ArrayList<Recipe> recipeList) {
		HBox hbox = null;
		for (int i = 0; i < recipeList.size(); i++) {
			if (i % 2 == 0) {
				// create hbox
				hbox = new HBox();

				hbox.setSpacing(20);
				hbox.setPrefWidth(1246);

				recipeListView.getChildren().add(hbox);

				// add Rezept
				addRecipePane(hbox, recipeList.get(i));
			} else {
				// add Rezept
				addRecipePane(hbox, recipeList.get(i));
			}
		}
	}

	private void addRecipePane(HBox hbox, Recipe recipe) {
		try {
			FXMLLoader loader = new FXMLLoader(getClass().getResource("recipeView.fxml"));
			RecipeController recipeController = new RecipeController(primaryStage);
			loader.setController(recipeController);
			Pane recipePane = loader.load();

			// set pane id
			recipePane.setId(String.valueOf(recipe.getId()));

			// set name label
			Label recipeLabelName = (Label) recipePane.lookup("#recipeLabelName");
			recipeLabelName.setText(recipe.getName());

			// set time label
			Label recipeLabelTime = (Label) recipePane.lookup("#recipeLabelTime");
			recipeLabelTime.setText(String.valueOf(recipe.getTime()) + "min");

			// set image
			ImageView recipeImageView = (ImageView) recipePane.lookup("#recipeImageView");
			Image recipeImage = new Image("application/fxml/images/recipes/" + recipe.getImageUrl());
			recipeImageView.setImage(recipeImage);

			// add categories
			for (Category category : recipe.getCategoryList()) {
				Image categoryImage = new Image(category.getCategoryImageUrl());
				ImageView imageView = new ImageView();

				imageView.setImage(categoryImage);
				imageView.setFitWidth(47);
				imageView.setFitHeight(47);
				imageView.setPreserveRatio(true);
				imageView.setEffect(new DropShadow(BlurType.THREE_PASS_BOX, new Color(0, 0, 0, 0.25), 10, 0, 0, 0));

				// Tooltip workaround
				Label tooltipLabel = new Label();
				tooltipLabel.setContentDisplay(ContentDisplay.GRAPHIC_ONLY);
				tooltipLabel.setGraphic(imageView);
				tooltipLabel.setTooltip(new Tooltip(category.getCategoryName()));

				HBox recipeCategoryList = (HBox) recipePane.lookup("#recipeCategoryList");
				recipeCategoryList.getChildren().add(tooltipLabel);
				/*
				*/
			}

			// set background color
			recipePane.getStylesheets().add(recipe.getStylesheet());

			hbox.getChildren().add(recipePane);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	private void updateRecipePanes(int sortMethod) {
		ArrayList<Recipe> recipeList = Main.getRecipeList(sortMethod);
		recipeListView.getChildren().clear(); // Remove all children
		addRecipes(recipeList);
	}

	private void updateSortButtons(int method, boolean isAsc) {
		sortMethod = method;
		switch (method) {
			case 1:
				removeSortClasses(method);
				sortNameLabel.getStyleClass().add(CSS_SORT_SELECTED);

				isNameAsc = isAsc;

				if (isAsc) {
					sortNameArrow.getStyleClass().add(CSS_SORT_ASC);
					updateRecipePanes(1);
				} else {
					sortNameArrow.getStyleClass().add(CSS_SORT_DESC);
					updateRecipePanes(2);
				}

				break;
			case 2:
				removeSortClasses(method);
				sortTimeLabel.getStyleClass().add(CSS_SORT_SELECTED);

				isTimeAsc = isAsc;

				if (isAsc) {
					sortTimeArrow.getStyleClass().add(CSS_SORT_ASC);
					updateRecipePanes(3);
				} else {
					sortTimeArrow.getStyleClass().add(CSS_SORT_DESC);
					updateRecipePanes(4);
				}

				break;
			default:
				return;
		}
	}

	private void removeSortClasses(int method) {
		sortNameLabel.getStyleClass().remove(CSS_SORT_SELECTED);
		sortTimeLabel.getStyleClass().remove(CSS_SORT_SELECTED);
		switch (method) {
			case 1:
				sortNameArrow.getStyleClass().remove(CSS_SORT_ASC);
				sortNameArrow.getStyleClass().remove(CSS_SORT_DESC);
				break;
			case 2:
				sortTimeArrow.getStyleClass().remove(CSS_SORT_ASC);
				sortTimeArrow.getStyleClass().remove(CSS_SORT_DESC);
				break;
			default:
				return;
		}
	}

	@FXML
	void clickSortNameLabel(MouseEvent event) {
		updateSortButtons(1, isNameAsc);
	}

	@FXML
	void clickSortTimeLabel(MouseEvent event) {
		updateSortButtons(2, isTimeAsc);
	}

	@FXML
	void clickSortNameArrow(MouseEvent event) {
		updateSortButtons(1, !isNameAsc);
	}

	@FXML
	void clickSortTimeArrow(MouseEvent event) {
		updateSortButtons(2, !isTimeAsc);
	}
}