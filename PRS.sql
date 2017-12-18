USE ProjetBD2017

------#1-----------
GO
IF EXISTS
(SELECT *
 FROM dbo.sysobjects
 WHERE id = object_id(N'dbo.psResultatsJoueurs')
       AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
  DROP PROCEDURE dbo.psResultatsJoueurs
GO
CREATE PROCEDURE psResultatsJoueurs(@noTournoi INT, @noJoueur INT, @anneeTournoi INT) AS
  BEGIN
    DECLARE @NbPoints INT, @Gains MONEY
    SELECT
      dbo.tblResultats.nbPoints,
      dbo.tblResultats.gains
    FROM dbo.tblResultats
    WHERE anneeTournoi = @anneeTournoi AND noTournoi = @noTournoi AND noJoueur = @noJoueur
    RETURN
  END

EXEC psResultatsJoueurs @noTournoi = 1, @noJoueur = 1, @anneeTournoi = 2008

-----------#2----------
GO
IF EXISTS
(SELECT *
 FROM dbo.sysobjects
 WHERE id = object_id(N'dbo.psZoneGeographique')
       AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
  DROP PROCEDURE dbo.psZoneGeographique
GO
CREATE PROCEDURE psZoneGeographique
    @unCodeNationalite CHAR(3),
    @unCodeZone        INT OUTPUT
AS
  BEGIN

    SELECT dbo.tblNationalite.codeZone
    FROM dbo.tblNationalite
    WHERE dbo.tblNationalite.codeNationalite = @unCodeNationalite

    RETURN
  END
DECLARE @output INT
EXEC psZoneGeographique @unCodeNationalite = 'CZE', @unCodeZone = @output OUTPUT

----------#3------------------
GO
IF EXISTS
(SELECT *
 FROM dbo.sysobjects
 WHERE id = object_id(N'dbo.psNomTableJoueur')
       AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
  DROP PROCEDURE dbo.psNomTableJoueur
GO

CREATE PROCEDURE psNomTableJoueur
    @CodeNationalite CHAR(3)
AS
  BEGIN
    DECLARE @output INT
    EXEC psZoneGeographique @unCodeNationalite = 'CZE', @unCodeZone = @output OUTPUT
    SELECT @output
    SELECT nomZone
    FROM tblZoneGeographique
    WHERE codeZone = 5
    RETURN
  END
DECLARE @output2 INT
EXEC psNomTableJoueur @unCodeNationalite = 'CZE'
--------#4-------------------
--------#5-------------------
GO
IF EXISTS
(SELECT *
 FROM dbo.sysobjects
 WHERE id = object_id(N'dbo.psCalculGains')
       AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
  DROP PROCEDURE dbo.psCalculGains
GO
CREATE PROCEDURE psCalculGains(@codeResultat INT, @noTournoi INT) AS
  BEGIN
SELECT DISTINCT(bourseTournoi*txBourse) AS 'Gain Monétaire'
FROM tblTournoi AS AA
JOIN tblResultats AS BB
ON aa.noTournoi=BB.noTournoi
JOIN tblTypeResultats AS cc
on bb.codeResultat=CC.codeResultat
WHERE bb.codeResultat=@codeResultat AND aa.noTournoi=@noTournoi
END
RETURN

EXEC psCalculGains @codeResultat=1,@noTournoi=2

------#6---------
GO
IF EXISTS
(SELECT *
 FROM dbo.sysobjects
 WHERE id = object_id(N'dbo.psCalculPoints')
       AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
  DROP PROCEDURE dbo.psCalculPoints
GO
CREATE PROCEDURE psCalculPoints(@codeResultat INT) AS
BEGIN
DECLARE @pointss INT
SELECT nbPoints from tblTypeResultats
WHERE codeResultat=@codeResultat
END
RETURN

EXEC psCalculPoints @codeResultat=2
  
---------#7--------------
GO
IF EXISTS
(SELECT *
 FROM dbo.sysobjects
 WHERE id = object_id(N'dbo.psAjoutResultat')
       AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
  DROP PROCEDURE dbo.psAjoutResultat
GO
CREATE PROCEDURE psAjoutResultat(@noJoueur INT,@noTournoi INT,@codeResultat INT,@anneeTournoi INT) AS


-- TAS DE MARDE A VICTOR
DROP PROCEDURE IF EXISTS psNomTableJoueur
GO
CREATE PROCEDURE psNomTableJoueur
    @codeNationalite CHAR(3),
    @nomTableJoueur  VARCHAR(30) OUTPUT
AS
  BEGIN
    DECLARE @zone INT
    EXEC psZoneGeographique 'FRA', @zone OUTPUT
    PRINT (@zone)
    IF EXISTS(SELECT *
              FROM tblNationalite
              WHERE dbo.tblNationalite.codeNationalite = @codeNationalite)
      BEGIN
        EXEC psZoneGeographique @codeNationalite, @zone OUTPUT
        SELECT @nomTableJoueur = CASE @zone
                                 WHEN 1
                                   THEN 'tblJoueursAfrique'
                                 WHEN 2
                                   THEN 'tblJoueursNA'
                                 WHEN 3
                                   THEN 'tblJoueursSA'
                                 WHEN 4
                                   THEN 'tblJoueursAsie'
                                 WHEN 5
                                   THEN 'tblJoueursEU'
                                 WHEN 6
                                   THEN 'tblJoueursOCE'
                                 END
      END
    ELSE BEGIN
      PRINT 'Code de nationalite incorrecte'
    END
  END
GO
PRINT ''
PRINT 'ProcÃ©dure 3'
DECLARE @tableRep VARCHAR(30)
EXECUTE psNomTableJoueur 'FRA', @tableRep OUTPUT
PRINT @tableRep

