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
    DECLARE
    @NbPoints INT,
    @Gains MONEY
    RETURN (
      SELECT
        @NbPoints = dbo.tblResultats.nbPoints,
        @Gains = dbo.tblResultats.gains
      FROM dbo.tblResultats
      WHERE anneeTournoi = @anneeTournoi
      AND noTournoi = @noTournoi
      AND noJoueur = @noJoueur)

  END
EXEC psResultatsJoueurs @noTournoi = 1, @noJoueur = 1, @anneeTournoi = 2008


SELECT
  dbo.tblResultats.nbPoints,
  dbo.tblResultats.gains
FROM dbo.tblResultats
WHERE anneeTournoi AND @noTournoi = noTournoi AND @noJoueur = noJoueur

-----------#2----------
GO
IF EXISTS
(SELECT *
 FROM dbo.sysobjects
 WHERE id = object_id(N'dbo.psZoneGeographique')
       AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
  DROP PROCEDURE dbo.psZoneGeographique
GO
CREATE PROCEDURE psZoneGeographique(@unCodeNationalite CHAR(3)) AS
  BEGIN
    DECLARE @CodeZone INT
    RETURN (SELECT dbo.tblNationalite.codeZone
            FROM dbo.tblNationalite
            WHERE dbo.tblNationalite.codeNationalite = @unCodeNationalite)
  END

EXEC psZoneGeographique @unCodeNationalite = 'CZE'
