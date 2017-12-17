USE ProjetBD2017
GO
INSERT INTO tblZoneGeographique
VALUES (1, 'Afrique'),
  (2, 'Amerique du nord'),
  (3, 'Amerique du sud'),
  (4, 'Asie'),
  (5, 'Europe'),
  (6, 'Océanie')
GO
INSERT INTO tblTournoi
VALUES

  ('Internationaux du Canada', 'Montréal', 'Canada', 750000),
  ('Roland Garros', 'Paris', 'France', 1250000),
  ('Wimbledon', 'Londres', 'Angleterre', 1000000)
GO
INSERT INTO tblNationalite
VALUES ('ARG', 'Argentine', 3),
  ('ARM', 'Arménie', 4),
  ('AUS', 'Australie', 6),
  ('AUT', 'Autriche', 5),
  ('BEL', 'Belgique', 5),
  ('BLR', 'Biélorussie', 5),
  ('BRA', 'Brésil', 3),
  ('CHI', 'Chili', 3),
  ('CRO', 'Croatie', 5),
  ('CZE', 'République tchèque', 5),
  ('DEN', 'Danemark', 5),
  ('ECU', 'Equateur', 3),
  ('ESP', 'Espagne', 5),
  ('FIN', 'Finlande', 5),
  ('FRA', 'France', 5),
  ('GBR', 'Grande-Bretagne', 5),
  ('GEO', 'Géorgie', 5),
  ('GER', 'Allemagne', 5),
  ('HUN', 'Hongrie', 5),
  ('ITA', 'Italie', 5),
  ('KOR', 'Corée', 4),
  ('MAR', 'Maroc', 1),
  ('NED', 'Pays-Bas', 5),
  ('ROM', 'Roumanie', 5),
  ('RSA', 'Afrique du Sud', 1),
  ('RUS', 'Russie', 5),
  ('SUI', 'Suisse', 5),
  ('SVK', 'Slovaquie', 5),
  ('SWE', 'Suède', 5),
  ('THA', 'Thailande', 4),
  ('USA', 'États-Unis', 2)
GO
INSERT INTO tblJoueursOceanie
VALUES (4, 'Hewitt', 'Lleyton', NULL, 'AUS'),
  (57, 'Arthurs', 'Wayne', NULL, 'AUS'),
  (66, 'Philippoussis', 'MARK', NULL, 'AUS')
GO
INSERT INTO tblJoueursEurope
VALUES ('77', 'Savolt', 'Attila', '', 'HUN'),
  ('33', 'Sanguinetti', 'Davide', '', 'ITA'),
  ('67', 'Gaudenzi', 'Andrea', '', 'ITA'),
  ('98', 'Galvani', 'Stefano', '', 'ITA'),
  ('36', 'Schalken', 'Sjeng', '', 'NED'),
  ('93', 'Sluiter', 'Raemon', '', 'NED'),
  ('19', 'Pavel', 'Andrei', '', 'ROM'),
  ('47', 'Voinea', 'Adrian', '', 'ROM'),
  ('1', 'Safin', 'Marat', '', 'RUS'),
  ('20', 'Kafelnikov', 'Yevgeny', '', 'RUS'),
  ('59', 'Youzhny', 'Mikhail', '', 'RUS'),
  ('92', 'Davydenko', 'Nikolay', '', 'RUS'),
  ('5', 'Federer', 'Roger', '', 'SUI'),
  ('54', 'Kratochvil', 'Michel', '', 'SUI'),
  ('101', 'Heuberger', 'Ivo', '', 'SUI'),
  ('62', 'Hrbaty', 'Dominik', '', 'SVK'),
  ('71', 'Kucera', 'Karol', '', 'SVK'),
  ('6', 'Johansson', 'Thomas', '', 'SWE'),
  ('30', 'Enqvist', 'Thomas', '', 'SWE'),
  ('31', 'Bjorkman', 'Jonas', '', 'SWE')
GO
INSERT INTO tblJoueursAsie
VALUES ('91', 'Sargsian', 'Sargis', '', 'ARM'),
  ('60', 'Srichaphan', 'Paradorn', '', 'THA')
GO
INSERT INTO tblJoueursAmeriqueSud
VALUES ('14', 'Canas', 'Guillermo', '', 'ARG'),
  ('15', 'Gaudio', 'Gaston', '', 'ARG'),
  ('17', 'Chela', 'Juan Ignacio', '', 'ARG'),
  ('28', 'Nalbandian', 'David', '', 'ARG'),
  ('41', 'Zabaleta', 'Mariano', '', 'ARG'),
  ('56', 'Calleri', 'Agustin', '', 'ARG'),
  ('73', 'Squillari', 'Franco', '', 'ARG'),
  ('80', 'Coria', 'Guillermo', '', 'ARG'),
  ('83', 'Acasuso', 'Jose', '', 'ARG'),
  ('55', 'Meligeni', 'Fernando', '', 'BRA'),
  ('58', 'Kuerten', 'Gustavo', '', 'BRA'),
  ('86', 'Saretta', 'Flavio', '', 'BRA'),
  ('88', 'Sa', 'Andre', '', 'BRA'),
  ('21', 'Gonzalez', 'Fernando', '', 'CHI'),
  ('23', 'Rios', 'Marcelo', '', 'CHI'),
  ('53', 'Massu', 'Nicolas', '', 'CHI'),
  ('24', 'Lapentti', 'Nicolas', '', 'ECU')
GO
INSERT INTO tblJoueursAmeriqueSud
VALUES ('3', 'Agassi', 'Andre', '', 'USA'),
  ('11', 'Roddick', 'Andy', '', 'USA'),
  ('27', 'Martin', 'Todd', '', 'USA'),
  ('29', 'Sampras', 'Pete', '', 'USA'),
  ('32', 'Blake', 'James', '', 'USA'),
  ('44', 'Gambill', 'Jan-Michael', '', 'USA'),
  ('97', 'Spadea', 'Vincent', '', 'USA'),
  ('100', 'Dent', 'Taylor', '', 'USA')
GO
INSERT INTO tblJoueursAfrique
VALUES ('12', 'El Aynaoui', 'Younes', '', 'MAR'),
  ('64', 'Arazi', 'Hicham', '', 'MAR'),
  ('34', 'Ferreira', 'Wayne', '', 'RSA')
GO
INSERT INTO tblCommanditaires
VALUES ('1', 'Pepsi Cola'),
  ('2', 'General Moteur'),
  ('3', 'Molson Dry'),
  ('4', 'Du Maurier'),
  ('5', 'Microsoft')
GO
INSERT INTO tblTournoiCommandite
VALUES ('1', '1'),
  ('2', '2'),
  ('3', '1'),
  ('3', '3'),
  ('4', '3'),
  ('5', '2')
GO
INSERT INTO tblTypeResultats
VALUES ('1', 'Vainqueur', '200', '0.28'),
  ('2', 'Finaliste', '50', '0.16'),
  ('3', 'Demi-Finaliste', '20', '0.08'),
  ('4', 'Quart de finaliste', '10', '0.04'),
  ('5', 'Huitième de finaliste', '5', '0.02'),
  ('6', 'Seizième de finaliste', '1', '0.01')


