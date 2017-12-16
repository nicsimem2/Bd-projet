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


--WTF I NEED MORE VODKA
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






--CHECKS
--ALTER TABLE tblCours
--ADD CONSTRAINT ck_cours_Duree
--CHECK ( Duree >=0 AND Duree <255);
--PRINT('Check duree tblCours')
--GO
