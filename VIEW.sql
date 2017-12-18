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
SELECT * FROM dbo.VueListeJoueurs
GO
DROP VIEW IF EXISTS VueClassementJoueurs
GO
CREATE VIEW VueClassementJoueurs
  AS
  SELECT dbo.VueListeJoueurs.nomJoueur,
  dbo.VueListeJoueurs.prenomJoueur,
  dbo.tblResultats.gains,
  dbo.tblResultats.nbPoints
  FROM dbo.VueListeJoueurs
  LEFT JOIN dbo.tblResultats
  ON dbo.VueListeJoueurs.noJoueur = dbo.tblResultats.noJoueur
GO
SELECT * FROM dbo.VueClassementJoueurs
GO
DROP VIEW IF EXISTS  VueNbJoueursParContinent
AS
SELECT