USE ProjetBD2017
GO
DROP TRIGGER IF EXISTS dbo.AjoutTournoiCommanditaire
GO
CREATE TRIGGER dbo.AjoutTournoiCommanditaire
  ON tblTournoi
  AFTER INSERT
AS
  BEGIN
    SET NOCOUNT ON;
      BEGIN
        INSERT INTO dbo.tblTournoiCommandite
          VALUES (1,(SELECT inserted.noTournoi FROM inserted))
      END
  END
GO
INSERT INTO dbo.tblTournoi
VALUES ('pickle contest', 'Jonquiere', 'Canada', 100000000)
GO
SELECT * FROM dbo.tblTournoi
GO
DROP TRIGGER IF EXISTS dbo.AjoutCommanditaireTournoi
GO
CREATE TRIGGER dbo.AjoutCommanditaireTournoi
  ON dbo.tblCommanditaires
  AFTER INSERT
  AS
  BEGIN
    SET NOCOUNT ON;
    BEGIN
      INSERT INTO dbo.tblTournoiCommandite
        VALUES ((SELECT inserted.noCommanditaire FROM inserted), 1)
    END
  END
GO
INSERT INTO dbo.tblCommanditaires
    VALUES (7, 'SolutionsTLM')
GO
SELECT * FROM tblCommanditaires
GO
DROP TRIGGER IF EXISTS AjoutVueListeJoueurs
GO
CREATE TRIGGER AjoutVueListeJoueurs
  ON dbo.VueListeJoueurs
  INSTEAD OF INSERT
  AS
  BEGIN
    SET NOCOUNT ON;
    BEGIN
      DECLARE @region INT

      IF(@region = 1)
        INSERT INTO dbo.tblJoueursAfrique
          VALUES (SELECT * FROM inserted)
      IF(@region = 2)
        INSERT INTO dbo.tblJoueursAmeriqueNord
          VALUES (SELECT * FROM inserted)
      IF(@region = 3)
        INSERT INTO dbo.tblJoueursAmeriqueSud
          VALUES (SELECT * FROM inserted)
      IF(@region = 4)
        INSERT INTO dbo.tblJoueursAsie
          VALUES (SELECT * FROM inserted)
      IF(@region = 5)
        INSERT INTO dbo.tblJoueursEurope
          VALUES (SELECT * FROM inserted)
      IF(@region = 6)
        INSERT INTO dbo.tblJoueursOceanie
          VALUES (SELECT * FROM inserted)
      ROLLBACK TRANSACTION;
      RETURN
    END
  END
GO
INSERT INTO dbo.VueListeJoueurs
    VALUES (100, 'MisterMoist', 'Stun', 1000, 'FRA')
GO
SELECT * FROM dbo.tblJoueursEurope

