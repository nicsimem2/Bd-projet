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
  ('2', '3'),
  ('3', '2')
GO
INSERT INTO tblTypeResultats
VALUES ('1', 'Vainqueur', '200', '0.28'),
  ('2', 'Finaliste', '50', '0.16'),
  ('3', 'Demi-Finaliste', '20', '0.08'),
  ('4', 'Quart de finaliste', '10', '0.04'),
  ('5', 'Huitième de finaliste', '5', '0.02'),
  ('6', 'Seizième de finaliste', '1', '0.01')
GO
INSERT INTO tblResultats
VALUES ('1', '1', '6', '7,500', '2008', '1'),
  ('2', '1', '6', '7,500', '2009', '1'),
  ('3', '1', '3', '60,000', '2010', '20'),
  ('5', '2', '1', '200,000', '2011', '200'),
  ('6', '2', '2', '120,000', '2012', '50'),
  ('7', '2', '3', '60,000', '2013', '20'),
  ('8', '2', '3', '60,000', '2014', '20'),
  ('9', '2', '4', '30,000', '2015', '10'),
  ('10', '2', '4', '30,000', '2016', '10'),
  ('11', '1', '4', '30,000', '2017', '10'),
  ('13', '2', '4', '30,000', '2018', '10'),
  ('14', '1', '5', '15,000', '2019', '5'),
  ('15', '1', '5', '15,000', '2020', '5'),
  ('16', '2', '4', '30,000', '2021', '10'),
  ('17', '1', '5', '15,000', '2022', '5'),
  ('18', '2', '5', '15,000', '2023', '5'),
  ('19', '2', '5', '15,000', '2024', '5'),
  ('20', '2', '5', '15,000', '2025', '5'),
  ('21', '1', '5', '15,000', '2026', '5'),
  ('22', '2', '5', '15,000', '2027', '5'),
  ('23', '1', '5', '15,000', '2028', '5'),
  ('24', '1', '6', '7,500', '2029', '1'),
  ('25', '2', '5', '15,000', '2030', '5'),
  ('26', '2', '5', '15,000', '2031', '5'),
  ('27', '1', '4', '30,000', '2032', '10'),
  ('28', '1', '6', '7,500', '2033', '1'),
  ('29', '1', '4', '30,000', '2034', '10'),
  ('30', '2', '5', '15,000', '2035', '5'),
  ('31', '2', '5', '15,000', '2036', '5'),
  ('32', '1', '4', '30,000', '2037', '10'),
  ('33', '2', '6', '7,500', '2038', '1'),
  ('34', '1', '2', '120,000', '2039', '50'),
  ('35', '2', '6', '7,500', '2040', '1'),
  ('36', '2', '6', '7,500', '2041', '1'),
  ('37', '2', '6', '7,500', '2042', '1'),
  ('38', '2', '6', '7,500', '2043', '1'),
  ('39', '2', '6', '7,500', '2044', '1'),
  ('40', '2', '6', '7,500', '2045', '1'),
  ('41', '1', '6', '7,500', '2046', '1'),
  ('42', '2', '6', '7,500', '2047', '1'),
  ('43', '2', '6', '7,500', '2048', '1'),
  ('44', '1', '5', '15,000', '2049', '5'),
  ('45', '2', '6', '7,500', '2050', '1'),
  ('46', '2', '6', '7,500', '2051', '1'),
  ('47', '2', '6', '7,500', '2052', '1'),
  ('48', '2', '6', '7,500', '2053', '1'),
  ('49', '2', '6', '7,500', '2054', '1'),
  ('50', '2', '6', '7,500', '2055', '1'),
  ('51', '2', '6', '7,500', '2056', '1'),
  ('53', '1', '6', '7,500', '2057', '1'),
  ('55', '1', '6', '7,500', '2058', '1'),
  ('56', '1', '6', '7,500', '2059', '1'),
  ('58', '1', '6', '7,500', '2060', '1'),
  ('60', '1', '6', '7,500', '2061', '1'),
  ('64', '1', '3', '60,000', '2062', '20'),
  ('73', '1', '6', '7,500', '2063', '1'),
  ('80', '1', '6', '7,500', '2064', '1'),
  ('83', '1', '6', '7,500', '2065', '1'),
  ('86', '1', '6', '7,500', '2066', '1'),
  ('88', '1', '6', '7,500', '2067', '1'),
  ('91', '1', '6', '7,500', '2068', '1'),
  ('97', '1', '5', '15,000', '2069', '5'),
  ('100', '1', '5', '15,000', '2070', '5')
GO
PRINT('cyka bliin!!')

