DROP VIEW IF EXISTS dbo.VueListeJoueurs
GO
CREATE VIEW dbo.VueListeJoueurs
  AS
    SELECT *
    FROM dbo.tblJoueursAmeriqueNord
    UNION ALL
    SELECT *
    FROM dbo.tblJoueursAmeriqueSud
    UNION ALL
    SELECT *
    FROM dbo.tblJoueursAfrique
    UNION
    SELECT *
    FROM dbo.tblJoueursAsie
    UNION
    SELECT *
    FROM dbo.tblJoueursEurope
    UNION
    SELECT *
    FROM dbo.tblJoueursOceanie
GO
SELECT *
FROM dbo.VueListeJoueurs
GO
DROP VIEW IF EXISTS VueClassementJoueurs
GO
CREATE VIEW VueClassementJoueurs
  AS
    SELECT
      dbo.VueListeJoueurs.nomJoueur,
      dbo.VueListeJoueurs.prenomJoueur,
      dbo.tblResultats.gains,
      dbo.tblResultats.nbPoints
    FROM dbo.VueListeJoueurs
      LEFT JOIN dbo.tblResultats
        ON dbo.VueListeJoueurs.noJoueur = dbo.tblResultats.noJoueur
GO
SELECT *
FROM dbo.VueClassementJoueurs
GO
DROP VIEW IF EXISTS VueNbJoueursParContinent
GO
CREATE VIEW VueNbJoueursParContinent
  AS
    SELECT
      COUNT(dbo.VueListeJoueurs.noJoueur) AS COUNT,
      dbo.tblNationalite.nomPays
    FROM dbo.VueListeJoueurs
      JOIN dbo.tblNationalite
      JOIN dbo.tblZoneGeographique
        ON dbo.tblZoneGeographique.codeZone = dbo.tblNationalite.codeZone
        ON dbo.tblNationalite.codeNationalite = dbo.VueListeJoueurs.codeNationalite
    GROUP BY dbo.tblNationalite.nomPays
GO
SELECT *
FROM VueNbJoueursParContinent
GO
DROP VIEW IF EXISTS VueNbNationaliteParContinent
GO
CREATE VIEW dbo.VueNbNationaliteParContinent
  AS
    SELECT
      COUNT(dbo.tblNationalite.codeZone) AS COUNT,
      dbo.tblZoneGeographique.codeZone,
      dbo.tblZoneGeographique.nomZone
    FROM dbo.tblNationalite
      JOIN dbo.tblZoneGeographique
        ON dbo.tblNationalite.codeZone = dbo.tblZoneGeographique.codeZone
    GROUP BY dbo.tblZoneGeographique.nomZone, dbo.tblZoneGeographique.codeZone
GO
SELECT *
FROM dbo.VueNbNationaliteParContinent
GO
DROP VIEW IF EXISTS dbo.VueMoyenneBourseTournoi
GO
CREATE VIEW dbo.VueMoyenneBourseTournoi
  AS
    SELECT AVG(dbo.tblTournoi.bourseTournoi) AS Moyenne
    FROM tblTournoi
GO
SELECT *
FROM dbo.VueMoyenneBourseTournoi
GO
DROP VIEW IF EXISTS dbo.VueResultatsJoueurs
GO
CREATE VIEW dbo.VueResultatsJoueurs
  AS
    SELECT
      dbo.VueListeJoueurs.noJoueur,
      dbo.VueListeJoueurs.nomJoueur,
      dbo.VueListeJoueurs.prenomJoueur,
      dbo.tblTournoi.nomTournoi,
      dbo.tblTypeResultats.nomResultat,
      dbo.tblResultats.anneeTournoi,
      dbo.tblResultats.gains,
      dbo.tblResultats.nbPoints
    FROM dbo.VueListeJoueurs
      JOIN dbo.tblTypeResultats
      JOIN dbo.tblResultats
      JOIN dbo.tblTournoi
        ON dbo.tblTournoi.noTournoi = dbo.tblResultats.noTournoi
        ON dbo.tblTypeResultats.codeResultat = dbo.tblResultats.codeResultat
        ON dbo.tblResultats.noJoueur = VueListeJoueurs.noJoueur
GO
SELECT * FROM dbo.VueResultatsJoueurs
GO
