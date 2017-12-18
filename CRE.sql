USE MASTER
GO
USE [master];
DECLARE @kill VARCHAR(8000) = '';
SELECT @kill = @kill + 'kill ' + CONVERT(VARCHAR(5), session_id) + ';'
FROM sys.dm_exec_sessions
WHERE database_id = db_id('ProjetDB2017')
EXEC (@kill);
GO
IF EXISTS(SELECT *
          FROM sys.databases
          WHERE name = 'ProjetBD2017')
  DROP DATABASE ProjetBD2017;
GO
CREATE DATABASE ProjetBD2017 ON PRIMARY
  --CHANGE THE PATH FOR WINDOW THIS FOLDER IS ON DOCKER WITH PERM 777--
  (NAME = ProjetBD2017_dat,
  FILENAME = 'C:\BD\Tennis_ppal.mdf',
  SIZE = 10,
  MAXSIZE = UNLIMITED,
  FILEGROWTH = 10)
LOG ON
  (NAME = Tennis_log,
  FILENAME = 'C:\BD\Tennis_log.ldf',
  SIZE = 5,
  MAXSIZE = 25,
  FILEGROWTH = 5)
PRINT ('DATABASE CREATED : Tennis ')

GO
USE ProjetBD2017
GO


IF OBJECT_ID(N'dbo.tblJoueursAfrique', N'U') IS NOT NULL
  DROP TABLE dbo.tblJoueursAfrique;

CREATE TABLE tblJoueursAfrique
(
  noJoueur        INT         NOT NULL,
  nomJoueur       VARCHAR(30) NOT NULL,
  prenomJoueur    VARCHAR(30) NOT NULL,
  pointsJoueur    INT         NULL,
  codeNationalite CHAR(3)     NULL,
)
PRINT ('TABLE CREATED : tblJoueursAfrique ')

IF OBJECT_ID(N'dbo.tblJoueursAmeriqueNord', N'U') IS NOT NULL
  DROP TABLE dbo.tblJoueursAmeriqueNord;

CREATE TABLE tblJoueursAmeriqueNord
(
  noJoueur        INT         NOT NULL,
  nomJoueur       VARCHAR(30) NOT NULL,
  prenomJoueur    VARCHAR(30) NOT NULL,
  pointsJoueur    INT         NULL,
  codeNationalite CHAR(3)     NULL,
)
PRINT ('TABLE CREATED : tblJoueursAmeriqueNord ')

IF OBJECT_ID(N'dbo.tblJoueursAmeriqueSud', N'U') IS NOT NULL
  DROP TABLE dbo.tblJoueursAmeriqueSud;

CREATE TABLE tblJoueursAmeriqueSud
(
  noJoueur        INT         NOT NULL,
  nomJoueur       VARCHAR(30) NOT NULL,
  prenomJoueur    VARCHAR(30) NOT NULL,
  pointsJoueur    INT         NULL,
  codeNationalite CHAR(3)     NULL,
)
PRINT ('TABLE CREATED : tblJoueursAmeriqueSud ')

IF OBJECT_ID(N'dbo.tblJoueursAsie', N'U') IS NOT NULL
  DROP TABLE dbo.tblJoueursAsie;

CREATE TABLE tblJoueursAsie
(
  noJoueur        INT         NOT NULL,
  nomJoueur       VARCHAR(30) NOT NULL,
  prenomJoueur    VARCHAR(30) NOT NULL,
  pointsJoueur    INT         NULL,
  codeNationalite CHAR(3)     NULL,
)
PRINT ('TABLE CREATED : tblJoueursAsie ')

IF OBJECT_ID(N'dbo.tblJoueursEurope', N'U') IS NOT NULL
  DROP TABLE dbo.tblJoueursEurope;

CREATE TABLE tblJoueursEurope
(
  noJoueur        INT         NOT NULL,
  nomJoueur       VARCHAR(30) NOT NULL,
  prenomJoueur    VARCHAR(30) NOT NULL,
  pointsJoueur    INT         NULL,
  codeNationalite CHAR(3)     NULL,
)
PRINT ('TABLE CREATED : tblJoueursEurope ')

IF OBJECT_ID(N'dbo.tblJoueursOceanie', N'U') IS NOT NULL
  DROP TABLE dbo.tblJoueursOceanie;

CREATE TABLE tblJoueursOceanie
(
  noJoueur        INT         NOT NULL,
  nomJoueur       VARCHAR(30) NOT NULL,
  prenomJoueur    VARCHAR(30) NOT NULL,
  pointsJoueur    INT         NULL,
  codeNationalite CHAR(3)     NULL,
)
PRINT ('TABLE CREATED : tblJoueursOceanie ')

IF OBJECT_ID(N'dbo.tblNationalite', N'U') IS NOT NULL
  DROP TABLE dbo.tblNationalite;

CREATE TABLE tblNationalite
(
  codeNationalite CHAR(3)     NOT NULL,
  nomPays         VARCHAR(50) NOT NULL,
  codeZone        INT         NOT NULL,
)
PRINT ('TABLE CREATED : tblNationalite ')

IF OBJECT_ID(N'dbo.tblZoneGeographique', N'U') IS NOT NULL
  DROP TABLE dbo.tblZoneGeographique;

CREATE TABLE tblZoneGeographique
(
  codeZone INT         NOT NULL,
  nomZone  VARCHAR(40) NOT NULL,
)
PRINT ('TABLE CREATED : tblZoneGeographique ')

IF OBJECT_ID(N'dbo.tblTournoi', N'U') IS NOT NULL
  DROP TABLE dbo.tblTournoi;

CREATE TABLE tblTournoi
(
  noTournoi     INT IDENTITY (0, 1) NOT NULL,
  nomTournoi    VARCHAR(50)         NOT NULL,
  vileTournoi   VARCHAR(50)         NOT NULL,
  paysTournoi   VARCHAR(30)         NOT NULL,
  bourseTournoi MONEY               NOT NULL,
)
PRINT ('TABLE CREATED : tblTournoi ')

IF OBJECT_ID(N'dbo.tblResultats', N'U') IS NOT NULL
  DROP TABLE dbo.tblResultats;

CREATE TABLE tblResultats
(
  noJoueur     INT   NOT NULL,
  noTournoi    INT   NOT NULL,
  codeResultat INT   NOT NULL,
  gains        MONEY NULL,
  anneeTournoi INT   NOT NULL,
  nbPoints     INT   NULL,
)
PRINT ('TABLE CREATED : tblResultats ')

IF OBJECT_ID(N'dbo.tblTypeResultats', N'U') IS NOT NULL
  DROP TABLE dbo.tblTypeResultats;

CREATE TABLE tblTypeResultats
(
  codeResultat INT           NOT NULL,
  nomResultat  VARCHAR(30)   NOT NULL,
  nbPoints     INT           NOT NULL,
  txBourse     DECIMAL(5, 2) NOT NULL,
)
PRINT ('TABLE CREATED : tblTypeResultats ')

IF OBJECT_ID(N'dbo.tblCommanditaires', N'U') IS NOT NULL
  DROP TABLE dbo.tblCommanditaires;

CREATE TABLE tblCommanditaires
(
  noCommanditaire  INT         NOT NULL,
  nomCommanditaire VARCHAR(50) NOT NULL,
)
PRINT ('TABLE CREATED : tblCommanditaires ')

IF OBJECT_ID(N'dbo.tblTournoiCommandite', N'U') IS NOT NULL
  DROP TABLE dbo.tblTournoiCommandite;

CREATE TABLE tblTournoiCommandite
(
  noCommanditaire INT NOT NULL,
  noTournoi       INT NOT NULL,
)
PRINT ('TABLE CREATED : tblTournoiCommandite ')

PRINT ('CHEEKY BREEKY')

