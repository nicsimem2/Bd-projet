USE  TennisTreNi
GO

PRINT('ADDING ALL PRIMARY KEY, SECONDARY KEY AND CHECKS')

--PRIMARY KEYS
ALTER TABLE tblJoueursAmeriqueNord
ADD CONSTRAINT pk_JoueursAmeriqueNord
PRIMARY KEY(noJoueur);
PRINT('Primary key "noJoueur" in "tblJoueursAmeriqueNord" added')
GO

ALTER TABLE tblJoueursAmeriqueSud
ADD CONSTRAINT pk_JoueursAmeriqueSud
PRIMARY KEY(noJoueur);
PRINT('Primary key "noJoueur" in "tblJoueursAmeriqueSud" added')
GO

ALTER TABLE tblJoueursEurope
ADD CONSTRAINT pk_JoueursEurope
PRIMARY KEY(noJoueur);
PRINT('Primary key "noJoueur" in "tblJoueursEurope" added')
GO

ALTER TABLE tblJoueursAfrique
ADD CONSTRAINT pk_JoueursAfrique
PRIMARY KEY(noJoueur);
PRINT('Primary key "noJoueur" in "tblJoueursAfrique" added')
GO

ALTER TABLE tblJoueursOceanie
ADD CONSTRAINT pk_JoueursOceanie
PRIMARY KEY(noJoueur);
PRINT('Primary key "noJoueur" in "tblJoueursOceanie" added')
GO

ALTER TABLE tblJoueursAsie
ADD CONSTRAINT pk_JoueursAsie
PRIMARY KEY(noJoueur);
PRINT('Primary key "noJoueur" in "tblJoueursAsie" added')
GO

ALTER TABLE tblZoneGeographique
ADD CONSTRAINT pk_ZoneGeographique
PRIMARY KEY(codeZone);
PRINT('Primary key "codeZone" in "tblZoneGeographique" added')
GO

ALTER TABLE tblNationalite
ADD CONSTRAINT pk_Nationalite
PRIMARY KEY(codeNationalite);
PRINT('Primary key "codeNationalite" in "tblNationalite" added')
GO

ALTER TABLE tblTypeResultats
ADD CONSTRAINT pk_TypeResultats
PRIMARY KEY(codeResultat);
PRINT('Primary key "codeResultat" in "tblTypeResultats" added')
GO

ALTER TABLE tblCommanditaires
ADD CONSTRAINT pk_Commanditaires
PRIMARY KEY(noCommanditaire);
PRINT('Primary key "noCommanditaire" in "tblCommanditaires" added')
GO

ALTER TABLE tblTournoi
ADD CONSTRAINT pk_Tournoi
PRIMARY KEY(noTournoi);
PRINT('Primary key "noTournoi" in "tblTournoi" added')
GO

ALTER TABLE tblTournoiCommandite
ADD CONSTRAINT pk_TournoiCommandite
PRIMARY KEY(noTournoi,noCommanditaire);
PRINT('Primary key "noTournoi" and "noCommanditaire" in "tblTournoiCommandite" added')
GO

ALTER TABLE tblResultats
ADD CONSTRAINT pk_Resultats
PRIMARY KEY(anneeTournoi);
PRINT('Primary key "anneeTournoi" in "tblResultats" added')
GO


--FOREIGN KEYS
ALTER TABLE tblNationalite
ADD CONSTRAINT fk_zone_nationalite
FOREIGN KEY(codeZone)
REFERENCES tblZoneGeographique(codeZone)
ON UPDATE CASCADE;
PRINT('foreign key "codeZone" in "tblNationalite" added')
GO

ALTER TABLE tblJoueursAfrique
ADD CONSTRAINT fk_Nationalite_afrique
FOREIGN KEY(codeNationalite)
REFERENCES tblNationalite(codeNationalite)
ON UPDATE CASCADE;
PRINT('foreign key "codeNationalite" in "tblJoueursAfrique" added')
GO

ALTER TABLE tblJoueursAmeriqueSud
ADD CONSTRAINT fk_Nationalite_AmeriqueSud
FOREIGN KEY(codeNationalite)
REFERENCES tblNationalite(codeNationalite)
ON UPDATE CASCADE;
PRINT('foreign key "codeNationalite" in "tblJoueursAmeriqueSud" added')
GO

ALTER TABLE tblJoueursAmeriqueNord
ADD CONSTRAINT fk_Nationalite_AmeriqueNord
FOREIGN KEY(codeNationalite)
REFERENCES tblNationalite(codeNationalite)
ON UPDATE CASCADE;
PRINT('foreign key "codeNationalite" in "tblJoueursAmeriqueNord" added')
GO

ALTER TABLE tblJoueursEurope
ADD CONSTRAINT fk_Nationalite_Europe
FOREIGN KEY(codeNationalite)
REFERENCES tblNationalite(codeNationalite)
ON UPDATE CASCADE;
PRINT('foreign key "codeNationalite" in "tblJoueursEurope" added')
GO

ALTER TABLE tblJoueursAsie
ADD CONSTRAINT fk_Nationalite_Asie
FOREIGN KEY(codeNationalite)
REFERENCES tblNationalite(codeNationalite)
ON UPDATE CASCADE;
PRINT('foreign key "codeNationalite" in "tblJoueursAsie" added')
GO

ALTER TABLE tblJoueursOceanie
ADD CONSTRAINT fk_Nationalite_Oceanie
FOREIGN KEY(codeNationalite)
REFERENCES tblNationalite(codeNationalite)
ON UPDATE CASCADE;
PRINT('foreign key "codeNationalite" in "tblJoueursOceanie" added')
GO

ALTER TABLE tblTournoiCommandite
ADD CONSTRAINT fk_Tournoi_Commanditaire
FOREIGN KEY(noCommanditaire)
REFERENCES tblCommanditaires(noCommanditaire)
ON UPDATE CASCADE;
PRINT('foreign key "noCommanditaire" in "tblTournoiCommandite" added')
GO

ALTER TABLE tblTournoiCommandite
ADD CONSTRAINT fk_Tournoi_Commanditaire2
FOREIGN KEY(noTournoi)
REFERENCES tbltournoi(noTournoi)
ON UPDATE CASCADE;
PRINT('foreign key "noTournoi" in "tblTournoiCommandite" added')
GO

ALTER TABLE tblResultats
ADD CONSTRAINT fk_Resultats_Tournoi
FOREIGN KEY(noTournoi)
REFERENCES tbltournoi(noTournoi)
ON UPDATE NO ACTION;
PRINT('foreign key "noTournoi" in "tblResultats" added')
GO

ALTER TABLE tblResultats
ADD CONSTRAINT fk_Resultats_TypeResultat
FOREIGN KEY(codeResultat)
REFERENCES tblTypeResultats(codeResultat)
ON UPDATE NO ACTION;
PRINT('foreign key "codeResultat" in "tblResultats" added')
GO

ALTER TABLE tblResultats
ADD CONSTRAINT fk_Resultats_JoueursAfrique
FOREIGN KEY(noJoueur)
REFERENCES tblJoueursAfrique(noJoueur)
ON UPDATE NO ACTION;
PRINT('foreign key "noJoueur" in "tblResultats" added')
GO

ALTER TABLE tblResultats
ADD CONSTRAINT fk_Resultats_JoueursANord
FOREIGN KEY(noJoueur)
REFERENCES tblJoueursAmeriqueNord(noJoueur)
ON UPDATE NO ACTION;
PRINT('foreign key "noJoueur" in "tblResultats" added')
GO

ALTER TABLE tblResultats
ADD CONSTRAINT fk_Resultats_JoueursASud
FOREIGN KEY(noJoueur)
REFERENCES tblJoueursAmeriqueSud(noJoueur)
ON UPDATE NO ACTION;
PRINT('foreign key "noJoueur" in "tblResultats" added')
GO

ALTER TABLE tblResultats
ADD CONSTRAINT fk_Resultats_JoueursEu
FOREIGN KEY(noJoueur)
REFERENCES tblJoueursEurope(noJoueur)
ON UPDATE NO ACTION;
PRINT('foreign key "noJoueur" in "tblResultats" added')
GO

ALTER TABLE tblResultats
ADD CONSTRAINT fk_Resultats_JoueursAsie
FOREIGN KEY(noJoueur)
REFERENCES tblJoueursAsie(noJoueur)
ON UPDATE NO ACTION;
PRINT('foreign key "noJoueur" in "tblResultats" added')
GO

ALTER TABLE tblResultats
ADD CONSTRAINT fk_Resultats_JoueursOcea
FOREIGN KEY(noJoueur)
REFERENCES tblJoueursOceanie(noJoueur)
ON UPDATE NO ACTION;
PRINT('foreign key "noJoueur" in "tblResultats" added')
GO

PRINT('cheeky breeky')
GO

--Afrique check/default

ALTER TABLE tblJoueursAfrique
ADD CONSTRAINT DEF_JoueursPointsAfrique
DEFAULT 0 FOR pointsJoueur
PRINT('"pointsJoueur" default =0 dans "tblJoueursAfrique"')
GO

ALTER TABLE tblJoueursAfrique
ADD CONSTRAINT ck_JoueursPointsAfrique
CHECK ( pointsJoueur >=0);
PRINT('Check "pointsJoueur" plus grand que 0 dans "tblJoueursAfrique"')
GO

--Amérique du nord check/default
ALTER TABLE tblJoueursAmeriqueNord
ADD CONSTRAINT DEF_JoueursPointsAmeriqueNord
DEFAULT 0 FOR pointsJoueur
PRINT(' "pointsJoueur" default =0 dans "tblJoueursAmeriqueNord"')
GO

ALTER TABLE tblJoueursAmeriqueNord
ADD CONSTRAINT ck_JoueursPointsAmeriqueNord
CHECK ( pointsJoueur >=0);
PRINT('Check "pointsJoueur" plus grand que 0 dans "tblJoueursAmeriqueNord"')
GO


--Amérique du sud check/default
ALTER TABLE tblJoueursAmeriqueSud
ADD CONSTRAINT DEF_JoueursPointsAmeriqueSud
DEFAULT 0 FOR pointsJoueur
PRINT('"pointsJoueur" default =0 dans "tblJoueursAmeriqueSud".')
GO

ALTER TABLE tblJoueursAmeriqueSud
ADD CONSTRAINT ck_JoueursPointsAmeriqueSud
CHECK ( pointsJoueur >=0);
PRINT('Check "pointsJoueur" plus grand que 0 dans "tblJoueursAmeriqueSud".')
GO

--Europe check/default
ALTER TABLE tblJoueursEurope
ADD CONSTRAINT Def_JoueursPointsEurope
DEFAULT 0 FOR pointsJoueur
PRINT('"pointsJoueur" default =0 dans "tblJoueursEurope".')
GO

ALTER TABLE tblJoueursEurope
ADD CONSTRAINT ck_JoueursPointsEurope
CHECK ( pointsJoueur >=0);
PRINT('Check "pointsJoueur" plus grand que 0 dans "tblJoueursEurope".')
GO

--Oceanie check/default
ALTER TABLE tblJoueursOceanie
ADD CONSTRAINT Def_JoueursPointsOceanie
DEFAULT 0 FOR pointsJoueur
PRINT('"pointsJoueur" default =0 dans "tblJoueursOceanie".')
GO

ALTER TABLE tblJoueursOceanie
ADD CONSTRAINT ck_JoueursPointsOceanie
CHECK ( pointsJoueur >=0);
PRINT('Check "pointsJoueur" plus grand que 0 dans "tblJoueursOceanie".')
GO

--Asie check/default
ALTER TABLE tblJoueursAsie
ADD CONSTRAINT Def_JoueursPointsAsie
DEFAULT 0 FOR pointsJoueur
PRINT('"pointsJoueur" default =0 dans "tblJoueursAsie".')
GO

ALTER TABLE tblJoueursAsie
ADD CONSTRAINT ck_JoueursPointsAsie
CHECK ( pointsJoueur >=0);
PRINT('Check "pointsJoueur" plus grand que 0 dans "tblJoueursAsie".')
GO

--ALTER TABLE tblNationalite
--ADD CONSTRAINT ck_Nationalite_code
--CHECK wtf Count nb of characters in codeNationalite
--PRINT('check "codeNationalite" =char(3) dans "tblNationalite".')
--GO

--tblZoneGeo
ALTER TABLE tblZoneGeographique
ADD CONSTRAINT ck_ZoneGeographique
CHECK ( codeZone>=0 AND codeZone<=6);
PRINT('Check "codeZone" plus grand ou égal a 0 et plus petit ou egal a 6 dans "tblZoneGeographique".')
GO

--TblTournoi
ALTER TABLE tblTournoi
ADD CONSTRAINT DEF_Tournoi
DEFAULT 50000 FOR bourseTournoi
PRINT('Default "bourseTournoi" = 50 000 dans "tblTournoi".')
GO

ALTER TABLE tblTournoi
ADD CONSTRAINT ck_Tournoi
CHECK ( bourseTournoi>=50000 );
PRINT('Check "codeZone" plus grand ou égal a 50 000 dans "tblTournoi".')
GO

--tblResultat
ALTER TABLE tblTypeResultats
ADD CONSTRAINT ck_Point_TypeResultats
CHECK ( nbPoints>0 );
PRINT('Check "nbPoints" plus grand a 0  dans "tblTypeResultats".')
GO

ALTER TABLE tblTypeResultats
ADD CONSTRAINT ck_Txbourse_TypeResultats
CHECK ( txBourse>0 AND txBourse<=1);
PRINT('Check "txBourse" plus grand que 0 et plus petit ou egal a 1 dans "tblTournoi".')
GO