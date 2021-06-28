create table rezeptliste
(
    Name         char(120)  not null,
    IdRezept     int auto_increment,
    Favorit      tinyint(1) not null,
    Beschreibung text       not null,
    Zeit         int        not null,
    BildUrl      char(120)  not null,
    constraint rezeptliste_IdRezept_uindex
        unique (IdRezept)
)
    collate = utf8_unicode_ci;

alter table rezeptliste
    add primary key (IdRezept);

INSERT INTO rezepte_test.rezeptliste (Name, IdRezept, Favorit, Beschreibung, Zeit, BildUrl) VALUES ('Hühnerfrikasse', 1, 0, 'Zuerst legst Du Dir Deine Hähnchenfleisch-Reste zurecht und schneidest sie beliebig klein. Ich schneide zum Beispiel immer Würfelchen.\\nIm Anschluss schälst Du die Möhren und schneidest sie in sehr kleine Stücke, die Champignons putzen und nach Belieben klein schneiden, die 150g Tiefkühl-Erbsen abwiegen. Die Hühnerbrühe bereitstellen.\\nJetzt bereitest Du die Mehlschwitze vor, in dem Du die 25g Butter in einem Topf zerlässt und dann 25 g Mehl zur geschmolzenen Butter gibst. Unter ständigem, schnellen Rühren mit dem Schneebesen lässt Du das Mehl in der Butter anschwitzen, bis es goldgelb wird.\\nIm Anschluss rührst Du wieder mit dem Schneebesen nach und nach und etwas langsamer Deine Hühnerbrühe unter (egal ob warm oder kalt). Dabei wieder schnell rühren, wegen der Klümpchenbildung. Jetzt lässt Du alles nochmal kurz aufkochen.\\nNun gibst Du die Sahne, die Champignons, die Möhrenstückchen und Erbsen heinein, und lässt alles für 5-8 Minuten köcheln. Dabei ab und zu umrühren!\\nDas Frikassee mit einem Spritzer Zitronensaft, Salz und Pfeffer abschmecken und noch die Hähnchenfleisch-Reste für 5 Minuten darin ziehen lassen, um sie zu erwärmen.', 30, 'Huehnerfrikassee.png');
INSERT INTO rezepte_test.rezeptliste (Name, IdRezept, Favorit, Beschreibung, Zeit, BildUrl) VALUES ('Ratatouille mit Mozarella', 2, 0, 'Als erstes heizt Du den Ofen auf 200 Grad Umluft vor.\\nDann rührst Du das Tomatenmark und die Chiliflocken hinein, lässt beides kurz mit rösten und schmeckst mit Salz und Pfeffer ab. Vom Herd nehmen und kurz zur Seite stellen\\nDie Aubergine, die Zucchini und die Tomaten waschen und so weit wie möglich in gleichmäßig dünne Scheiben schneiden: ca. 2-3 mm.\\nDie Schalotten-Masse unten in einer passenden Auflaufform gleichmäßig verteilen und darauf abwechselnd dicht an dicht das Gemüse dachziegelartig schichten.\\nKräftig mit Salz und Pfeffer würzen und mit 6 EL Olivenöl beträufeln.\\nDie Auflaufform mit Alufolie verschließen und auf der mittleren Schiene ca. 40-45 Minuten backen.\\nIn der Zeit den Mozzarella  fein zupfen und nach den 40 oder 45 Minuten das Gemüse damit bestreuen. OHNE Alufolie bei gleicher Temperatur für weitere 10-15 Minuten auf der mittleren Schiene zu Ende backen bzw. bis der Käse die gewünschte Farbe angekommen hat.', 75, 'Ratatouille_mit_Mozzarella.png');
INSERT INTO rezepte_test.rezeptliste (Name, IdRezept, Favorit, Beschreibung, Zeit, BildUrl) VALUES ('Blumenkohl Kartoffel Eintopf mit weißen Bohnen & Grünkohl', 3, 0, 'Zwiebeln und Knoblauch in 2 EL Olivenöl anbraten. Thymian, Karotten dazugeben und 2-3 Minuten auf mittlerer Hitze anbraten. Mit Brühe ablöschen und den Blumenkohl und die Kartoffeln dazugeben.\\n20-30 Minuten köcheln lassen. 1 Schöpfkelle der Suppe fein pürieren und wieder in den Topf zurück geben.\\nWeiße Bohnen abspülen und mit dem Grünkohl unter den Eintopf mischen.\\n3-5 Minuten auf kleiner Hitze köcheln lassen und mit Salz und Pfeffer abschmecken.\\nPetersilie hacken und unter den Eintopf mischen. Wer mag gibt noch Kresse dazu.', 30, 'Blumenkohl_Eintopf.png');
INSERT INTO rezepte_test.rezeptliste (Name, IdRezept, Favorit, Beschreibung, Zeit, BildUrl) VALUES ('Linsen-Dal mit gebratenem Blumenkohl', 4, 0, 'Linsen kalt abspülen und abtropfen lassen. Ingwer schälen und fein hacken. Zwiebeln schälen und fein würfeln.\\n2 EL Öl in einem Topf erhitzen. Chili, Ingwer, Kreuzkümmel, Garam Masala und Senfsamen darin unter Rühren kurz anrösten, bis es zu duften anfängt. ­Linsen zufügen und kurz andünsten. 1 l Wasser zugießen, aufkochen.\\nBei mittlerer Hitze unter gelegentlichem Rühren zugedeckt 15–20 Minuten köcheln.\\nTomaten waschen, vierteln und in Würfel schneiden. Ca. 10 Minuten vor Ende der Garzeit zum Dal geben. Blumenkohl putzen, waschen und in Röschen teilen. Koriander waschen, trocken schütteln, Blätter von den Stielen zupfen und fein hacken.\\n1 EL Öl in einer Pfanne erhitzen. BLumenkohl unter Wenden 5-8 Minuten goldbraun braten. Mit Salz und Pfeffer würzen.\\nGehackten Koriander unter die Linsen heben. Mit Salz und Zitronensaft abschmecken. Mit gebratenem Blumenkohl in vier tiefen Tellern anrichten.', 30, 'Linsen_Dal_mit_gebratenem_Blumenkohl.png');
INSERT INTO rezepte_test.rezeptliste (Name, IdRezept, Favorit, Beschreibung, Zeit, BildUrl) VALUES ('Gebratener Reis mit Gemüse und Ei', 5, 0, 'Alls erstes den Reis nach Packungsanleitung gar kochen.\\nGemüse klein schneiden und in Öl knusprig anbraten. (ausgenommen die Erbsen)\\nDas Gemüse in eine Schale geben. Gewürze in die Pfanne geben und ebenfalls anbraten. Den Reis dazugeben und unter gelegentlichen rühren anbraten. Das Gemüse zurück in die Pfanne geben und mit dem Reis mischen. Nun die Erbsen und die Sojasauce dazugeben.\\nZwiebeln in einer Pfanne mit Öl kräftig anrösten.\\nReis in Schalen verteilen und mit gebratenen Zwiebeln und Rührei/Tofurührei servieren.\\nMit Salz und Pfeffer abschmecken.', 35, 'Gebratener_Reis.png');
INSERT INTO rezepte_test.rezeptliste (Name, IdRezept, Favorit, Beschreibung, Zeit, BildUrl) VALUES ('Hackfleischauflauf mit Kartoffelhaube (Shepherd''s Pie)', 6, 0, 'Kartoffeln schälen, waschen und in Salzwasser 25–30 Minuten kochen.\\nMöhre waschen und sehr klein würfeln. Zwiebeln schälen und fein würfeln. Olivenöl in einer Pfanne erhitzen. Möhre, Zwiebeln und Rinderhackfleisch zugeben und 5–8 Minuten bei mittlerer Hitze anbraten. Tomatenmark zugeben und 1 Minute mitrösten. Brühe angießen und mit Salz und Pfeffer abschmecken.\\nKartoffeln abgießen, abtropfen lassen und zerstampfen. Milch in einem Topf erwärmen und unterrühren. Mit Salz, Pfeffer und Muskat würzen. Hackfleisch auf vier Auflaufformen aufteilen. Kartoffelpüree in einen Spritzbeutel mit Sternentülle geben und auf dem Hack verteilen. Im vorgeheizten Backofen bei 200 °C (Umluft 180 °C; Gas: Stufe 3) ca. 35–40 Minuten goldbraun backen. Herausnehmen und sofort servieren.', 115, 'Hackfleischauflauf_mit_Kartoffelhaube.png');
INSERT INTO rezepte_test.rezeptliste (Name, IdRezept, Favorit, Beschreibung, Zeit, BildUrl) VALUES ('Rinderbraten mit Zwiebelsoße', 7, 0, 'Fleisch trocken tupfen und rundherum mit Senf einreiben. Mit Salz und Pfeffer würzen. 4 EL Öl in einem Bräter erhitzen. Fleisch darin rundherum kräftig anbraten. Fond angießen und aufkochen. Gewürze zufügen. Zugedeckt ca. 2 Stunden garen. Dabei das Fleisch alle ca. 30 Minuten wenden.\\nMöhren und Sellerie schälen. Beides klein schneiden. Porree putzen, waschen und in Stücke schneiden. Zwiebeln schälen. 2 Zwiebeln vierteln. Nach ca. 1 Stunde der Garzeit Möhren, Sellerie, Porree und Zwiebelviertel zum Fleisch geben und mitgaren.\\nInzwischen Kartoffeln schälen und waschen. In Salzwasser ca. 20 Minuten kochen. Übrige Zwiebeln halbieren und in Streifen schneiden. 50 g Butter in einer Pfanne erhitzen. Zwiebeln darin bei mittlerer Hitze 8–10 Minuten braten. Fleisch aus dem Bräter nehmen und warmstellen. Bratenfond durch ein Sieb gießen und auffangen. Zwiebeln mit Mehl bestäuben, mit dem Bratenfond ablöschen und ca. 10 Minuten köcheln lassen. Soße mit Salz und Pfeffer würzen.\\nSalat putzen, waschen, trocken schütteln und in mundgerechte Stücke zupfen. Zitronen halbieren und auspressen. Joghurt, Zitronensaft, 3 EL Wasser, Essig und 2 EL Öl verrühren. Dressing mit Salz und Pfeffer würzen. Petersilie waschen und trocken schütteln. Blättchen von den Stielen zupfen und, bis auf einige zum Garnieren, hacken. 30 g Butter in einem Topf schmelzen. Gehackte Petersilie zufügen. Kartoffeln abgießen und in der Petersilienbutter schwenken.\\nSalat und Joghurtdressing mischen. Braten in Scheiben schneiden. Mit den Kartoffeln auf einer Platte anrichten. Etwas Zwiebelsoße über den Braten geben. Mit übriger Petersilie garnieren. Übrige Zwiebelsoße und Salat in Schälchen dazu reichen.', 150, 'Rinderbraten_mit_Zwiebelsoße.png');