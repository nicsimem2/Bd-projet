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
CREATE PROCEDURE psResultatsJoueurs(@noTournoi int,@noJoueur int,@anneeTournoi int) AS
BEGIN
DECLARE @NbPoints int;
DECLARE @Gains money;
SELECT @NbPoints= nbPoints,@Gains=gains
FROM dbo.tblResultats
WHERE  @anneeTournoi=anneeTournoi AND @noTournoi = noTournoi AND @noJoueur = noJoueur
RETURN SELECT @Gains,@NbPoints;
PRINT(@Gains+' '+@NbPoints)
END

-----------#2----------
GO
IF EXISTS
(SELECT *
 FROM dbo.sysobjects
 WHERE id = object_id(N'dbo.psZoneGeographique')
       AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
  DROP PROCEDURE dbo.psZoneGeographique
GO

CREATE PROCEDURE psZoneGeographique(@unCodeNationalite char(3)) AS
BEGIN
DECLARE @CodeZone int
SELECT codeZone = @CodeZone
FROM tblNationalite
WHERE  codeNationalite = @unCodeNationalite
RETURN @CodeZone
END

EXEC psZoneGeographique @unCodeNationalite='CZE'
