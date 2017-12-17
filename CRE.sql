USE MASTER
GO

USE [master];
DECLARE @kill varchar(8000) = '';  
SELECT @kill = @kill + 'kill ' + CONVERT(varchar(5), session_id) + ';'  
FROM sys.dm_exec_sessions
WHERE database_id  = db_id('TennisTreNi')

EXEC(@kill);

IF EXISTS(SELECT*FROM sys.databases WHERE name='TennisTreNi')
DROP DATABASE TennisTreNi;
GO


CREATE DATABASE TennisTreNi ON PRIMARY
(NAME ='TennisTreNi_Data',
FILENAME='C:\BD\TennisTreNi.mdf',
SIZE =10MB ,MAXSIZE =UNLIMITED,FILEGROWTH =10%)
LOG ON
(NAME ='TennisTreNi_Log',
FILENAME='C:\BD\TennisTreNi_Log.ldf',
SIZE =5MB ,MAXSIZE =25MB ,FILEGROWTH =5% )
PRINT('DATABASE CREATED : TennisTreNi ')
GO
USE TennisTreNi
GO


IF OBJECT_ID(N'dbo.tblJoueursAfrique', N'U') IS NOT NULL   
DROP TABLE dbo.tblJoueursAfrique;

CREATE TABLE tblJoueursAfrique
(
noJoueur			int				    NOT NULL,  
nomJoueur			varchar(30)			NOT NULL,		
prenomJoueur		varchar(30)			NOT NULL,		
pointsJoueur		int				    NULL,
codeNationalite     char(3)				NULL,
)
PRINT('TABLE CREATED : tblJoueursAfrique ')

IF OBJECT_ID(N'dbo.tblJoueursAmeriqueNord', N'U') IS NOT NULL   
DROP TABLE dbo.tblJoueursAmeriqueNord;

CREATE TABLE tblJoueursAmeriqueNord
(
noJoueur			int				    NOT NULL,  
nomJoueur			varchar(30)			NOT NULL,		
prenomJoueur		varchar(30)			NOT NULL,		
pointsJoueur		int				    NULL, 
codeNationalite     char(3)				NULL,
)
PRINT('TABLE CREATED : tblJoueursAmeriqueNord ')

IF OBJECT_ID(N'dbo.tblJoueursAmeriqueSud', N'U') IS NOT NULL   
DROP TABLE dbo.tblJoueursAmeriqueSud;

CREATE TABLE tblJoueursAmeriqueSud
(
noJoueur			int				    NOT NULL,  
nomJoueur			varchar(30)			NOT NULL,		
prenomJoueur		varchar(30)			NOT NULL,		
pointsJoueur		int				    NULL, 
codeNationalite     char(3)				NULL,
)
PRINT('TABLE CREATED : tblJoueursAmeriqueSud ')

IF OBJECT_ID(N'dbo.tblJoueursAsie', N'U') IS NOT NULL   
DROP TABLE dbo.tblJoueursAsie;

CREATE TABLE tblJoueursAsie
(
noJoueur			int				    NOT NULL,  
nomJoueur			varchar(30)			NOT NULL,		
prenomJoueur		varchar(30)			NOT NULL,		
pointsJoueur		int				    NULL, 
codeNationalite     char(3)				NULL,
)
PRINT('TABLE CREATED : tblJoueursAsie ')

IF OBJECT_ID(N'dbo.tblJoueursEurope', N'U') IS NOT NULL   
DROP TABLE dbo.tblJoueursEurope;

CREATE TABLE tblJoueursEurope
(
noJoueur			int				    NOT NULL,  
nomJoueur			varchar(30)			NOT NULL,		
prenomJoueur		varchar(30)			NOT NULL,		
pointsJoueur		int				    NULL, 
codeNationalite     char(3)				NULL,
)
PRINT('TABLE CREATED : tblJoueursEurope ')

IF OBJECT_ID(N'dbo.tblJoueursOceanie', N'U') IS NOT NULL   
DROP TABLE dbo.tblJoueursOceanie;

CREATE TABLE tblJoueursOceanie
(
noJoueur			int				    NOT NULL,  
nomJoueur			varchar(30)			NOT NULL,		
prenomJoueur		varchar(30)			NOT NULL,		
pointsJoueur		int				    NULL, 
codeNationalite     char(3)				NULL,
)
PRINT('TABLE CREATED : tblJoueursOceanie ')

IF OBJECT_ID(N'dbo.tblNationalite', N'U') IS NOT NULL   
DROP TABLE dbo.tblNationalite;

CREATE TABLE tblNationalite
(
codeNationalite     char(3)				NOT NULL, 
nomPays				varchar(50)			NOT NULL,
codeZone			int					NOT NULL,
)
PRINT('TABLE CREATED : tblNationalite ')

IF OBJECT_ID(N'dbo.tblZoneGeographique', N'U') IS NOT NULL   
DROP TABLE dbo.tblZoneGeographique;

CREATE TABLE tblZoneGeographique
(
codeZone			int					NOT NULL, 
nomZone				varchar(40)			NOT NULL,
)
PRINT('TABLE CREATED : tblZoneGeographique ')

IF OBJECT_ID(N'dbo.tblTournoi', N'U') IS NOT NULL   
DROP TABLE dbo.tblTournoi;

CREATE TABLE tblTournoi
(
noTournoi			int IDENTITY(1,1)	NOT NULL,
nomTournoi			varchar(50)			NOT NULL,
vileTournoi			varchar(50)			NOT NULL,
paysTournoi			varchar(30)			NOT NULL,
bourseTournoi		money				NOT NULL,  
)
PRINT('TABLE CREATED : tblTournoi ')

IF OBJECT_ID(N'dbo.tblResultats', N'U') IS NOT NULL   
DROP TABLE dbo.tblResultats;

CREATE TABLE tblResultats
(
noJoueur			int					NOT NULL,    
noTournoi			int					NOT NULL,
codeResultat		int					NOT NULL,
gains				money				NULL,
anneeTournoi		int					NOT NULL,
nbPoints			int					NULL,
)
PRINT('TABLE CREATED : tblResultats ')

IF OBJECT_ID(N'dbo.tblTypeResultats', N'U') IS NOT NULL   
DROP TABLE dbo.tblTypeResultats;

CREATE TABLE tblTypeResultats
(
codeResultat	    int					NOT NULL,
nomResultat			varchar(30)			NOT NULL,		
nbPoints			int					NOT NULL, 
txBourse			decimal(5,2)		NOT NULL, 
)
PRINT('TABLE CREATED : tblTypeResultats ')

IF OBJECT_ID(N'dbo.tblCommanditaires', N'U') IS NOT NULL   
DROP TABLE dbo.tblCommanditaires;

CREATE TABLE tblCommanditaires
(
noCommanditaire		 int		        NOT NULL,
nomCommanditaire	varchar(50)		    NOT NULL,
)
PRINT('TABLE CREATED : tblCommanditaires ')

IF OBJECT_ID(N'dbo.tblTournoiCommandite', N'U') IS NOT NULL   
DROP TABLE dbo.tblTournoiCommandite;

CREATE TABLE tblTournoiCommandite
(
noCommanditaire		 int		        NOT NULL,
noTournoi			 int		        NOT NULL,
)
PRINT('TABLE CREATED : tblTournoiCommandite ')

PRINT('CHEEKY BREEKY')

