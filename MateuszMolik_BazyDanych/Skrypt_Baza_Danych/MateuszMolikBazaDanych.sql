--------------------------------------------------------
--  File created - sobota-maja-25-2019   
--------------------------------------------------------
DROP SEQUENCE "MATEUSZ"."SQ_Klubs";
DROP SEQUENCE "MATEUSZ"."SQ_Meczs";
DROP SEQUENCE "MATEUSZ"."SQ_Osiagniecias";
DROP SEQUENCE "MATEUSZ"."SQ_Pilkarzs";
DROP SEQUENCE "MATEUSZ"."SQ_Przerwas";
DROP SEQUENCE "MATEUSZ"."SQ_Wlasciciels";
DROP TABLE "MATEUSZ"."Klubs" cascade constraints;
DROP TABLE "MATEUSZ"."KlubWlasciciels" cascade constraints;
DROP TABLE "MATEUSZ"."MeczPilkarzs" cascade constraints;
DROP TABLE "MATEUSZ"."Meczs" cascade constraints;
DROP TABLE "MATEUSZ"."__MigrationHistory" cascade constraints;
DROP TABLE "MATEUSZ"."Osiagniecias" cascade constraints;
DROP TABLE "MATEUSZ"."Pilkarzs" cascade constraints;
DROP TABLE "MATEUSZ"."Przerwas" cascade constraints;
DROP TABLE "MATEUSZ"."Wlasciciels" cascade constraints;
DROP PACKAGE "MATEUSZ"."KLUBY";
DROP PACKAGE "MATEUSZ"."PILKARZE";
DROP PACKAGE "MATEUSZ"."WLASCICIEL";
DROP PACKAGE BODY "MATEUSZ"."KLUBY";
DROP PACKAGE BODY "MATEUSZ"."PILKARZE";
DROP PACKAGE BODY "MATEUSZ"."WLASCICIEL";
--------------------------------------------------------
--  DDL for Sequence SQ_Klubs
--------------------------------------------------------

   CREATE SEQUENCE  "MATEUSZ"."SQ_Klubs"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 101 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SQ_Meczs
--------------------------------------------------------

   CREATE SEQUENCE  "MATEUSZ"."SQ_Meczs"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 201 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SQ_Osiagniecias
--------------------------------------------------------

   CREATE SEQUENCE  "MATEUSZ"."SQ_Osiagniecias"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 81 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SQ_Pilkarzs
--------------------------------------------------------

   CREATE SEQUENCE  "MATEUSZ"."SQ_Pilkarzs"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 81 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SQ_Przerwas
--------------------------------------------------------

   CREATE SEQUENCE  "MATEUSZ"."SQ_Przerwas"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 121 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SQ_Wlasciciels
--------------------------------------------------------

   CREATE SEQUENCE  "MATEUSZ"."SQ_Wlasciciels"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 121 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Table Klubs
--------------------------------------------------------

  CREATE TABLE "MATEUSZ"."Klubs" 
   (	"KlubId" NUMBER(10,0), 
	"Nazwa" NCLOB, 
	"Data_zalo?enia" DATE, 
	"Miasto" NCLOB, 
	"Ilo??_Fanów" NUMBER(10,0), 
	"Budzet" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
 LOB ("Nazwa") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES 
  STORAGE(INITIAL 106496 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) 
 LOB ("Miasto") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES 
  STORAGE(INITIAL 106496 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table KlubWlasciciels
--------------------------------------------------------

  CREATE TABLE "MATEUSZ"."KlubWlasciciels" 
   (	"KlubId" NUMBER(10,0), 
	"WlascicielId" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MeczPilkarzs
--------------------------------------------------------

  CREATE TABLE "MATEUSZ"."MeczPilkarzs" 
   (	"MeczId" NUMBER(10,0), 
	"PilkarzId" NUMBER(10,0), 
	"Bramki" NUMBER(10,0), 
	"Strzelil" NUMBER(1,0), 
	"CzerwonaKartka" NUMBER(1,0), 
	"ZoltaKartka" NUMBER(1,0), 
	"DoubleZoltaKartka" NUMBER(1,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table Meczs
--------------------------------------------------------

  CREATE TABLE "MATEUSZ"."Meczs" 
   (	"MeczId" NUMBER(10,0), 
	"Gospodarz_KlubId" NUMBER(10,0), 
	"Go??_KlubId" NUMBER(10,0), 
	"Go??_Bramki" NUMBER(10,0), 
	"Gospodarz_Bramki" NUMBER(10,0), 
	"Wygrany" NCLOB
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
 LOB ("Wygrany") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES 
  STORAGE(INITIAL 106496 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table __MigrationHistory
--------------------------------------------------------

  CREATE TABLE "MATEUSZ"."__MigrationHistory" 
   (	"MigrationId" NVARCHAR2(150), 
	"ContextKey" NVARCHAR2(300), 
	"Model" BLOB, 
	"ProductVersion" NVARCHAR2(32)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
 LOB ("Model") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES 
  STORAGE(INITIAL 106496 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table Osiagniecias
--------------------------------------------------------

  CREATE TABLE "MATEUSZ"."Osiagniecias" 
   (	"OsiagnieciaId" NUMBER(10,0), 
	"Nazwa" NCLOB, 
	"Bonus_Fani" NUMBER(10,0), 
	"Bonus_Pensja" NUMBER(10,0), 
	"PilkarzId" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
 LOB ("Nazwa") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES 
  STORAGE(INITIAL 106496 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table Pilkarzs
--------------------------------------------------------

  CREATE TABLE "MATEUSZ"."Pilkarzs" 
   (	"PilkarzId" NUMBER(10,0), 
	"Imie" NCLOB, 
	"Nazwisko" NCLOB, 
	"Pensja" NUMBER(10,0), 
	"Wzrost" NUMBER(10,0), 
	"Wiek" NUMBER(10,0), 
	"Popularnosc" NUMBER(10,0), 
	"KlubId" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
 LOB ("Imie") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES 
  STORAGE(INITIAL 106496 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) 
 LOB ("Nazwisko") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES 
  STORAGE(INITIAL 106496 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table Przerwas
--------------------------------------------------------

  CREATE TABLE "MATEUSZ"."Przerwas" 
   (	"PrzerwaId" NUMBER(10,0), 
	"Nazwa" NCLOB, 
	"Pocz?tek" DATE, 
	"Dni" NUMBER(10,0), 
	"Koniec" DATE, 
	"Bonus_Klub" NUMBER(10,0), 
	"Bonus_Zawodnik" NUMBER(10,0), 
	"PilkarzId" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
 LOB ("Nazwa") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES 
  STORAGE(INITIAL 106496 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table Wlasciciels
--------------------------------------------------------

  CREATE TABLE "MATEUSZ"."Wlasciciels" 
   (	"WlascicielId" NUMBER(10,0), 
	"Imie" NCLOB, 
	"Nazwisko" NCLOB, 
	"Pesel" NCLOB, 
	"Wiek" NUMBER(10,0), 
	"Gotowka" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
 LOB ("Imie") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES 
  STORAGE(INITIAL 106496 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) 
 LOB ("Nazwisko") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES 
  STORAGE(INITIAL 106496 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) 
 LOB ("Pesel") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES 
  STORAGE(INITIAL 106496 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
REM INSERTING into MATEUSZ."Klubs"
SET DEFINE OFF;
Insert into MATEUSZ."Klubs" ("KlubId","Data_zalo?enia","Ilo??_Fanów","Budzet") values ('82',to_date('19/05/09','RR/MM/DD'),'499','10000950');
Insert into MATEUSZ."Klubs" ("KlubId","Data_zalo?enia","Ilo??_Fanów","Budzet") values ('83',to_date('19/05/02','RR/MM/DD'),'413','1550');
REM INSERTING into MATEUSZ."KlubWlasciciels"
SET DEFINE OFF;
REM INSERTING into MATEUSZ."MeczPilkarzs"
SET DEFINE OFF;
Insert into MATEUSZ."MeczPilkarzs" ("MeczId","PilkarzId","Bramki","Strzelil","CzerwonaKartka","ZoltaKartka","DoubleZoltaKartka") values ('167','62','0','0','1','0','0');
Insert into MATEUSZ."MeczPilkarzs" ("MeczId","PilkarzId","Bramki","Strzelil","CzerwonaKartka","ZoltaKartka","DoubleZoltaKartka") values ('170','61','1','1','0','0','0');
Insert into MATEUSZ."MeczPilkarzs" ("MeczId","PilkarzId","Bramki","Strzelil","CzerwonaKartka","ZoltaKartka","DoubleZoltaKartka") values ('163','61','0','0','0','1','0');
Insert into MATEUSZ."MeczPilkarzs" ("MeczId","PilkarzId","Bramki","Strzelil","CzerwonaKartka","ZoltaKartka","DoubleZoltaKartka") values ('163','62','1','1','0','0','0');
Insert into MATEUSZ."MeczPilkarzs" ("MeczId","PilkarzId","Bramki","Strzelil","CzerwonaKartka","ZoltaKartka","DoubleZoltaKartka") values ('164','61','1','1','1','1','1');
Insert into MATEUSZ."MeczPilkarzs" ("MeczId","PilkarzId","Bramki","Strzelil","CzerwonaKartka","ZoltaKartka","DoubleZoltaKartka") values ('165','62','0','0','1','0','0');
Insert into MATEUSZ."MeczPilkarzs" ("MeczId","PilkarzId","Bramki","Strzelil","CzerwonaKartka","ZoltaKartka","DoubleZoltaKartka") values ('166','61','0','0','1','0','0');
Insert into MATEUSZ."MeczPilkarzs" ("MeczId","PilkarzId","Bramki","Strzelil","CzerwonaKartka","ZoltaKartka","DoubleZoltaKartka") values ('168','62','2','1','1','0','0');
Insert into MATEUSZ."MeczPilkarzs" ("MeczId","PilkarzId","Bramki","Strzelil","CzerwonaKartka","ZoltaKartka","DoubleZoltaKartka") values ('169','62','1','1','0','0','0');
Insert into MATEUSZ."MeczPilkarzs" ("MeczId","PilkarzId","Bramki","Strzelil","CzerwonaKartka","ZoltaKartka","DoubleZoltaKartka") values ('181','61','1','1','0','0','0');
Insert into MATEUSZ."MeczPilkarzs" ("MeczId","PilkarzId","Bramki","Strzelil","CzerwonaKartka","ZoltaKartka","DoubleZoltaKartka") values ('181','62','1','1','1','1','1');
REM INSERTING into MATEUSZ."Meczs"
SET DEFINE OFF;
Insert into MATEUSZ."Meczs" ("MeczId","Gospodarz_KlubId","Go??_KlubId","Go??_Bramki","Gospodarz_Bramki") values ('163','83','82','0','1');
Insert into MATEUSZ."Meczs" ("MeczId","Gospodarz_KlubId","Go??_KlubId","Go??_Bramki","Gospodarz_Bramki") values ('162','83','82','0','0');
Insert into MATEUSZ."Meczs" ("MeczId","Gospodarz_KlubId","Go??_KlubId","Go??_Bramki","Gospodarz_Bramki") values ('164','82','83','0','1');
Insert into MATEUSZ."Meczs" ("MeczId","Gospodarz_KlubId","Go??_KlubId","Go??_Bramki","Gospodarz_Bramki") values ('165','83','82','0','0');
Insert into MATEUSZ."Meczs" ("MeczId","Gospodarz_KlubId","Go??_KlubId","Go??_Bramki","Gospodarz_Bramki") values ('166','83','82','0','0');
Insert into MATEUSZ."Meczs" ("MeczId","Gospodarz_KlubId","Go??_KlubId","Go??_Bramki","Gospodarz_Bramki") values ('167','82','83','0','0');
Insert into MATEUSZ."Meczs" ("MeczId","Gospodarz_KlubId","Go??_KlubId","Go??_Bramki","Gospodarz_Bramki") values ('181','82','83','1','1');
Insert into MATEUSZ."Meczs" ("MeczId","Gospodarz_KlubId","Go??_KlubId","Go??_Bramki","Gospodarz_Bramki") values ('168','82','83','2','0');
Insert into MATEUSZ."Meczs" ("MeczId","Gospodarz_KlubId","Go??_KlubId","Go??_Bramki","Gospodarz_Bramki") values ('169','82','83','1','0');
Insert into MATEUSZ."Meczs" ("MeczId","Gospodarz_KlubId","Go??_KlubId","Go??_Bramki","Gospodarz_Bramki") values ('170','82','83','0','1');
REM INSERTING into MATEUSZ."__MigrationHistory"
SET DEFINE OFF;
Insert into MATEUSZ."__MigrationHistory" ("MigrationId","ContextKey","ProductVersion") values ('201904012152581_InitialCreate','BazyDanych.ResourcesAccess.Entities.Model1','6.2.0-61023');
REM INSERTING into MATEUSZ."Osiagniecias"
SET DEFINE OFF;
REM INSERTING into MATEUSZ."Pilkarzs"
SET DEFINE OFF;
Insert into MATEUSZ."Pilkarzs" ("PilkarzId","Pensja","Wzrost","Wiek","Popularnosc","KlubId") values ('61','2165','172','50','10000','82');
Insert into MATEUSZ."Pilkarzs" ("PilkarzId","Pensja","Wzrost","Wiek","Popularnosc","KlubId") values ('62','2610','187','43','1000000','83');
REM INSERTING into MATEUSZ."Przerwas"
SET DEFINE OFF;
Insert into MATEUSZ."Przerwas" ("PrzerwaId","Pocz?tek","Dni","Koniec","Bonus_Klub","Bonus_Zawodnik","PilkarzId") values ('101',to_date('19/05/15','RR/MM/DD'),'10',to_date('19/05/25','RR/MM/DD'),'50','5','61');
REM INSERTING into MATEUSZ."Wlasciciels"
SET DEFINE OFF;
Insert into MATEUSZ."Wlasciciels" ("WlascicielId","Wiek","Gotowka") values ('101','19','1000555');
Insert into MATEUSZ."Wlasciciels" ("WlascicielId","Wiek","Gotowka") values ('81','21','10000000');
--------------------------------------------------------
--  DDL for Index PK_KlubWlasciciels
--------------------------------------------------------

  CREATE UNIQUE INDEX "MATEUSZ"."PK_KlubWlasciciels" ON "MATEUSZ"."KlubWlasciciels" ("KlubId", "WlascicielId") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_Klubs
--------------------------------------------------------

  CREATE UNIQUE INDEX "MATEUSZ"."PK_Klubs" ON "MATEUSZ"."Klubs" ("KlubId") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_MeczPilkarzs
--------------------------------------------------------

  CREATE UNIQUE INDEX "MATEUSZ"."PK_MeczPilkarzs" ON "MATEUSZ"."MeczPilkarzs" ("MeczId", "PilkarzId") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_Meczs
--------------------------------------------------------

  CREATE UNIQUE INDEX "MATEUSZ"."PK_Meczs" ON "MATEUSZ"."Meczs" ("MeczId") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_Osiagniecias
--------------------------------------------------------

  CREATE UNIQUE INDEX "MATEUSZ"."PK_Osiagniecias" ON "MATEUSZ"."Osiagniecias" ("OsiagnieciaId") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_Pilkarzs
--------------------------------------------------------

  CREATE UNIQUE INDEX "MATEUSZ"."PK_Pilkarzs" ON "MATEUSZ"."Pilkarzs" ("PilkarzId") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_Przerwas
--------------------------------------------------------

  CREATE UNIQUE INDEX "MATEUSZ"."PK_Przerwas" ON "MATEUSZ"."Przerwas" ("PrzerwaId") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_Wlasciciels
--------------------------------------------------------

  CREATE UNIQUE INDEX "MATEUSZ"."PK_Wlasciciels" ON "MATEUSZ"."Wlasciciels" ("WlascicielId") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK___MigrationHistory
--------------------------------------------------------

  CREATE UNIQUE INDEX "MATEUSZ"."PK___MigrationHistory" ON "MATEUSZ"."__MigrationHistory" ("MigrationId", "ContextKey") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IX_Przerwas_PilkarzId
--------------------------------------------------------

  CREATE INDEX "MATEUSZ"."IX_Przerwas_PilkarzId" ON "MATEUSZ"."Przerwas" ("PilkarzId") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IX_Pilkarzs_KlubId
--------------------------------------------------------

  CREATE INDEX "MATEUSZ"."IX_Pilkarzs_KlubId" ON "MATEUSZ"."Pilkarzs" ("KlubId") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IX_KlubWlasciciels_KlubId
--------------------------------------------------------

  CREATE INDEX "MATEUSZ"."IX_KlubWlasciciels_KlubId" ON "MATEUSZ"."KlubWlasciciels" ("KlubId") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IX_Meczs_Go??_KlubId
--------------------------------------------------------

  CREATE INDEX "MATEUSZ"."IX_Meczs_Go??_KlubId" ON "MATEUSZ"."Meczs" ("Go??_KlubId") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IX_KlubWlasciciels_W_859305396
--------------------------------------------------------

  CREATE INDEX "MATEUSZ"."IX_KlubWlasciciels_W_859305396" ON "MATEUSZ"."KlubWlasciciels" ("WlascicielId") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IX_Osiagniecias_PilkarzId
--------------------------------------------------------

  CREATE INDEX "MATEUSZ"."IX_Osiagniecias_PilkarzId" ON "MATEUSZ"."Osiagniecias" ("PilkarzId") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IX_MeczPilkarzs_PilkarzId
--------------------------------------------------------

  CREATE INDEX "MATEUSZ"."IX_MeczPilkarzs_PilkarzId" ON "MATEUSZ"."MeczPilkarzs" ("PilkarzId") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IX_MeczPilkarzs_MeczId
--------------------------------------------------------

  CREATE INDEX "MATEUSZ"."IX_MeczPilkarzs_MeczId" ON "MATEUSZ"."MeczPilkarzs" ("MeczId") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IX_Meczs_Gospodarz_KlubId
--------------------------------------------------------

  CREATE INDEX "MATEUSZ"."IX_Meczs_Gospodarz_KlubId" ON "MATEUSZ"."Meczs" ("Gospodarz_KlubId") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Trigger TR_DODAJ__OSIAGNIECIE
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "MATEUSZ"."TR_DODAJ__OSIAGNIECIE" 
BEFORE INSERT ON "Osiagniecias" 
FOR EACH ROW DECLARE
dodatek int;
BEGIN

  UPDATE "Pilkarzs" 
  SET "Pilkarzs"."Pensja" = "Pilkarzs"."Pensja" + :new."Bonus_Pensja"
  WHERE "Pilkarzs"."PilkarzId" = :new."PilkarzId";

  UPDATE "Pilkarzs" 
  SET "Pilkarzs"."Popularnosc" = "Pilkarzs"."Popularnosc" + :new."Bonus_Fani"
  WHERE "Pilkarzs"."PilkarzId" = :new."PilkarzId";

END;

/
ALTER TRIGGER "MATEUSZ"."TR_DODAJ__OSIAGNIECIE" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TR_DODANIE_WLASCICIELA_DO_KLUBU
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "MATEUSZ"."TR_DODANIE_WLASCICIELA_DO_KLUBU" 
BEFORE INSERT ON "KlubWlasciciels" 

FOR EACH ROW DECLARE
dodatek int;
BEGIN

  select "Gotowka" into dodatek from "Wlasciciels" where "WlascicielId"= :new."WlascicielId";


  UPDATE "Klubs" 
  SET "Klubs"."Budzet" = "Klubs"."Budzet"  + dodatek
  WHERE "Klubs"."KlubId" = :new."KlubId"; 

END;

/
ALTER TRIGGER "MATEUSZ"."TR_DODANIE_WLASCICIELA_DO_KLUBU" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TR_DODANIE_WLASCICIELA_DO_KLUBU_USUN
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "MATEUSZ"."TR_DODANIE_WLASCICIELA_DO_KLUBU_USUN" 
BEFORE DELETE ON "KlubWlasciciels" 
FOR EACH ROW DECLARE
dodatek int;
BEGIN

  select "Gotowka" into dodatek from "Wlasciciels" where "WlascicielId"= :old."WlascicielId";
  UPDATE "Klubs" 
  SET "Klubs"."Budzet" = "Klubs"."Budzet"  - dodatek
  WHERE "Klubs"."KlubId" = :old."KlubId"; 


  EXCEPTION
     WHEN OTHERS THEN
     Null;

END;

/
ALTER TRIGGER "MATEUSZ"."TR_DODANIE_WLASCICIELA_DO_KLUBU_USUN" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TR_Klubs
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "MATEUSZ"."TR_Klubs" 
before insert on "MATEUSZ"."Klubs"
for each row
begin
  select "MATEUSZ"."SQ_Klubs".nextval into :new."KlubId" from dual;
end;

/
ALTER TRIGGER "MATEUSZ"."TR_Klubs" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TR_Meczs
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "MATEUSZ"."TR_Meczs" 
before insert on "MATEUSZ"."Meczs"
for each row
begin
  select "MATEUSZ"."SQ_Meczs".nextval into :new."MeczId" from dual;
end;

/
ALTER TRIGGER "MATEUSZ"."TR_Meczs" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TR_Osiagniecias
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "MATEUSZ"."TR_Osiagniecias" 
before insert on "MATEUSZ"."Osiagniecias"
for each row
begin
  select "MATEUSZ"."SQ_Osiagniecias".nextval into :new."OsiagnieciaId" from dual;
end;

/
ALTER TRIGGER "MATEUSZ"."TR_Osiagniecias" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TR_PILKARZ_BRAMKI_KARTKI_DODAJ
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "MATEUSZ"."TR_PILKARZ_BRAMKI_KARTKI_DODAJ" 
BEFORE UPDATE ON "MeczPilkarzs"
FOR EACH ROW 
DECLARE
TYPE P_Pilkarz IS RECORD(
"PilkarzId" NUMBER(10,0)  , 
	"Imie" NCLOB, 
	"Nazwisko" NCLOB, 
	"Pensja" NUMBER(10,0)  , 
	"Wzrost" NUMBER(10,0) , 
	"Wiek" NUMBER(10,0) , 
	"Popularnosc" NUMBER(10,0) , 
	"KlubId" NUMBER(10,0) 
);
pilkarz P_Pilkarz;
pensjabonus_bramki int;
karapensja_kartki int;
BEGIN
  select * into pilkarz from "Pilkarzs" where "Pilkarzs"."PilkarzId"= :new."PilkarzId";

  pensjabonus_bramki := :new."Bramki" * 5;
  karapensja_kartki  := :old."CzerwonaKartka" *50  + :old."DoubleZoltaKartka" *25  + :old."ZoltaKartka" *10 ;

  UPDATE "Pilkarzs" 
  SET "Pilkarzs"."Pensja" = "Pilkarzs"."Pensja" + pensjabonus_bramki - karapensja_kartki
  WHERE "Pilkarzs"."PilkarzId" = :new."PilkarzId";

END;
/
ALTER TRIGGER "MATEUSZ"."TR_PILKARZ_BRAMKI_KARTKI_DODAJ" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TR_PILKARZ_BRAMKI_KARTKI_USUN
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "MATEUSZ"."TR_PILKARZ_BRAMKI_KARTKI_USUN" 
BEFORE DELETE ON "MeczPilkarzs" 
FOR EACH ROW 
DECLARE
TYPE P_Pilkarz IS RECORD(
"PilkarzId" NUMBER(10,0)  , 
	"Imie" NCLOB, 
	"Nazwisko" NCLOB, 
	"Pensja" NUMBER(10,0)  , 
	"Wzrost" NUMBER(10,0) , 
	"Wiek" NUMBER(10,0) , 
	"Popularnosc" NUMBER(10,0) , 
	"KlubId" NUMBER(10,0) 
);
pilkarz P_Pilkarz;
pensjabonus_bramki int;
karapensja_kartki int;
BEGIN
  select * into pilkarz from "Pilkarzs" where "Pilkarzs"."PilkarzId"= :old."PilkarzId";

  pensjabonus_bramki := :old."Bramki" * 5;
  karapensja_kartki  := :old."CzerwonaKartka" *50  + :old."DoubleZoltaKartka" *25  + :old."ZoltaKartka" *10 ;

  UPDATE "Pilkarzs" 
  SET "Pilkarzs"."Pensja" = "Pilkarzs"."Pensja" - pensjabonus_bramki + karapensja_kartki
  WHERE "Pilkarzs"."PilkarzId" = :old."PilkarzId";

END;
/
ALTER TRIGGER "MATEUSZ"."TR_PILKARZ_BRAMKI_KARTKI_USUN" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TR_Pilkarzs
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "MATEUSZ"."TR_Pilkarzs" 
before insert on "MATEUSZ"."Pilkarzs"
for each row
begin
  select "MATEUSZ"."SQ_Pilkarzs".nextval into :new."PilkarzId" from dual;
end;

/
ALTER TRIGGER "MATEUSZ"."TR_Pilkarzs" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TR_Przerwas
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "MATEUSZ"."TR_Przerwas" 
before insert on "MATEUSZ"."Przerwas"
for each row
begin
  select "MATEUSZ"."SQ_Przerwas".nextval into :new."PrzerwaId" from dual;
end;

/
ALTER TRIGGER "MATEUSZ"."TR_Przerwas" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TR_USTAWKARTKI
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "MATEUSZ"."TR_USTAWKARTKI" 
BEFORE INSERT ON "MeczPilkarzs" 
for each row BEGIN
  IF :new."DoubleZoltaKartka"=1 THEN
   :new."ZoltaKartka":=1;
   :new."CzerwonaKartka":=1;
  END IF;
END;

/
ALTER TRIGGER "MATEUSZ"."TR_USTAWKARTKI" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TR_USTAWPRZERWEPILKARZ
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "MATEUSZ"."TR_USTAWPRZERWEPILKARZ" 
BEFORE INSERT ON "Przerwas"
FOR EACH ROW DECLARE
TYPE P_Pilkarz IS RECORD(
"PilkarzId" NUMBER(10,0)  , 
	"Imie" NCLOB, 
	"Nazwisko" NCLOB, 
	"Pensja" NUMBER(10,0)  , 
	"Wzrost" NUMBER(10,0) , 
	"Wiek" NUMBER(10,0) , 
	"Popularnosc" NUMBER(10,0) , 
	"KlubId" NUMBER(10,0) 
);
pilkarz P_Pilkarz;
pensjabonus_pilkarz int;
pensjabonus_klub int;
BEGIN
   select * into pilkarz from "Pilkarzs" where "Pilkarzs"."PilkarzId"= :new."PilkarzId";
  :new."Koniec":=:new."Pocz?tek" + :new."Dni";

  pensjabonus_pilkarz := :new."Dni" * :new."Bonus_Zawodnik";
  pensjabonus_klub := :new."Dni" * :new."Bonus_Klub";


  UPDATE "Pilkarzs" 
  SET "Pilkarzs"."Pensja" = "Pilkarzs"."Pensja" + pensjabonus_pilkarz 
  WHERE "Pilkarzs"."PilkarzId" = :new."PilkarzId";

  UPDATE "Klubs" 
  SET "Klubs"."Budzet" = "Klubs"."Budzet" + pensjabonus_klub 
  WHERE "Klubs"."KlubId" = pilkarz."KlubId"; 
END;
/
ALTER TRIGGER "MATEUSZ"."TR_USTAWPRZERWEPILKARZ" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TR_USTAWPRZERWEPILKARZ_UPDATE
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "MATEUSZ"."TR_USTAWPRZERWEPILKARZ_UPDATE" 
BEFORE UPDATE ON "Przerwas" 
FOR EACH ROW DECLARE
TYPE P_Pilkarz IS RECORD(
"PilkarzId" NUMBER(10,0)  , 
	"Imie" NCLOB, 
	"Nazwisko" NCLOB, 
	"Pensja" NUMBER(10,0)  , 
	"Wzrost" NUMBER(10,0) , 
	"Wiek" NUMBER(10,0) , 
	"Popularnosc" NUMBER(10,0) , 
	"KlubId" NUMBER(10,0) 
);
pilkarz P_Pilkarz;
pensjabonus_pilkarz int;
pensjabonus_klub int;
pensjabonus_pilkarz2 int;
pensjabonus_klub2 int;
BEGIN
   select * into pilkarz from "Pilkarzs" where "Pilkarzs"."PilkarzId"= :new."PilkarzId";
  :new."Koniec":=:new."Pocz?tek" + :new."Dni";

  pensjabonus_pilkarz := :old."Dni" * :old."Bonus_Zawodnik";
  pensjabonus_klub := :old."Dni" * :old."Bonus_Klub";


  UPDATE "Pilkarzs" 
  SET "Pilkarzs"."Pensja" = "Pilkarzs"."Pensja" - pensjabonus_pilkarz 
  WHERE "Pilkarzs"."PilkarzId" = :new."PilkarzId";

  UPDATE "Klubs" 
  SET "Klubs"."Budzet" = "Klubs"."Budzet" - pensjabonus_klub 
  WHERE "Klubs"."KlubId" = pilkarz."KlubId"; 


  pensjabonus_pilkarz2 := :new."Dni" * :new."Bonus_Zawodnik";
  pensjabonus_klub2 := :new."Dni" * :new."Bonus_Klub";

  UPDATE "Pilkarzs" 
  SET "Pilkarzs"."Pensja" = "Pilkarzs"."Pensja" + pensjabonus_pilkarz2 
  WHERE "Pilkarzs"."PilkarzId" = :new."PilkarzId";

  UPDATE "Klubs" 
  SET "Klubs"."Budzet" = "Klubs"."Budzet" + pensjabonus_klub2
  WHERE "Klubs"."KlubId" = pilkarz."KlubId"; 
END;
/
ALTER TRIGGER "MATEUSZ"."TR_USTAWPRZERWEPILKARZ_UPDATE" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TR_USTAWPRZERWEPILKARZ_USUN
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "MATEUSZ"."TR_USTAWPRZERWEPILKARZ_USUN" 
AFTER DELETE ON "Przerwas" 
FOR EACH ROW DECLARE
TYPE P_Pilkarz IS RECORD(
"PilkarzId" NUMBER(10,0)  , 
	"Imie" NCLOB, 
	"Nazwisko" NCLOB, 
	"Pensja" NUMBER(10,0)  , 
	"Wzrost" NUMBER(10,0) , 
	"Wiek" NUMBER(10,0) , 
	"Popularnosc" NUMBER(10,0) , 
	"KlubId" NUMBER(10,0) 
);
pilkarz P_Pilkarz;
pensjabonus_pilkarz int;
pensjabonus_klub int;
BEGIN
   select * into pilkarz from "Pilkarzs" where "Pilkarzs"."PilkarzId"= :old."PilkarzId";


  pensjabonus_pilkarz := :old."Dni" * :old."Bonus_Zawodnik";
  pensjabonus_klub := :old."Dni" * :old."Bonus_Klub";


  UPDATE "Pilkarzs" 
  SET "Pilkarzs"."Pensja" = "Pilkarzs"."Pensja" - pensjabonus_pilkarz 
  WHERE "Pilkarzs"."PilkarzId" = :old."PilkarzId";

  UPDATE "Klubs" 
  SET "Klubs"."Budzet" = "Klubs"."Budzet" - pensjabonus_klub 
  WHERE "Klubs"."KlubId" = pilkarz."KlubId";

  EXCEPTION
     WHEN OTHERS THEN
     Null;
END;
/
ALTER TRIGGER "MATEUSZ"."TR_USTAWPRZERWEPILKARZ_USUN" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TR_USTAWWYNIK
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "MATEUSZ"."TR_USTAWWYNIK" BEFORE INSERT ON "Meczs" 
FOR EACH ROW BEGIN
  IF :new."Go??_Bramki"=:new."Gospodarz_Bramki" THEN

   :new."Wygrany" :='Remis';
   UPDATE "Klubs" 
   SET "Klubs"."Budzet" = "Klubs"."Budzet" + 50 
   WHERE "Klubs"."KlubId" = :new."Gospodarz_KlubId" ;
   UPDATE "Klubs" 
   SET "Klubs"."Budzet" = "Klubs"."Budzet" + 50 
   WHERE "Klubs"."KlubId" = :new."Go??_KlubId" ;

  ELSIF :new."Go??_Bramki" <:new."Gospodarz_Bramki" THEN

   :new."Wygrany" :='Gospodarz';
   UPDATE "Klubs" 
   SET "Klubs"."Budzet" = "Klubs"."Budzet" + 100 
   WHERE "Klubs"."KlubId" = :new."Gospodarz_KlubId" ;

  ELSE

   :new."Wygrany" :='Go??';
   UPDATE "Klubs" 
   SET "Klubs"."Budzet" = "Klubs"."Budzet" + 100 
   WHERE "Klubs"."KlubId" = :new."Go??_KlubId" ;

  END IF;
END;

/
ALTER TRIGGER "MATEUSZ"."TR_USTAWWYNIK" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TR_USTAWWYNIK_USUN
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "MATEUSZ"."TR_USTAWWYNIK_USUN" 
BEFORE DELETE ON "Meczs" 
FOR EACH ROW BEGIN
  IF :old."Go??_Bramki"=:old."Gospodarz_Bramki" THEN

   UPDATE "Klubs" 
   SET "Klubs"."Budzet" = "Klubs"."Budzet" - 50 
   WHERE "Klubs"."KlubId" = :old."Gospodarz_KlubId" ;
   UPDATE "Klubs" 
   SET "Klubs"."Budzet" = "Klubs"."Budzet" - 50 
   WHERE "Klubs"."KlubId" = :old."Go??_KlubId" ;

  ELSIF :old."Go??_Bramki" <:old."Gospodarz_Bramki" THEN


   UPDATE "Klubs" 
   SET "Klubs"."Budzet" = "Klubs"."Budzet" - 100 
   WHERE "Klubs"."KlubId" = :old."Gospodarz_KlubId" ;

  ELSE


   UPDATE "Klubs" 
   SET "Klubs"."Budzet" = "Klubs"."Budzet" - 100 
   WHERE "Klubs"."KlubId" = :old."Go??_KlubId" ;

  END IF;

   EXCEPTION
     WHEN OTHERS THEN
     Null;
END;

/
ALTER TRIGGER "MATEUSZ"."TR_USTAWWYNIK_USUN" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TR_USUN_OSIAGNIECIE
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "MATEUSZ"."TR_USUN_OSIAGNIECIE" 
BEFORE DELETE ON "Osiagniecias" 
FOR EACH ROW BEGIN
  UPDATE "Pilkarzs" 
  SET "Pilkarzs"."Pensja" = "Pilkarzs"."Pensja" - :old."Bonus_Pensja"
  WHERE "Pilkarzs"."PilkarzId" = :old."PilkarzId";

  UPDATE "Pilkarzs" 
  SET "Pilkarzs"."Popularnosc" = "Pilkarzs"."Popularnosc" - :old."Bonus_Fani"
  WHERE "Pilkarzs"."PilkarzId" = :old."PilkarzId";

  EXCEPTION
     WHEN OTHERS THEN
     Null;
END;

/
ALTER TRIGGER "MATEUSZ"."TR_USUN_OSIAGNIECIE" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TR_Wlasciciels
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "MATEUSZ"."TR_Wlasciciels" 
before insert on "MATEUSZ"."Wlasciciels"
for each row
begin
  select "MATEUSZ"."SQ_Wlasciciels".nextval into :new."WlascicielId" from dual;
end;

/
ALTER TRIGGER "MATEUSZ"."TR_Wlasciciels" ENABLE;
--------------------------------------------------------
--  DDL for Package KLUBY
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE PACKAGE "MATEUSZ"."KLUBY" AS 

   function PobierzNajbogatszyKlub (budzet OUT long) return Varchar2;
   function POBIERZNAJWIECEJBRAMEKGOSPODARZKLUB (bramkiilosc OUT long) RETURN VARCHAR2 ;
   function POBIERZNAJWIECEJBRAMEKGOSC (bramkiilosc OUT long) RETURN VARCHAR2 ;

END KLUBY;


/
--------------------------------------------------------
--  DDL for Package PILKARZE
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE PACKAGE "MATEUSZ"."PILKARZE" AS 

   function POBIERZBRAMKOSTRZELNYZAWODNIK (bramkiilosc OUT long) RETURN VARCHAR2;
   function POBIERZNIEBEZPIECZNYZAWODNIK (kartkiilosc OUT long) RETURN VARCHAR2;
   function POBIERZNAJLEPIEJOPLACALNYZAWODNIK (pensja OUT long) RETURN VARCHAR2;
   function POBIERZNAJMLODSZYZAWODNIK (wiek OUT long) RETURN VARCHAR2;
   function POBIERZPOPULARNYZAWODNIK (fani OUT long) RETURN VARCHAR2;

END PILKARZE;


/
--------------------------------------------------------
--  DDL for Package WLASCICIEL
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE PACKAGE "MATEUSZ"."WLASCICIEL" AS 

  type kursor is ref cursor;
  procedure GetTop3Wiek ( kursor_wlasciciel out kursor);



END WLASCICIEL;


/
--------------------------------------------------------
--  DDL for Package Body KLUBY
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE PACKAGE BODY "MATEUSZ"."KLUBY" 
as  
FUNCTION POBIERZNAJWIECEJBRAMEKGOSC (bramkiilosc OUT long) RETURN 
VARCHAR2 AS
klub Varchar2(100);
klubid NUMBER;
bramki NUMBER;
BEGIN

   SELECT "Meczs"."Go??_KlubId", SUM("Meczs"."Go??_Bramki") as "Bramki"
   into klubid,bramki FROM "Meczs" GROUP BY "Meczs"."Go??_KlubId" 
   ORDER BY SUM("Meczs"."Go??_Bramki") DESC  fetch first 1 rows only;

   bramkiilosc := bramki;

   select "Klubs"."Nazwa" into klub from "Klubs" WHERE "Klubs"."KlubId"=klubid;
   RETURN klub;
END POBIERZNAJWIECEJBRAMEKGOSC;

FUNCTION POBIERZNAJWIECEJBRAMEKGOSPODARZKLUB (bramkiilosc OUT long) RETURN 
VARCHAR2 AS
klub Varchar2(100);
klubid NUMBER;
bramki NUMBER;
BEGIN

   SELECT "Meczs"."Gospodarz_KlubId", SUM("Meczs"."Gospodarz_Bramki") as "Bramki"
   into klubid,bramki FROM "Meczs" GROUP BY "Meczs"."Gospodarz_KlubId" 
   ORDER BY SUM("Meczs"."Gospodarz_Bramki") DESC fetch first 1 rows only;

   bramkiilosc := bramki;

   select "Klubs"."Nazwa" into klub from "Klubs" WHERE "Klubs"."KlubId"=klubid;
   RETURN klub;
END POBIERZNAJWIECEJBRAMEKGOSPODARZKLUB;


function PobierzNajbogatszyKlub (budzet OUT long) 
return Varchar2
as
klub Varchar2(100);
  begin
  select "Klubs"."Nazwa","Klubs"."Budzet" into klub,budzet from "Klubs" ORDER BY "Klubs"."Budzet" DESC fetch first 1 rows only;
return klub;
end PobierzNajbogatszyKlub;


end KLUBY;


/
--------------------------------------------------------
--  DDL for Package Body PILKARZE
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE PACKAGE BODY "MATEUSZ"."PILKARZE" 
as  

FUNCTION POBIERZBRAMKOSTRZELNYZAWODNIK (bramkiilosc OUT long)
RETURN VARCHAR2 AS 
zawodnik_imie NCLOB;
zawodnik_nazwisko NCLOB;
calosc Varchar2(100);
zawodnikid NUMBER(10,0);
bramki long;
BEGIN

    SELECT "MeczPilkarzs"."PilkarzId", SUM("MeczPilkarzs"."Bramki") as "Bramki"
   into zawodnikid,bramki FROM "MeczPilkarzs" GROUP BY "MeczPilkarzs"."PilkarzId" 
   ORDER BY SUM("MeczPilkarzs"."Bramki") DESC fetch first 1 rows only;

   bramkiilosc := bramki;

   SELECT "Pilkarzs"."Imie","Pilkarzs"."Nazwisko" into zawodnik_imie,zawodnik_nazwisko from "Pilkarzs" where "Pilkarzs"."PilkarzId" = zawodnikid;
   zawodnik_nazwisko := CONCAT(' ',zawodnik_nazwisko);
   calosc := CONCAT(zawodnik_imie,zawodnik_nazwisko);

  RETURN calosc;
END POBIERZBRAMKOSTRZELNYZAWODNIK;

FUNCTION POBIERZNIEBEZPIECZNYZAWODNIK (kartkiilosc OUT long) RETURN 
VARCHAR2 AS 
zawodnik_imie NCLOB;
zawodnik_nazwisko NCLOB;
calosc Varchar2(100);
zawodnikid NUMBER(10,0);
kartki long;
BEGIN

   SELECT "MeczPilkarzs"."PilkarzId", COUNT(CASE WHEN "MeczPilkarzs"."CzerwonaKartka" = 1  THEN 1 END) 
   into zawodnikid,kartki FROM "MeczPilkarzs" GROUP BY "MeczPilkarzs"."PilkarzId" 
   ORDER BY COUNT(CASE WHEN "MeczPilkarzs"."CzerwonaKartka" = 1  THEN 1 END) DESC fetch first 1 rows only;

   kartkiilosc := kartki;

   SELECT "Pilkarzs"."Imie","Pilkarzs"."Nazwisko" into zawodnik_imie,zawodnik_nazwisko from "Pilkarzs" where "Pilkarzs"."PilkarzId" = zawodnikid;
   zawodnik_nazwisko := CONCAT(' ',zawodnik_nazwisko);
   calosc := CONCAT(zawodnik_imie,zawodnik_nazwisko);

  RETURN calosc;
END POBIERZNIEBEZPIECZNYZAWODNIK;

FUNCTION POBIERZNAJLEPIEJOPLACALNYZAWODNIK (pensja OUT long) RETURN 
VARCHAR2 AS 
zawodnik_imie NCLOB;
zawodnik_nazwisko NCLOB;
calosc Varchar2(100);
zawodnikid NUMBER(10,0);
pensjawartosc long;
BEGIN

   SELECT "Pilkarzs"."PilkarzId", "Pilkarzs"."Pensja"
   into zawodnikid,pensjawartosc FROM "Pilkarzs" 
   ORDER BY "Pilkarzs"."Pensja"  DESC fetch first 1 rows only; 

   pensja := pensjawartosc;

   SELECT "Pilkarzs"."Imie","Pilkarzs"."Nazwisko" into zawodnik_imie,zawodnik_nazwisko from "Pilkarzs" where "Pilkarzs"."PilkarzId" = zawodnikid;
   zawodnik_nazwisko := CONCAT(' ',zawodnik_nazwisko);
   calosc := CONCAT(zawodnik_imie,zawodnik_nazwisko);

  RETURN calosc;
END POBIERZNAJLEPIEJOPLACALNYZAWODNIK;

FUNCTION POBIERZNAJMLODSZYZAWODNIK (wiek OUT long) RETURN 
VARCHAR2 AS 
zawodnik_imie NCLOB;
zawodnik_nazwisko NCLOB;
calosc Varchar2(100);
zawodnikid NUMBER(10,0);
lata long;
BEGIN

   SELECT "Pilkarzs"."PilkarzId", "Pilkarzs"."Wiek"
   into zawodnikid,lata FROM "Pilkarzs" 
   ORDER BY "Pilkarzs"."Wiek"  ASC fetch first 1 rows only; 

   wiek := lata;

   SELECT "Pilkarzs"."Imie","Pilkarzs"."Nazwisko" into zawodnik_imie,zawodnik_nazwisko from "Pilkarzs" where "Pilkarzs"."PilkarzId" = zawodnikid;
   zawodnik_nazwisko := CONCAT(' ',zawodnik_nazwisko);
   calosc := CONCAT(zawodnik_imie,zawodnik_nazwisko);

  RETURN calosc;
END POBIERZNAJMLODSZYZAWODNIK;

FUNCTION POBIERZPOPULARNYZAWODNIK (fani OUT long) RETURN
VARCHAR2 AS 
zawodnik_imie NCLOB;
zawodnik_nazwisko NCLOB;
calosc Varchar2(100);
zawodnikid NUMBER(10,0);
popularnosc long;
BEGIN

   SELECT "Pilkarzs"."PilkarzId", "Pilkarzs"."Popularnosc"
   into zawodnikid,popularnosc FROM "Pilkarzs" 
   ORDER BY "Pilkarzs"."Popularnosc"  DESC fetch first 1 rows only;

   fani := popularnosc;

   SELECT "Pilkarzs"."Imie","Pilkarzs"."Nazwisko" into zawodnik_imie,zawodnik_nazwisko from "Pilkarzs" where "Pilkarzs"."PilkarzId" = zawodnikid;
   zawodnik_nazwisko := CONCAT(' ',zawodnik_nazwisko);
   calosc := CONCAT(zawodnik_imie,zawodnik_nazwisko);

  RETURN calosc;
END POBIERZPOPULARNYZAWODNIK;
end PILKARZE;


/
--------------------------------------------------------
--  DDL for Package Body WLASCICIEL
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE PACKAGE BODY "MATEUSZ"."WLASCICIEL" 
as  
 procedure GetTop3Wiek(kursor_wlasciciel out kursor)  
 is  
 begin  
 open kursor_wlasciciel for SELECT
    "A1"."Imie"           "Imie",
    "A1"."Nazwisko"       "Nazwisko",
    "A1"."Gotowka"        "Gotowka"
FROM
    "MATEUSZ"."Wlasciciels" "A1"
WHERE "A1"."Wiek" <=21 and "A1"."Gotowka" >=100000;  
 end GetTop3Wiek;  
end WLASCICIEL;


/
--------------------------------------------------------
--  Constraints for Table Wlasciciels
--------------------------------------------------------

  ALTER TABLE "MATEUSZ"."Wlasciciels" MODIFY ("WlascicielId" NOT NULL ENABLE);
  ALTER TABLE "MATEUSZ"."Wlasciciels" MODIFY ("Wiek" NOT NULL ENABLE);
  ALTER TABLE "MATEUSZ"."Wlasciciels" MODIFY ("Gotowka" NOT NULL ENABLE);
  ALTER TABLE "MATEUSZ"."Wlasciciels" ADD CONSTRAINT "PK_Wlasciciels" PRIMARY KEY ("WlascicielId")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table __MigrationHistory
--------------------------------------------------------

  ALTER TABLE "MATEUSZ"."__MigrationHistory" MODIFY ("MigrationId" NOT NULL ENABLE);
  ALTER TABLE "MATEUSZ"."__MigrationHistory" MODIFY ("ContextKey" NOT NULL ENABLE);
  ALTER TABLE "MATEUSZ"."__MigrationHistory" MODIFY ("ProductVersion" NOT NULL ENABLE);
  ALTER TABLE "MATEUSZ"."__MigrationHistory" ADD CONSTRAINT "PK___MigrationHistory" PRIMARY KEY ("MigrationId", "ContextKey")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table Meczs
--------------------------------------------------------

  ALTER TABLE "MATEUSZ"."Meczs" MODIFY ("MeczId" NOT NULL ENABLE);
  ALTER TABLE "MATEUSZ"."Meczs" MODIFY ("Go??_Bramki" NOT NULL ENABLE);
  ALTER TABLE "MATEUSZ"."Meczs" MODIFY ("Gospodarz_Bramki" NOT NULL ENABLE);
  ALTER TABLE "MATEUSZ"."Meczs" ADD CONSTRAINT "PK_Meczs" PRIMARY KEY ("MeczId")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table KlubWlasciciels
--------------------------------------------------------

  ALTER TABLE "MATEUSZ"."KlubWlasciciels" MODIFY ("KlubId" NOT NULL ENABLE);
  ALTER TABLE "MATEUSZ"."KlubWlasciciels" MODIFY ("WlascicielId" NOT NULL ENABLE);
  ALTER TABLE "MATEUSZ"."KlubWlasciciels" ADD CONSTRAINT "PK_KlubWlasciciels" PRIMARY KEY ("KlubId", "WlascicielId")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table Pilkarzs
--------------------------------------------------------

  ALTER TABLE "MATEUSZ"."Pilkarzs" MODIFY ("PilkarzId" NOT NULL ENABLE);
  ALTER TABLE "MATEUSZ"."Pilkarzs" MODIFY ("Pensja" NOT NULL ENABLE);
  ALTER TABLE "MATEUSZ"."Pilkarzs" MODIFY ("Wzrost" NOT NULL ENABLE);
  ALTER TABLE "MATEUSZ"."Pilkarzs" MODIFY ("Wiek" NOT NULL ENABLE);
  ALTER TABLE "MATEUSZ"."Pilkarzs" MODIFY ("Popularnosc" NOT NULL ENABLE);
  ALTER TABLE "MATEUSZ"."Pilkarzs" MODIFY ("KlubId" NOT NULL ENABLE);
  ALTER TABLE "MATEUSZ"."Pilkarzs" ADD CONSTRAINT "PK_Pilkarzs" PRIMARY KEY ("PilkarzId")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MeczPilkarzs
--------------------------------------------------------

  ALTER TABLE "MATEUSZ"."MeczPilkarzs" MODIFY ("MeczId" NOT NULL ENABLE);
  ALTER TABLE "MATEUSZ"."MeczPilkarzs" MODIFY ("PilkarzId" NOT NULL ENABLE);
  ALTER TABLE "MATEUSZ"."MeczPilkarzs" MODIFY ("Bramki" NOT NULL ENABLE);
  ALTER TABLE "MATEUSZ"."MeczPilkarzs" MODIFY ("Strzelil" NOT NULL ENABLE);
  ALTER TABLE "MATEUSZ"."MeczPilkarzs" MODIFY ("CzerwonaKartka" NOT NULL ENABLE);
  ALTER TABLE "MATEUSZ"."MeczPilkarzs" MODIFY ("ZoltaKartka" NOT NULL ENABLE);
  ALTER TABLE "MATEUSZ"."MeczPilkarzs" MODIFY ("DoubleZoltaKartka" NOT NULL ENABLE);
  ALTER TABLE "MATEUSZ"."MeczPilkarzs" ADD CONSTRAINT "PK_MeczPilkarzs" PRIMARY KEY ("MeczId", "PilkarzId")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table Przerwas
--------------------------------------------------------

  ALTER TABLE "MATEUSZ"."Przerwas" MODIFY ("PrzerwaId" NOT NULL ENABLE);
  ALTER TABLE "MATEUSZ"."Przerwas" MODIFY ("Pocz?tek" NOT NULL ENABLE);
  ALTER TABLE "MATEUSZ"."Przerwas" MODIFY ("Dni" NOT NULL ENABLE);
  ALTER TABLE "MATEUSZ"."Przerwas" MODIFY ("Koniec" NOT NULL ENABLE);
  ALTER TABLE "MATEUSZ"."Przerwas" MODIFY ("Bonus_Klub" NOT NULL ENABLE);
  ALTER TABLE "MATEUSZ"."Przerwas" MODIFY ("Bonus_Zawodnik" NOT NULL ENABLE);
  ALTER TABLE "MATEUSZ"."Przerwas" MODIFY ("PilkarzId" NOT NULL ENABLE);
  ALTER TABLE "MATEUSZ"."Przerwas" ADD CONSTRAINT "PK_Przerwas" PRIMARY KEY ("PrzerwaId")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table Osiagniecias
--------------------------------------------------------

  ALTER TABLE "MATEUSZ"."Osiagniecias" MODIFY ("OsiagnieciaId" NOT NULL ENABLE);
  ALTER TABLE "MATEUSZ"."Osiagniecias" MODIFY ("Bonus_Fani" NOT NULL ENABLE);
  ALTER TABLE "MATEUSZ"."Osiagniecias" MODIFY ("Bonus_Pensja" NOT NULL ENABLE);
  ALTER TABLE "MATEUSZ"."Osiagniecias" MODIFY ("PilkarzId" NOT NULL ENABLE);
  ALTER TABLE "MATEUSZ"."Osiagniecias" ADD CONSTRAINT "PK_Osiagniecias" PRIMARY KEY ("OsiagnieciaId")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table Klubs
--------------------------------------------------------

  ALTER TABLE "MATEUSZ"."Klubs" MODIFY ("KlubId" NOT NULL ENABLE);
  ALTER TABLE "MATEUSZ"."Klubs" MODIFY ("Data_zalo?enia" NOT NULL ENABLE);
  ALTER TABLE "MATEUSZ"."Klubs" MODIFY ("Ilo??_Fanów" NOT NULL ENABLE);
  ALTER TABLE "MATEUSZ"."Klubs" MODIFY ("Budzet" NOT NULL ENABLE);
  ALTER TABLE "MATEUSZ"."Klubs" ADD CONSTRAINT "PK_Klubs" PRIMARY KEY ("KlubId")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table KlubWlasciciels
--------------------------------------------------------

  ALTER TABLE "MATEUSZ"."KlubWlasciciels" ADD CONSTRAINT "FK_KlubWlasciciels_KlubId" FOREIGN KEY ("KlubId")
	  REFERENCES "MATEUSZ"."Klubs" ("KlubId") ON DELETE CASCADE ENABLE;
  ALTER TABLE "MATEUSZ"."KlubWlasciciels" ADD CONSTRAINT "FK_KlubWlasciciels__1924605103" FOREIGN KEY ("WlascicielId")
	  REFERENCES "MATEUSZ"."Wlasciciels" ("WlascicielId") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MeczPilkarzs
--------------------------------------------------------

  ALTER TABLE "MATEUSZ"."MeczPilkarzs" ADD CONSTRAINT "FK_MeczPilkarzs_MeczId" FOREIGN KEY ("MeczId")
	  REFERENCES "MATEUSZ"."Meczs" ("MeczId") ON DELETE CASCADE ENABLE;
  ALTER TABLE "MATEUSZ"."MeczPilkarzs" ADD CONSTRAINT "FK_MeczPilkarzs_PilkarzId" FOREIGN KEY ("PilkarzId")
	  REFERENCES "MATEUSZ"."Pilkarzs" ("PilkarzId") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table Meczs
--------------------------------------------------------

  ALTER TABLE "MATEUSZ"."Meczs" ADD CONSTRAINT "FK_Meczs_Gospodarz_KlubId" FOREIGN KEY ("Gospodarz_KlubId")
	  REFERENCES "MATEUSZ"."Klubs" ("KlubId") ENABLE;
  ALTER TABLE "MATEUSZ"."Meczs" ADD CONSTRAINT "FK_Meczs_Go??_KlubId" FOREIGN KEY ("Go??_KlubId")
	  REFERENCES "MATEUSZ"."Klubs" ("KlubId") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table Osiagniecias
--------------------------------------------------------

  ALTER TABLE "MATEUSZ"."Osiagniecias" ADD CONSTRAINT "FK_Osiagniecias_PilkarzId" FOREIGN KEY ("PilkarzId")
	  REFERENCES "MATEUSZ"."Pilkarzs" ("PilkarzId") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table Pilkarzs
--------------------------------------------------------

  ALTER TABLE "MATEUSZ"."Pilkarzs" ADD CONSTRAINT "FK_Pilkarzs_KlubId" FOREIGN KEY ("KlubId")
	  REFERENCES "MATEUSZ"."Klubs" ("KlubId") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table Przerwas
--------------------------------------------------------

  ALTER TABLE "MATEUSZ"."Przerwas" ADD CONSTRAINT "FK_Przerwas_PilkarzId" FOREIGN KEY ("PilkarzId")
	  REFERENCES "MATEUSZ"."Pilkarzs" ("PilkarzId") ON DELETE CASCADE ENABLE;
