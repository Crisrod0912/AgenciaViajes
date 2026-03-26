--------------------------------------------------------
-- Archivo creado  - jueves-marzo-26-2026   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence SEQ_EMPLEADO_ID
--------------------------------------------------------

   CREATE SEQUENCE  "ADMIN01"."SEQ_EMPLEADO_ID"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 198 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SEQ_HOTEL_ID
--------------------------------------------------------

   CREATE SEQUENCE  "ADMIN01"."SEQ_HOTEL_ID"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 188 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SEQ_PAGOS_ID
--------------------------------------------------------

   CREATE SEQUENCE  "ADMIN01"."SEQ_PAGOS_ID"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 162 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SEQ_RESERVAS_ID
--------------------------------------------------------

   CREATE SEQUENCE  "ADMIN01"."SEQ_RESERVAS_ID"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 201 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SEQ_RESERVATOUR_ID
--------------------------------------------------------

   CREATE SEQUENCE  "ADMIN01"."SEQ_RESERVATOUR_ID"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 201 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SEQ_TOURS_ID
--------------------------------------------------------

   CREATE SEQUENCE  "ADMIN01"."SEQ_TOURS_ID"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 192 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SEQ_VUELOS_ID
--------------------------------------------------------

   CREATE SEQUENCE  "ADMIN01"."SEQ_VUELOS_ID"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 177 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Table DIM_CLIENTES
--------------------------------------------------------

  CREATE TABLE "ADMIN01"."DIM_CLIENTES" 
   (	"ID_CLIENTE" NUMBER(*,0), 
	"NOMBRE" VARCHAR2(50 BYTE), 
	"APELLIDO" VARCHAR2(50 BYTE), 
	"EMAIL" VARCHAR2(100 BYTE), 
	"TELEFONO" VARCHAR2(15 BYTE), 
	"DIRECCION" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TABLESPACEAGENCIAVIAJES" ;
--------------------------------------------------------
--  DDL for Table DIM_HOTELES
--------------------------------------------------------

  CREATE TABLE "ADMIN01"."DIM_HOTELES" 
   (	"ID_HOTEL" NUMBER(*,0), 
	"NOMBRE" VARCHAR2(50 BYTE), 
	"UBICACION" VARCHAR2(100 BYTE), 
	"CATEGORIA" VARCHAR2(20 BYTE), 
	"PRECIO_NOCHE" NUMBER(10,2)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TABLESPACEAGENCIAVIAJES" ;
--------------------------------------------------------
--  DDL for Table DIM_TOURS
--------------------------------------------------------

  CREATE TABLE "ADMIN01"."DIM_TOURS" 
   (	"ID_TOUR" NUMBER(*,0), 
	"NOMBRE" VARCHAR2(50 BYTE), 
	"DESCRIPCION" CLOB, 
	"DURACION" NUMBER(*,0), 
	"PRECIO" NUMBER(10,2)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TABLESPACEAGENCIAVIAJES" 
 LOB ("DESCRIPCION") STORE AS SECUREFILE (
  TABLESPACE "TABLESPACEAGENCIAVIAJES" ENABLE STORAGE IN ROW 4000 CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES 
  STORAGE(INITIAL 262144 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table DIM_VUELOS
--------------------------------------------------------

  CREATE TABLE "ADMIN01"."DIM_VUELOS" 
   (	"ID_VUELO" NUMBER(*,0), 
	"AEROLINEA" VARCHAR2(50 BYTE), 
	"ORIGEN" VARCHAR2(50 BYTE), 
	"DESTINO" VARCHAR2(50 BYTE), 
	"FECHA_SALIDA" DATE, 
	"FECHA_LLEGADA" DATE, 
	"PRECIO" NUMBER(10,2)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TABLESPACEAGENCIAVIAJES" ;
--------------------------------------------------------
--  DDL for Table TBL_CLIENTES
--------------------------------------------------------

  CREATE TABLE "ADMIN01"."TBL_CLIENTES" 
   (	"ID_CLIENTE" NUMBER(*,0), 
	"NOMBRE" VARCHAR2(50 BYTE), 
	"APELLIDO" VARCHAR2(50 BYTE), 
	"EMAIL" VARCHAR2(100 BYTE), 
	"TELEFONO" VARCHAR2(15 BYTE), 
	"DIRECCION" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TABLESPACEAGENCIAVIAJES" ;
--------------------------------------------------------
--  DDL for Table TBL_EMPLEADOS
--------------------------------------------------------

  CREATE TABLE "ADMIN01"."TBL_EMPLEADOS" 
   (	"ID_EMPLEADO" NUMBER(*,0), 
	"NOMBRE" VARCHAR2(50 BYTE), 
	"APELLIDO" VARCHAR2(50 BYTE), 
	"CARGO" VARCHAR2(50 BYTE), 
	"TELEFONO" VARCHAR2(15 BYTE), 
	"EMAIL" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TABLESPACEAGENCIAVIAJES" ;
--------------------------------------------------------
--  DDL for Table TBL_HOTELES
--------------------------------------------------------

  CREATE TABLE "ADMIN01"."TBL_HOTELES" 
   (	"ID_HOTEL" NUMBER(*,0), 
	"NOMBRE" VARCHAR2(50 BYTE), 
	"UBICACION" VARCHAR2(100 BYTE), 
	"CATEGORIA" VARCHAR2(20 BYTE), 
	"PRECIO_NOCHE" NUMBER(10,2)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TABLESPACEAGENCIAVIAJES" ;
--------------------------------------------------------
--  DDL for Table TBL_PAGOS
--------------------------------------------------------

  CREATE TABLE "ADMIN01"."TBL_PAGOS" 
   (	"ID_PAGO" NUMBER(*,0), 
	"MONTO" NUMBER(10,2), 
	"FECHA_PAGO" DATE, 
	"METODO_PAGO" VARCHAR2(20 BYTE), 
	"ID_RESERVA" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TABLESPACEAGENCIAVIAJES" ;
--------------------------------------------------------
--  DDL for Table TBL_RESERVAS
--------------------------------------------------------

  CREATE TABLE "ADMIN01"."TBL_RESERVAS" 
   (	"ID_RESERVA" NUMBER(*,0), 
	"ID_CLIENTE" NUMBER(*,0), 
	"ID_VUELO" NUMBER(*,0), 
	"ID_HOTEL" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TABLESPACEAGENCIAVIAJES" ;
--------------------------------------------------------
--  DDL for Table TBL_RESERVAS_PAGOS
--------------------------------------------------------

  CREATE TABLE "ADMIN01"."TBL_RESERVAS_PAGOS" 
   (	"ID_RESERVA" NUMBER(*,0), 
	"ID_PAGO" NUMBER(*,0), 
	"MONTO" NUMBER(10,2), 
	"FECHA_PAGO" DATE, 
	"METODO_PAGO" VARCHAR2(20 BYTE), 
	"ID_CLIENTE" NUMBER(*,0), 
	"ID_VUELO" NUMBER(*,0), 
	"ID_HOTEL" NUMBER(*,0), 
	"ID_TOUR" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TABLESPACEAGENCIAVIAJES" ;
--------------------------------------------------------
--  DDL for Table TBL_RESERVAS_TOURS
--------------------------------------------------------

  CREATE TABLE "ADMIN01"."TBL_RESERVAS_TOURS" 
   (	"ID_RESERVA_TOUR" NUMBER(*,0), 
	"ID_RESERVA" NUMBER(*,0), 
	"ID_TOUR" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TABLESPACEAGENCIAVIAJES" ;
--------------------------------------------------------
--  DDL for Table TBL_TOURS
--------------------------------------------------------

  CREATE TABLE "ADMIN01"."TBL_TOURS" 
   (	"ID_TOUR" NUMBER(*,0), 
	"NOMBRE" VARCHAR2(50 BYTE), 
	"DESCRIPCION" CLOB, 
	"DURACION" NUMBER(*,0), 
	"PRECIO" NUMBER(10,2)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TABLESPACEAGENCIAVIAJES" 
 LOB ("DESCRIPCION") STORE AS SECUREFILE (
  TABLESPACE "TABLESPACEAGENCIAVIAJES" ENABLE STORAGE IN ROW 4000 CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES 
  STORAGE(INITIAL 262144 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table TBL_VUELOS
--------------------------------------------------------

  CREATE TABLE "ADMIN01"."TBL_VUELOS" 
   (	"ID_VUELO" NUMBER(*,0), 
	"AEROLINEA" VARCHAR2(50 BYTE), 
	"ORIGEN" VARCHAR2(50 BYTE), 
	"DESTINO" VARCHAR2(50 BYTE), 
	"FECHA_SALIDA" DATE, 
	"FECHA_LLEGADA" DATE, 
	"PRECIO" NUMBER(10,2)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TABLESPACEAGENCIAVIAJES" ;
REM INSERTING into ADMIN01.DIM_CLIENTES
SET DEFINE OFF;
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('1','Juan','Pérez','juan.perez@example.com','123456789','Calle 1, Ciudad A');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('2','Maria','Gonzalez','maria.gonzalez@example.com','987654321','Calle 2, Ciudad B');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('3','Carlos','Lopez','carlos.lopez@example.com','111222333','Calle 3, Ciudad C');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('4','Ana','Martinez','ana.martinez@example.com','444555666','Calle 4, Ciudad D');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('5','Pedro','Ramirez','pedro.ramirez@example.com','777888999','Calle 5, Ciudad E');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('6','Laura','Torres','laura.torres@example.com','101010101','Calle 6, Ciudad F');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('7','Luis','Diaz','luis.diaz@example.com','202020202','Calle 7, Ciudad G');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('8','Sofia','Morales','sofia.morales@example.com','303030303','Calle 8, Ciudad H');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('9','Jorge','Vargas','jorge.vargas@example.com','404040404','Calle 9, Ciudad I');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('10','Isabel','Gutierrez','isabel.gutierrez@example.com','505050505','Calle 10, Ciudad J');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('11','Diego','Herrera','diego.herrera@example.com','606060606','Calle 11, Ciudad K');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('12','Camila','Rojas','camila.rojas@example.com','707070707','Calle 12, Ciudad L');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('13','Fernando','Mendoza','fernando.mendoza@example.com','808080808','Calle 13, Ciudad M');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('14','Valeria','Navarro','valeria.navarro@example.com','909090909','Calle 14, Ciudad N');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('15','Oscar','Cruz','oscar.cruz@example.com','111333555','Calle 15, Ciudad O');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('16','Carla','Jimenez','carla.jimenez@example.com','222444666','Calle 16, Ciudad P');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('17','Martin','Flores','martin.flores@example.com','333555777','Calle 17, Ciudad Q');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('18','Paula','Sanchez','paula.sanchez@example.com','444666888','Calle 18, Ciudad R');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('19','Hugo','Pena','hugo.pena@example.com','555777999','Calle 19, Ciudad S');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('20','Lucia','Aguilar','lucia.aguilar@example.com','666888000','Calle 20, Ciudad T');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('21','Sebastian','Rios','sebastian.rios@example.com','700700700','Calle 21, Ciudad U');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('22','Andrea','Ortiz','andrea.ortiz@example.com','800800800','Calle 22, Ciudad V');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('23','Eduardo','Reyes','eduardo.reyes@example.com','900900900','Calle 23, Ciudad W');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('24','Nadia','Carrillo','nadia.carrillo@example.com','123123123','Calle 24, Ciudad X');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('25','Victor','Lara','victor.lara@example.com','234234234','Calle 25, Ciudad Y');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('26','Monica','Fuentes','monica.fuentes@example.com','345345345','Calle 26, Ciudad Z');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('27','Ricardo','Vega','ricardo.vega@example.com','456456456','Calle 27, Ciudad AA');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('28','Elena','Nunez','elena.nunez@example.com','567567567','Calle 28, Ciudad BB');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('29','Adrian','Guerrero','adrian.guerrero@example.com','678678678','Calle 29, Ciudad CC');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('30','Patricia','Maldonado','patricia.maldonado@example.com','789789789','Calle 30, Ciudad DD');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('31','Felipe','Castro','felipe.castro@example.com','890890890','Calle 31, Ciudad EE');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('32','Daniela','Silva','daniela.silva@example.com','101101101','Calle 32, Ciudad FF');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('33','Hector','Cabrera','hector.cabrera@example.com','202202202','Calle 33, Ciudad GG');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('34','Clara','Rivera','clara.rivera@example.com','303303303','Calle 34, Ciudad HH');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('35','Marcos','Salinas','marcos.salinas@example.com','404404404','Calle 35, Ciudad II');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('36','Alicia','Montes','alicia.montes@example.com','505505505','Calle 36, Ciudad JJ');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('37','Tomás','Ibáñez','tomas.ibanez@example.com','606606606','Calle 37, Ciudad KK');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('38','Vanesa','Ruiz','vanesa.ruiz@example.com','707707707','Calle 38, Ciudad LL');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('39','Julian','Ponce','julian.ponce@example.com','808808808','Calle 39, Ciudad MM');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('40','Beatriz','Hidalgo','beatriz.hidalgo@example.com','909909909','Calle 40, Ciudad NN');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('41','Rodrigo','Acosta','rodrigo.acosta@example.com','111111111','Calle 41, Ciudad OO');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('42','Natalia','Esquivel','natalia.esquivel@example.com','222222222','Calle 42, Ciudad PP');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('43','Samuel','Beltran','samuel.beltran@example.com','333333333','Calle 43, Ciudad QQ');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('44','Adriana','León','adriana.leon@example.com','444444444','Calle 44, Ciudad RR');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('45','Javier','Mora','javier.mora@example.com','555555555','Calle 45, Ciudad SS');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('46','Liliana','Soto','liliana.soto@example.com','666666666','Calle 46, Ciudad TT');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('47','Rafael','Camacho','rafael.camacho@example.com','777777777','Calle 47, Ciudad UU');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('48','Claudia','Meza','claudia.meza@example.com','888888888','Calle 48, Ciudad VV');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('49','Pablo','Ramos','pablo.ramos@example.com','999999999','Calle 49, Ciudad WW');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('50','Luciana','Nieves','luciana.nieves@example.com','121212121','Calle 50, Ciudad XX');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('51','Gabriel','Suarez','gabriel.suarez@example.com','232323232','Calle 51, Ciudad YY');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('52','Monica','Cortes','monica.cortes@example.com','343434343','Calle 52, Ciudad ZZ');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('53','Ernesto','López','ernesto.lopez@example.com','454545454','Calle 53, Ciudad AAA');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('54','Elisa','Zamora','elisa.zamora@example.com','565656565','Calle 54, Ciudad BBB');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('55','Ivan','Palacios','ivan.palacios@example.com','676767676','Calle 55, Ciudad CCC');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('56','Patricia','Cervantes','patricia.cervantes@example.com','787878787','Calle 56, Ciudad DDD');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('57','Mariano','Solano','mariano.solano@example.com','898989898','Calle 57, Ciudad EEE');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('58','Renata','Arce','renata.arce@example.com','909090909','Calle 58, Ciudad FFF');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('59','Victor','Garza','victor.garza@example.com','101101101','Calle 59, Ciudad GGG');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('60','Lorena','Vera','lorena.vera@example.com','202202202','Calle 60, Ciudad HHH');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('61','Francisco','Juarez','francisco.juarez@example.com','303303303','Calle 61, Ciudad III');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('62','Ariana','Montoya','ariana.montoya@example.com','404404404','Calle 62, Ciudad JJJ');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('63','Hector','Barrios','hector.barrios@example.com','505505505','Calle 63, Ciudad KKK');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('64','Marina','Lemus','marina.lemus@example.com','606606606','Calle 64, Ciudad LLL');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('65','Agustin','Vargas','agustin.vargas@example.com','707707707','Calle 65, Ciudad MMM');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('66','Silvia','Montalvo','silvia.montalvo@example.com','808808808','Calle 66, Ciudad NNN');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('67','Julio','Arrieta','julio.arrieta@example.com','909909909','Calle 67, Ciudad OOO');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('68','Nataly','Pineda','nataly.pineda@example.com','121121121','Calle 68, Ciudad PPP');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('69','Emilio','Muñoz','emilio.munoz@example.com','232232232','Calle 69, Ciudad QQQ');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('70','Clara','Reyna','clara.reyna@example.com','343343343','Calle 70, Ciudad RRR');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('71','Antonio','Carrasco','antonio.carrasco@example.com','454454454','Calle 71, Ciudad SSS');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('72','Diana','Ortega','diana.ortega@example.com','565565565','Calle 72, Ciudad TTT');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('73','Ricardo','Santos','ricardo.santos@example.com','676676676','Calle 73, Ciudad UUU');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('74','Paula','Mejia','paula.mejia@example.com','787787787','Calle 74, Ciudad VVV');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('75','Luis','Moya','luis.moya@example.com','898898898','Calle 75, Ciudad WWW');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('76','Sara','Lara','sara.lara@example.com','909909909','Calle 76, Ciudad XXX');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('77','Joaquin','Pacheco','joaquin.pacheco@example.com','101010101','Calle 77, Ciudad YYY');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('78','Olivia','Serrano','olivia.serrano@example.com','202202202','Calle 78, Ciudad ZZZ');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('79','Mario','Dominguez','mario.dominguez@example.com','303303303','Calle 79, Ciudad AAAA');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('80','Andrea','Velasco','andrea.velasco@example.com','404404404','Calle 80, Ciudad BBBB');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('81','Diego','Paredes','diego.paredes@example.com','111222333','Calle 81, Ciudad AAA');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('82','Ana','Villalobos','ana.villalobos@example.com','222333444','Calle 82, Ciudad BBB');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('83','Carlos','Mendoza','carlos.mendoza@example.com','333444555','Calle 83, Ciudad CCC');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('84','Lucia','Salinas','lucia.salinas@example.com','444555666','Calle 84, Ciudad DDD');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('85','Fernando','Romero','fernando.romero@example.com','555666777','Calle 85, Ciudad EEE');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('86','Beatriz','Rojas','beatriz.rojas@example.com','666777888','Calle 86, Ciudad FFF');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('87','Manuel','Castillo','manuel.castillo@example.com','777888999','Calle 87, Ciudad GGG');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('88','Elena','Navarrete','elena.navarrete@example.com','888999000','Calle 88, Ciudad HHH');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('89','Roberto','Fuentes','roberto.fuentes@example.com','999000111','Calle 89, Ciudad III');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('90','Isabel','Martinez','isabel.martinez@example.com','000111222','Calle 90, Ciudad JJJ');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('91','Oscar','Jimenez','oscar.jimenez@example.com','111222333','Calle 91, Ciudad KKK');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('92','Valeria','Herrera','valeria.herrera@example.com','222333444','Calle 92, Ciudad LLL');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('93','Hugo','Ramirez','hugo.ramirez@example.com','333444555','Calle 93, Ciudad MMM');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('94','Camila','Vega','camila.vega@example.com','444555666','Calle 94, Ciudad NNN');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('95','Alejandro','Perez','alejandro.perez@example.com','555666777','Calle 95, Ciudad OOO');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('96','Laura','Ortiz','laura.ortiz@example.com','666777888','Calle 96, Ciudad PPP');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('97','Eduardo','Ruiz','eduardo.ruiz@example.com','777888999','Calle 97, Ciudad QQQ');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('98','Rosa','Gomez','rosa.gomez@example.com','888999000','Calle 98, Ciudad RRR');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('99','Martin','Nava','martin.nava@example.com','999000111','Calle 99, Ciudad SSS');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('100','Paola','Lopez','paola.lopez@example.com','000111222','Calle 100, Ciudad TTT');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('101','Julian','Pinto','julian.pinto@example.com','111222333','Calle 101, Ciudad UUU');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('102','Carmen','Aguilar','carmen.aguilar@example.com','222333444','Calle 102, Ciudad VVV');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('103','Raul','Sanchez','raul.sanchez@example.com','333444555','Calle 103, Ciudad WWW');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('104','Diana','Reyes','diana.reyes@example.com','444555666','Calle 104, Ciudad XXX');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('105','Sebastian','Alvarez','sebastian.alvarez@example.com','555666777','Calle 105, Ciudad YYY');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('106','Sofia','Dominguez','sofia.dominguez@example.com','666777888','Calle 106, Ciudad ZZZ');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('107','Jorge','Lara','jorge.lara@example.com','777888999','Calle 107, Ciudad AAAA');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('108','Carolina','Torres','carolina.torres@example.com','888999000','Calle 108, Ciudad BBBB');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('109','Alberto','Campos','alberto.campos@example.com','999000111','Calle 109, Ciudad CCCC');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('110','Mariana','Cabrera','mariana.cabrera@example.com','000111222','Calle 110, Ciudad DDDD');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('111','Antonio','Soto','antonio.soto@example.com','111222333','Calle 111, Ciudad EEEE');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('112','Andrea','Castro','andrea.castro@example.com','222333444','Calle 112, Ciudad FFFF');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('113','Victor','Morales','victor.morales@example.com','333444555','Calle 113, Ciudad GGGG');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('114','Esther','Lopez','esther.lopez@example.com','444555666','Calle 114, Ciudad HHHH');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('115','Luis','Hernandez','luis.hernandez@example.com','555666777','Calle 115, Ciudad IIII');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('116','Sara','Jimenez','sara.jimenez@example.com','666777888','Calle 116, Ciudad JJJJ');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('117','Gerardo','Vargas','gerardo.vargas@example.com','777888999','Calle 117, Ciudad KKKK');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('118','Luciana','Fernandez','luciana.fernandez@example.com','888999000','Calle 118, Ciudad LLLL');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('119','Ricardo','Perez','ricardo.perez@example.com','999000111','Calle 119, Ciudad MMMM');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('120','Fabiola','Ramos','fabiola.ramos@example.com','000111222','Calle 120, Ciudad NNNN');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('121','Adrian','Silva','adrian.silva@example.com','111222333','Calle 121, Ciudad AAAA');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('122','Nadia','Ortiz','nadia.ortiz@example.com','222333444','Calle 122, Ciudad BBBB');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('123','Rodrigo','Gomez','rodrigo.gomez@example.com','333444555','Calle 123, Ciudad CCCC');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('124','Patricia','Mendez','patricia.mendez@example.com','444555666','Calle 124, Ciudad DDDD');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('125','Victor','Torres','victor.torres@example.com','555666777','Calle 125, Ciudad EEEE');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('126','Andrea','Perez','andrea.perez@example.com','666777888','Calle 126, Ciudad FFFF');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('127','Marcos','Rojas','marcos.rojas@example.com','777888999','Calle 127, Ciudad GGGG');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('128','Elisa','Navarro','elisa.navarro@example.com','888999000','Calle 128, Ciudad HHHH');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('129','Hector','Vega','hector.vega@example.com','999000111','Calle 129, Ciudad IIII');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('130','Alejandra','Cruz','alejandra.cruz@example.com','000111222','Calle 130, Ciudad JJJJ');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('131','Mario','Salazar','mario.salazar@example.com','111222333','Calle 131, Ciudad KKKK');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('132','Gabriela','Ramirez','gabriela.ramirez@example.com','222333444','Calle 132, Ciudad LLLL');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('133','Javier','Reyes','javier.reyes@example.com','333444555','Calle 133, Ciudad MMMM');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('134','Paula','Dominguez','paula.dominguez@example.com','444555666','Calle 134, Ciudad NNNN');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('135','Felipe','Martinez','felipe.martinez@example.com','555666777','Calle 135, Ciudad OOOO');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('136','Diana','Aguilar','diana.aguilar@example.com','666777888','Calle 136, Ciudad PPPP');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('137','Juan','Lopez','juan.lopez@example.com','777888999','Calle 137, Ciudad QQQQ');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('138','Claudia','Jimenez','claudia.jimenez@example.com','888999000','Calle 138, Ciudad RRRR');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('139','Ricardo','Hernandez','ricardo.hernandez@example.com','999000111','Calle 139, Ciudad SSSS');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('140','Monica','Sanchez','monica.sanchez@example.com','000111222','Calle 140, Ciudad TTTT');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('141','Sergio','Campos','sergio.campos@example.com','111222333','Calle 141, Ciudad UUUU');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('142','Rocio','Vargas','rocio.vargas@example.com','222333444','Calle 142, Ciudad VVVV');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('143','Alfonso','Paredes','alfonso.paredes@example.com','333444555','Calle 143, Ciudad WWWW');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('144','Carla','Rojas','carla.rojas@example.com','444555666','Calle 144, Ciudad XXXX');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('145','Diego','Garcia','diego.garcia@example.com','555666777','Calle 145, Ciudad YYYY');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('146','Natalia','Salinas','natalia.salinas@example.com','666777888','Calle 146, Ciudad ZZZZ');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('147','Francisco','Perez','francisco.perez@example.com','777888999','Calle 147, Ciudad AAAA');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('148','Lorena','Nava','lorena.nava@example.com','888999000','Calle 148, Ciudad BBBB');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('149','Ernesto','Mora','ernesto.mora@example.com','999000111','Calle 149, Ciudad CCCC');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('150','Valentina','Ruiz','valentina.ruiz@example.com','000111222','Calle 150, Ciudad DDDD');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('151','Pedro','Lopez','pedro.lopez@example.com','111222333','Calle 151, Ciudad EEEE');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('152','Marina','Fuentes','marina.fuentes@example.com','222333444','Calle 152, Ciudad FFFF');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('153','Ignacio','Gomez','ignacio.gomez@example.com','333444555','Calle 153, Ciudad GGGG');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('154','Liliana','Torres','liliana.torres@example.com','444555666','Calle 154, Ciudad HHHH');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('155','Armando','Rojas','armando.rojas@example.com','555666777','Calle 155, Ciudad IIII');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('156','Isabela','Ramirez','isabela.ramirez@example.com','666777888','Calle 156, Ciudad JJJJ');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('157','Joaquin','Salazar','joaquin.salazar@example.com','777888999','Calle 157, Ciudad KKKK');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('158','Gloria','Reyes','gloria.reyes@example.com','888999000','Calle 158, Ciudad LLLL');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('159','Miguel','Dominguez','miguel.dominguez@example.com','999000111','Calle 159, Ciudad MMMM');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('160','Silvia','Pinto','silvia.pinto@example.com','000111222','Calle 160, Ciudad NNNN');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('161','Raul','Fernandez','raul.fernandez@example.com','111222333','Calle 161, Ciudad AAAA');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('162','Sofia','Lopez','sofia.lopez@example.com','222333444','Calle 162, Ciudad BBBB');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('163','Luis','Hernandez','luis.hernandez@example.com','333444555','Calle 163, Ciudad CCCC');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('164','Camila','Vega','camila.vega@example.com','444555666','Calle 164, Ciudad DDDD');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('165','Julian','Cruz','julian.cruz@example.com','555666777','Calle 165, Ciudad EEEE');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('166','Ana','Ramirez','ana.ramirez@example.com','666777888','Calle 166, Ciudad FFFF');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('167','Pablo','Martinez','pablo.martinez@example.com','777888999','Calle 167, Ciudad GGGG');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('168','Valeria','Rojas','valeria.rojas@example.com','888999000','Calle 168, Ciudad HHHH');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('169','Oscar','Navarro','oscar.navarro@example.com','999000111','Calle 169, Ciudad IIII');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('170','Carolina','Aguilar','carolina.aguilar@example.com','000111222','Calle 170, Ciudad JJJJ');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('171','Esteban','Perez','esteban.perez@example.com','111222333','Calle 171, Ciudad KKKK');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('172','Laura','Mendez','laura.mendez@example.com','222333444','Calle 172, Ciudad LLLL');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('173','Martin','Torres','martin.torres@example.com','333444555','Calle 173, Ciudad MMMM');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('174','Elena','Dominguez','elena.dominguez@example.com','444555666','Calle 174, Ciudad NNNN');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('175','Ruben','Reyes','ruben.reyes@example.com','555666777','Calle 175, Ciudad OOOO');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('176','Lucia','Vargas','lucia.vargas@example.com','666777888','Calle 176, Ciudad PPPP');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('177','Hugo','Garcia','hugo.garcia@example.com','777888999','Calle 177, Ciudad QQQQ');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('178','Cecilia','Ruiz','cecilia.ruiz@example.com','888999000','Calle 178, Ciudad RRRR');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('179','Diego','Salinas','diego.salinas@example.com','999000111','Calle 179, Ciudad SSSS');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('180','Paula','Nava','paula.nava@example.com','000111222','Calle 180, Ciudad TTTT');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('181','Fernando','Lopez','fernando.lopez@example.com','111222333','Calle 181, Ciudad UUUU');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('182','Natalia','Paredes','natalia.paredes@example.com','222333444','Calle 182, Ciudad VVVV');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('183','Jorge','Campos','jorge.campos@example.com','333444555','Calle 183, Ciudad WWWW');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('184','Mariana','Silva','mariana.silva@example.com','444555666','Calle 184, Ciudad XXXX');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('185','Roberto','Garcia','roberto.garcia@example.com','555666777','Calle 185, Ciudad YYYY');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('186','Isabel','Mora','isabel.mora@example.com','666777888','Calle 186, Ciudad ZZZZ');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('187','Antonio','Cruz','antonio.cruz@example.com','777888999','Calle 187, Ciudad AAAA');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('188','Claudia','Navarro','claudia.navarro@example.com','888999000','Calle 188, Ciudad BBBB');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('189','Rafael','Gomez','rafael.gomez@example.com','999000111','Calle 189, Ciudad CCCC');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('190','Eva','Hernandez','eva.hernandez@example.com','000111222','Calle 190, Ciudad DDDD');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('191','Sebastian','Reyes','sebastian.reyes@example.com','111222333','Calle 191, Ciudad EEEE');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('192','Luisa','Martinez','luisa.martinez@example.com','222333444','Calle 192, Ciudad FFFF');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('193','Alberto','Vega','alberto.vega@example.com','333444555','Calle 193, Ciudad GGGG');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('194','Rosa','Aguilar','rosa.aguilar@example.com','444555666','Calle 194, Ciudad HHHH');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('195','Mario','Dominguez','mario.dominguez@example.com','555666777','Calle 195, Ciudad IIII');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('196','Samantha','Mendez','samantha.mendez@example.com','666777888','Calle 196, Ciudad JJJJ');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('197','Andres','Pinto','andres.pinto@example.com','777888999','Calle 197, Ciudad KKKK');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('198','Carla','Salazar','carla.salazar@example.com','888999000','Calle 198, Ciudad LLLL');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('199','Gerardo','Ruiz','gerardo.ruiz@example.com','999000111','Calle 199, Ciudad MMMM');
Insert into ADMIN01.DIM_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('200','Veronica','Jimenez','veronica.jimenez@example.com','000111222','Calle 200, Ciudad NNNN');
REM INSERTING into ADMIN01.DIM_HOTELES
SET DEFINE OFF;
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('1','Hotel Mar Azul','Playa del Carmen, México','5 Estrellas','200');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('2','Hotel Paraíso','Cancún, México','4 Estrellas','150');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('3','Grand Resort','Bavaro, República Dominicana','5 Estrellas','300');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('4','Hotel Sol y Mar','Puerto Vallarta, México','3 Estrellas','120');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('5','Palace Suites','Miami, USA','4 Estrellas','180');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('6','Sunshine Hotel','Cartagena, Colombia','3 Estrellas','100');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('7','Royal Palm Hotel','Punta Cana, República Dominicana','5 Estrellas','350');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('8','Hotel Mirage','Las Vegas, USA','4 Estrellas','220');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('9','The Grand','Orlando, USA','5 Estrellas','250');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('10','Ocean Breeze','Cozumel, México','4 Estrellas','170');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('11','Mountain View','Asheville, USA','3 Estrellas','90');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('12','Seaside Resort','Boca Chica, República Dominicana','5 Estrellas','320');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('13','Beachfront Hotel','Acapulco, México','3 Estrellas','110');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('14','Golden Sands','Varadero, Cuba','4 Estrellas','180');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('15','Luxury Suites','Buenos Aires, Argentina','5 Estrellas','400');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('16','Royal Suites','Tulum, México','4 Estrellas','210');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('17','Hotel Blue Bay','Cartagena, Colombia','3 Estrellas','95');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('18','Mayan Palace','Riviera Maya, México','5 Estrellas','370');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('19','Tropical Resort','Roatán, Honduras','4 Estrellas','160');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('20','Palm Beach Resort','Barbados','5 Estrellas','280');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('21','Beachfront Paradise','Puerto Rico','4 Estrellas','190');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('22','Sunset Inn','Tulum, México','3 Estrellas','85');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('23','Crystal Palace','Miami, USA','5 Estrellas','320');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('24','Villa Serena','Boca Chica, República Dominicana','4 Estrellas','160');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('25','Laguna Resort','Cozumel, México','5 Estrellas','310');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('26','Grand Ocean View','Varadero, Cuba','4 Estrellas','190');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('27','Blue Sky Resort','Puerto Vallarta, México','3 Estrellas','120');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('28','Oceanfront Hotel','Bavaro, República Dominicana','5 Estrellas','330');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('29','Mountain Escape','Asheville, USA','4 Estrellas','200');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('30','Sunset Bay Hotel','Cancún, México','5 Estrellas','260');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('31','Tropical Breeze','Tulum, México','4 Estrellas','180');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('32','Serenity Hotel','Cartagena, Colombia','3 Estrellas','95');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('33','Vista Mar','Puerto Rico','4 Estrellas','210');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('34','Beachcomber Resort','Las Vegas, USA','5 Estrellas','320');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('35','Skyline Inn','Punta Cana, República Dominicana','3 Estrellas','110');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('36','Sunset Paradise','Boca Chica, República Dominicana','5 Estrellas','350');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('37','Grand Riviera','Riviera Maya, México','4 Estrellas','220');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('38','Royal Resort','Cozumel, México','3 Estrellas','130');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('39','Marina Suites','Puerto Vallarta, México','5 Estrellas','310');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('40','Azure Bay','Playa del Carmen, México','5 Estrellas','220');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('41','Sunset Cove','Cancún, México','4 Estrellas','200');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('42','Coral Reef Hotel','Punta Cana, República Dominicana','5 Estrellas','330');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('43','Riviera Beach Resort','Puerto Vallarta, México','4 Estrellas','160');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('44','Oasis Retreat','Barbados','3 Estrellas','120');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('45','Golden Beach','Varadero, Cuba','5 Estrellas','340');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('46','Pacific Suites','Los Ángeles, USA','4 Estrellas','230');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('47','Blue Lagoon Resort','Tulum, México','3 Estrellas','110');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('48','Tropical Escape','Cartagena, Colombia','4 Estrellas','180');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('49','Beachside Haven','Cozumel, México','5 Estrellas','330');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('50','Crystal Waters','Bavaro, República Dominicana','4 Estrellas','210');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('51','Mango Bay Resort','Roatán, Honduras','5 Estrellas','300');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('52','Coco Beach Hotel','Miami, USA','3 Estrellas','120');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('53','Royal Shores','Cancún, México','4 Estrellas','220');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('54','Palm Bay Hotel','Riviera Maya, México','3 Estrellas','150');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('55','Elite Suites','Las Vegas, USA','5 Estrellas','400');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('56','Casa Blanca','Tulum, México','4 Estrellas','170');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('57','Sunrise Resort','Puerto Rico','3 Estrellas','140');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('58','Horizon Inn','Asheville, USA','4 Estrellas','190');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('59','Sea Breeze Suites','Varadero, Cuba','5 Estrellas','360');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('60','Beachfront Oasis','Barbados','3 Estrellas','130');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('61','Grand Lagoon','Punta Cana, República Dominicana','4 Estrellas','210');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('62','Majestic Towers','Puerto Vallarta, México','5 Estrellas','380');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('63','Luxe Beach Resort','Cozumel, México','4 Estrellas','190');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('64','Sunshine Bay','Cartagena, Colombia','5 Estrellas','350');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('65','Royal Beachfront','Las Vegas, USA','3 Estrellas','150');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('66','Pacific Coast Inn','Miami, USA','4 Estrellas','210');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('67','Cabo View','Baja California, México','5 Estrellas','390');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('68','Skyline Resort','Cozumel, México','4 Estrellas','220');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('69','Ocean Breeze Suites','Varadero, Cuba','3 Estrellas','130');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('70','Vista Marina','Boca Chica, República Dominicana','4 Estrellas','160');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('71','Sunset Lagoon','Tulum, México','5 Estrellas','320');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('72','Royal Vista','Puerto Rico','4 Estrellas','210');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('73','Emerald Bay Hotel','Las Vegas, USA','3 Estrellas','120');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('74','Lagoon Paradise','Cancún, México','5 Estrellas','350');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('75','Palms Resort','Bavaro, República Dominicana','4 Estrellas','200');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('76','Vista Caribe','Boca Chica, República Dominicana','5 Estrellas','330');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('77','Crystal Palace','Bavaro, República Dominicana','3 Estrellas','140');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('78','Seaside Hotel','Cancún, México','4 Estrellas','220');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('79','Palm Springs Resort','Tulum, México','5 Estrellas','360');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('80','Marina Bay Resort','Puerto Vallarta, México','4 Estrellas','250');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('81','Laguna Azul','Riviera Maya, México','5 Estrellas','370');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('82','Paradise Beach','Las Vegas, USA','3 Estrellas','150');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('83','Tropical Oasis','Barbados','4 Estrellas','220');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('84','Silver Sands Resort','Varadero, Cuba','5 Estrellas','340');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('85','Island Breeze','Bavaro, República Dominicana','4 Estrellas','210');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('86','Ocean View Suites','Cozumel, México','5 Estrellas','380');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('87','Palm Bay Beach Resort','Miami, USA','3 Estrellas','160');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('88','Crystal Beachfront','Puerto Rico','5 Estrellas','390');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('89','Vista del Mar','Cabo San Lucas, México','4 Estrellas','230');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('90','Golden Coast Resort','Cozumel, México','5 Estrellas','400');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('91','Dreams Bay','Cartagena, Colombia','3 Estrellas','140');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('92','Blue Waters Inn','Las Vegas, USA','4 Estrellas','250');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('93','Sunshine Cove','Boca Chica, República Dominicana','5 Estrellas','360');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('94','Coral Reef Resort','Tulum, México','4 Estrellas','210');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('95','Lagoon Villas','Puerto Vallarta, México','5 Estrellas','420');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('96','Oasis Paradise','Cancún, México','4 Estrellas','230');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('97','Caribbean Breeze Hotel','Varadero, Cuba','3 Estrellas','160');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('98','Majestic Palm Resort','Barbados','5 Estrellas','370');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('99','Sea Cliff Hotel','Punta Cana, República Dominicana','4 Estrellas','210');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('100','Laguna Grande','Puerto Rico','3 Estrellas','140');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('101','Golden Sun Resort','Las Vegas, USA','4 Estrellas','230');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('102','Sunset Point','Cancún, México','5 Estrellas','380');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('103','Royal Sunset','Bavaro, República Dominicana','3 Estrellas','170');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('104','Coral Beach Suites','Cartagena, Colombia','5 Estrellas','350');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('105','Oceanview Resort','Cozumel, México','4 Estrellas','220');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('106','Sunshine Bay Resort','Punta Cana, República Dominicana','5 Estrellas','400');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('107','Golden Coast Villas','Miami, USA','3 Estrellas','150');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('108','Oasis Grande','Boca Chica, República Dominicana','4 Estrellas','210');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('109','Beachfront Bliss','Riviera Maya, México','5 Estrellas','380');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('110','Skyline Resort','Cancún, México','4 Estrellas','230');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('111','Vista Mar','Tulum, México','5 Estrellas','350');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('112','Sunset Bay Resort','Las Vegas, USA','3 Estrellas','160');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('113','Tropical View Hotel','Bavaro, República Dominicana','4 Estrellas','220');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('114','Ocean Breeze Resort','Puerto Rico','5 Estrellas','370');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('115','Palms Bay Resort','Varadero, Cuba','3 Estrellas','140');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('116','Royal Lagoon','Cabo San Lucas, México','4 Estrellas','230');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('117','El Dorado Beach Resort','Puerto Vallarta, México','5 Estrellas','420');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('118','Mountain View Lodge','Sedona, USA','4 Estrellas','250');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('119','Sea Breeze Inn','Barbados','3 Estrellas','180');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('120','Tropical Sun Resort','Cancún, México','5 Estrellas','410');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('121','Coastal Retreat','Riviera Maya, México','4 Estrellas','230');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('122','Breeze Bay Hotel','Varadero, Cuba','3 Estrellas','160');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('123','Blue Lagoon Resort','Cozumel, México','5 Estrellas','420');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('124','The Island Retreat','Las Vegas, USA','4 Estrellas','240');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('125','Starfish Bay','Tulum, México','5 Estrellas','390');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('126','Royal Beach Club','Punta Cana, República Dominicana','4 Estrellas','220');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('127','Tropical Paradise Resort','Cabo San Lucas, México','3 Estrellas','150');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('128','Seaside Haven','Cartagena, Colombia','5 Estrellas','380');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('129','Ocean Breeze Inn','Boca Chica, República Dominicana','4 Estrellas','210');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('130','Beachfront Villas','Varadero, Cuba','5 Estrellas','360');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('131','Sunshine Beach Resort','Riviera Maya, México','3 Estrellas','170');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('132','Crystal Lagoon Resort','Punta Cana, República Dominicana','4 Estrellas','230');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('133','Tropical Springs Hotel','Cancún, México','5 Estrellas','420');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('134','Golden Sands Hotel','Miami, USA','3 Estrellas','180');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('135','Lagoon Beach Resort','Cozumel, México','4 Estrellas','240');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('136','Sunset Cove Resort','Barbados','5 Estrellas','380');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('137','Coral Bay Villas','Tulum, México','4 Estrellas','220');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('138','Majestic Sun Hotel','Cabo San Lucas, México','5 Estrellas','400');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('139','Blue Waters Inn','Las Vegas, USA','3 Estrellas','160');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('140','Caribbean Sky Resort','Puerto Rico','5 Estrellas','420');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('141','Sunrise Oasis','Boca Chica, República Dominicana','4 Estrellas','230');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('142','Luxury Bay Resort','Cartagena, Colombia','5 Estrellas','390');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('143','Vista Bonita Resort','Puerto Vallarta, México','3 Estrellas','150');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('144','Tropical Heights Resort','Bavaro, República Dominicana','4 Estrellas','220');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('145','Laguna Azul Beach','Riviera Maya, México','5 Estrellas','400');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('146','Majestic Lagoon Resort','Cancún, México','4 Estrellas','210');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('147','Star Bay Resort','Cozumel, México','5 Estrellas','390');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('148','Ocean View Hotel','Las Vegas, USA','3 Estrellas','170');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('149','Coral Sands Beach Resort','Varadero, Cuba','4 Estrellas','240');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('150','Breeze Point Resort','Tulum, México','5 Estrellas','380');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('151','Oceanic View Resort','Punta Cana, República Dominicana','4 Estrellas','230');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('152','Sunset Ridge Resort','Puerto Vallarta, México','3 Estrellas','180');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('153','Marina Beach Resort','Cancún, México','5 Estrellas','450');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('154','Golden Coast Hotel','Punta Cana, República Dominicana','4 Estrellas','250');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('155','Tropical Gardens Inn','Cartagena, Colombia','3 Estrellas','190');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('156','Sunshine View Resort','Boca Chica, República Dominicana','5 Estrellas','420');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('157','Coral Reef Hotel','Barbados','4 Estrellas','240');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('158','Lagoon Breeze Resort','Las Vegas, USA','3 Estrellas','160');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('159','Seaside Escape Resort','Cozumel, México','5 Estrellas','430');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('160','Blue Coral Beach Resort','Riviera Maya, México','4 Estrellas','220');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('161','Crystal Waters Resort','Tulum, México','5 Estrellas','410');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('162','Beachfront Villas','Cancún, México','3 Estrellas','200');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('163','Sunrise Bay Resort','Miami, USA','4 Estrellas','250');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('164','Tropical Oasis Hotel','Puerto Vallarta, México','5 Estrellas','450');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('165','Ocean Breeze Villas','Varadero, Cuba','4 Estrellas','220');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('166','Palm Shores Resort','Punta Cana, República Dominicana','5 Estrellas','420');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('167','Seaview Palace Hotel','Cabo San Lucas, México','4 Estrellas','230');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('168','Lagoon Paradise Resort','Punta Cana, República Dominicana','3 Estrellas','190');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('169','Coral Sands Beach Hotel','Barbados','5 Estrellas','400');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('170','Blue Horizon Resort','Tulum, México','4 Estrellas','230');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('171','Coastal View Inn','Varadero, Cuba','3 Estrellas','180');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('172','The Waterfront Resort','Riviera Maya, México','5 Estrellas','460');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('173','Sunset Bay Hotel','Cabo San Lucas, México','4 Estrellas','250');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('174','Luxury Ocean View Resort','Las Vegas, USA','5 Estrellas','430');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('175','Caribbean Blue Resort','Cartagena, Colombia','3 Estrellas','210');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('176','Golden Reef Inn','Punta Cana, República Dominicana','4 Estrellas','240');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('177','Oceanfront Villas','Cozumel, México','5 Estrellas','450');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('178','Beachfront Horizon Resort','Miami, USA','4 Estrellas','230');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('179','Coral Bay Hotel','Cancún, México','3 Estrellas','180');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('180','Lagoon Palace Resort','Las Vegas, USA','5 Estrellas','470');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('181','Sunrise Lagoon Resort','Boca Chica, República Dominicana','4 Estrellas','230');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('182','Royal Coastal Resort','Cabo San Lucas, México','5 Estrellas','440');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('183','Beachside Escape Resort','Punta Cana, República Dominicana','3 Estrellas','210');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('184','Sunset Paradise Resort','Cartagena, Colombia','5 Estrellas','450');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('185','Tropical Bay Hotel','Varadero, Cuba','4 Estrellas','240');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('186','Ocean Breeze Resort','Tulum, México','3 Estrellas','200');
Insert into ADMIN01.DIM_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('187','Caribbean Ocean Resort','Puerto Vallarta, México','5 Estrellas','480');
REM INSERTING into ADMIN01.DIM_TOURS
SET DEFINE OFF;
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('136','Tour en barco por el Mar Egeo','7','500');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('137','Exploración del Parque Nacional Rapa Nui','5','450');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('138','Ruta por las Highlands escocesas','6','300');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('139','Tour por las ruinas de Pompeya','4','180');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('140','Ruta de trekking por los Andes','8','600');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('141','Tour en globo por los valles de Turquía','3','280');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('142','Exploración de la costa Amalfitana','5','320');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('143','Safari en el Parque Nacional Chobe','7','700');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('144','Tour por el desierto del Sahara','6','400');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('145','Ruta por los canales de Brujas','3','150');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('146','Excursión al Monte Fuji','4','250');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('147','Tour por los lagos de Plitvice','5','200');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('148','Crucero por la Antártida','10','1500');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('149','Ruta de cata de quesos en Suiza','3','180');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('150','Tour por los monasterios de Armenia','4','160');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('151','Ruta de las cascadas en Islandia','6','400');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('152','Tour arqueológico en Pompeya y Herculano','5','240');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('153','Paseo en tren por el Cañón del Colorado','5','350');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('154','Exploración de las ruinas de Chichén Itzá','4','180');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('155','Crucero por el Mediterráneo','7','850');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('156','Tour por los templos de Luxor','5','300');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('157','Safari nocturno en Kenia','4','450');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('158','Tour por las Highlands de Islandia','6','550');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('159','Exploración de las cuevas de Waitomo','3','220');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('160','Ruta de trekking en Torres del Paine','7','600');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('161','Visita al Kremlin y Plaza Roja','3','150');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('162','Tour por los campos de tulipanes en Holanda','2','100');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('163','Crucero por las islas Maldivas','6','1200');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('164','Paseo en globo por los campos de la Toscana','3','350');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('165','Tour por el Valle Sagrado de los Incas','5','300');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('166','Recorrido por la Gran Ruta Oceánica','4','250');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('167','Tour por el Parque Nacional Everglades','3','150');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('168','Ruta por los castillos de Transilvania','5','220');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('169','Exploración del desierto de Atacama','6','400');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('170','Ruta en bicicleta por Ámsterdam','3','120');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('171','Tour por el lago Titicaca','5','250');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('1','Tour por las Pirámides de Egipto','8','150');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('2','Safari en el Serengeti','12','300');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('3','Crucero por los canales de Venecia','2','80');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('4','Recorrido por la Gran Muralla China','7','220');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('5','Excursión al Machu Picchu','10','250');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('6','Visita a la Torre Eiffel y Louvre','6','180');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('7','Tour de vinos en Napa Valley','5','120');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('8','Exploración del Amazonas','12','400');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('9','Caminata por el Parque Nacional Torres del Paine','8','300');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('10','Tour histórico en Roma','5','140');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('11','Excursión al Taj Mahal','6','200');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('12','Snorkel en la Gran Barrera de Coral','7','180');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('13','Tour nocturno en Tokio','4','100');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('14','Recorrido por las Cataratas del Niágara','5','90');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('15','Expedición al Monte Everest','10','500');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('16','Tour por los templos de Angkor','7','210');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('17','Recorrido por Nueva York','6','130');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('18','Ruta por la Toscana','8','200');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('19','Tour por la Ruta 66','12','400');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('20','Excursión al Glaciar Perito Moreno','7','150');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('21','Paseo por la Bahía de San Francisco','3','70');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('22','Tour gastronómico en Bangkok','5','110');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('23','Crucero por las islas griegas','10','250');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('24','Tour en globo aerostático en Cappadocia','3','180');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('25','Recorrido por el desierto del Sahara','15','350');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('26','Exploración de la Antártida','20','1200');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('27','Paseo en tren por los Alpes suizos','7','220');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('28','Tour cultural en Kioto','6','180');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('29','Excursión a la Isla de Pascua','8','400');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('30','Aventura en la Selva Negra','5','140');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('31','Safari nocturno en Sudáfrica','6','300');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('32','Exploración de cuevas en Vietnam','8','200');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('33','Tour por el Cañón del Antílope','4','120');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('34','Viaje al Polo Norte','15','1500');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('35','Tour arqueológico en Jordania','10','350');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('36','Caminata por el Camino de Santiago','15','600');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('37','Excursión a las Islas Galápagos','8','800');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('38','Tour de las auroras boreales en Noruega','6','350');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('39','Tour por las playas de Bali','6','180');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('40','Excursión al Gran Cañón','5','150');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('41','Crucero por los fiordos noruegos','10','500');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('42','Tour por las Highlands escocesas','8','250');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('43','Visita al Palacio de Versalles','4','100');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('44','Caminata por el Monte Fuji','10','300');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('45','Tour en bicicleta por Ámsterdam','4','70');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('46','Recorrido por los castillos del Loira','7','200');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('47','Safari en el desierto de Dubái','6','180');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('48','Tour en helicóptero sobre Nueva York','2','300');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('49','Paseo en globo sobre el Valle del Loira','3','250');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('50','Tour por los mercados de Marrakech','5','90');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('51','Excursión al Monte Kilimanjaro','12','500');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('52','Crucero por el río Nilo','8','400');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('53','Tour por el desierto de Atacama','7','250');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('54','Paseo por el centro histórico de Praga','3','70');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('55','Ruta de la cerveza en Múnich','5','120');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('56','Excursión a los Alpes franceses','6','250');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('57','Tour por el Lago Titicaca','7','150');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('58','Excursión a la Aurora Boreal en Islandia','5','300');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('59','Paseo en barco por el río Támesis','2','50');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('60','Recorrido por la Riviera Maya','8','200');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('61','Tour en la muralla de Dubrovnik','4','100');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('62','Crucero por el Mediterráneo','10','700');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('63','Visita al Parque Nacional Yellowstone','7','180');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('64','Tour cultural por Estambul','6','150');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('65','Excursión al Parque Nacional Banff','8','220');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('66','Tour en globo sobre Luxor','3','180');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('67','Ruta por los volcanes de Hawái','6','300');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('68','Safari fotográfico en Botswana','10','400');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('69','Recorrido en kayak por Halong Bay','5','180');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('70','Tour gastronómico por Italia','8','350');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('71','Paseo por los jardines de Keukenhof','4','90');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('72','Visita al Museo del Prado y el Retiro','5','100');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('73','Excursión al Volcán Arenal en Costa Rica','6','250');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('74','Tour por la ruta del chocolate en Suiza','6','200');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('75','Recorrido en glaciares en Alaska','8','350');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('76','Ruta por los templos de Kyoto y Nara','7','300');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('77','Tour por los Jardines de Butchart','3','80');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('78','Crucero por las Islas Galápagos','7','900');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('79','Recorrido en tren por los Alpes Suizos','6','400');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('80','Ruta de vinos en Napa Valley','5','250');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('81','Exploración de las Cataratas Victoria','4','180');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('82','Tour por los templos de Angkor Wat','6','220');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('83','Visita al Parque Nacional Kruger','7','500');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('84','Paseo en barco por Cinque Terre','5','150');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('85','Excursión a Machu Picchu','6','350');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('86','Tour por las dunas de Erg Chebbi','8','300');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('87','Excursión a la Gran Muralla China','5','200');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('88','Ruta por los monasterios de Meteora','6','180');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('89','Paseo en globo sobre Capadocia','3','250');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('90','Exploración de los fiordos chilenos','7','450');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('91','Tour por los templos de Bagan','5','220');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('92','Crucero por el Caribe','8','700');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('93','Tour en las ruinas de Petra','5','300');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('94','Tour por la ruta del whisky en Escocia','6','350');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('95','Visita al Parque Nacional Torres del Paine','7','400');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('96','Tour cultural en Ciudad de México','4','120');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('97','Recorrido por las islas de Croacia','6','350');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('98','Safari en el Parque Nacional Serengeti','7','600');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('99','Ruta de trekking en los Dolomitas','8','280');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('100','Visita a las islas de Seychelles','7','500');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('101','Tour histórico por Jerusalén','5','200');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('102','Excursión al Monte Everest','12','1200');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('103','Ruta por los campos de lavanda en Provenza','4','140');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('104','Tour por la Amazonía peruana','6','400');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('105','Excursión a las Blue Mountains','5','150');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('106','Paseo en barco por el Lago Baikal','5','200');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('107','Tour en los templos de Kyoto','5','250');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('108','Tour arqueológico en Egipto','7','400');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('109','Tour en bicicleta por Barcelona','4','120');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('110','Recorrido por la Selva Negra','6','250');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('111','Safari en el Parque Nacional Hwange','6','300');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('112','Ruta por los castillos de Baviera','5','200');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('113','Excursión a la Isla de Pascua','8','500');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('114','Tour por el Parque Nacional Yosemite','6','250');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('115','Crucero por el Nilo','6','450');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('116','Ruta del café en Colombia','4','120');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('117','Excursión a los fiordos noruegos','7','550');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('118','Recorrido por el Taj Mahal','4','300');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('119','Tour en kayak por Halong Bay','5','220');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('120','Trekking por el Cañón del Colca','6','280');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('121','Paseo en barco por el Danubio','5','300');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('122','Tour por los glaciares de Islandia','7','600');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('123','Ruta por los mercados flotantes de Tailandia','3','150');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('124','Exploración del Parque Yellowstone','5','250');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('125','Visita al Santuario de Lhasa','6','400');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('126','Safari en el Delta del Okavango','7','750');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('127','Tour por la Toscana italiana','5','320');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('128','Ruta por los castillos del Loira','4','200');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('129','Crucero por Alaska','7','800');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('130','Tour por los arrozales de Bali','3','180');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('131','Exploración de las Montañas Rocosas','6','300');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('132','Paseo por el Gran Cañón','4','180');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('133','Visita a la ciudad amurallada de Carcassonne','3','150');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('134','Excursión a la Aurora Boreal','5','400');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('135','Ruta por los volcanes de Hawái','6','350');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('172','Safari en el Parque Nacional Etosha','7','700');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('173','Exploración del Monte Kilimanjaro','10','1500');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('174','Tour por las cuevas de Postojna','3','200');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('175','Visita a la ciudad perdida de Tikal','4','280');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('176','Ruta de trekking en el Annapurna','12','1400');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('177','Tour en jeep por el Salar de Uyuni','4','350');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('178','Excursión a la Garganta de Verdon','3','180');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('179','Tour histórico por Praga','4','220');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('180','Ruta de vinos en Mendoza','5','300');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('181','Tour por los fiordos de Milford Sound','4','280');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('182','Visita a las ruinas de Éfeso','3','200');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('183','Tour por el Parque Nacional de Iguazú','4','300');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('184','Exploración del Valle de los Reyes','5','350');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('185','Ruta de senderismo en el Mont Blanc','7','600');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('186','Paseo por el Puente Golden Gate','2','100');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('187','Visita a las islas Faroe','6','500');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('188','Ruta por los monasterios de Georgia','4','180');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('189','Tour por las playas de Seychelles','5','700');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('190','Exploración de las selvas de Borneo','6','400');
Insert into ADMIN01.DIM_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('191','Ruta por los campos de lavanda en Provenza','3','150');
REM INSERTING into ADMIN01.DIM_VUELOS
SET DEFINE OFF;
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('1','Delta Airlines','New York','Los Angeles',to_date('20/12/24','DD/MM/RR'),to_date('20/12/24','DD/MM/RR'),'350,5');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('2','American Airlines','Miami','Chicago',to_date('21/12/24','DD/MM/RR'),to_date('21/12/24','DD/MM/RR'),'200,75');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('3','United Airlines','Houston','Denver',to_date('22/12/24','DD/MM/RR'),to_date('22/12/24','DD/MM/RR'),'180,3');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('4','Southwest Airlines','San Francisco','Seattle',to_date('23/12/24','DD/MM/RR'),to_date('23/12/24','DD/MM/RR'),'120,9');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('5','JetBlue','Boston','Orlando',to_date('24/12/24','DD/MM/RR'),to_date('24/12/24','DD/MM/RR'),'250,6');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('6','Alaska Airlines','Portland','Anchorage',to_date('25/12/24','DD/MM/RR'),to_date('25/12/24','DD/MM/RR'),'400');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('7','Spirit Airlines','Dallas','Atlanta',to_date('26/12/24','DD/MM/RR'),to_date('26/12/24','DD/MM/RR'),'99,99');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('8','Frontier Airlines','Phoenix','Las Vegas',to_date('27/12/24','DD/MM/RR'),to_date('27/12/24','DD/MM/RR'),'80');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('9','Hawaiian Airlines','Honolulu','Maui',to_date('28/12/24','DD/MM/RR'),to_date('28/12/24','DD/MM/RR'),'150,5');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('10','Allegiant Air','Tampa','Nashville',to_date('29/12/24','DD/MM/RR'),to_date('29/12/24','DD/MM/RR'),'120,75');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('11','Volaris','Ciudad de México','Cancún',to_date('30/12/24','DD/MM/RR'),to_date('30/12/24','DD/MM/RR'),'180,5');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('12','AeroMéxico','Guadalajara','Tijuana',to_date('31/12/24','DD/MM/RR'),to_date('31/12/24','DD/MM/RR'),'210,99');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('13','Interjet','Monterrey','Hermosillo',to_date('19/12/24','DD/MM/RR'),to_date('19/12/24','DD/MM/RR'),'130,5');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('14','Delta Airlines','Atlanta','Miami',to_date('20/12/24','DD/MM/RR'),to_date('20/12/24','DD/MM/RR'),'170,25');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('15','United Airlines','San Diego','San Jose',to_date('18/12/24','DD/MM/RR'),to_date('18/12/24','DD/MM/RR'),'160');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('16','LATAM Airlines','Lima','Bogotá',to_date('01/01/25','DD/MM/RR'),to_date('01/01/25','DD/MM/RR'),'300,5');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('17','Copa Airlines','Panamá','San José',to_date('02/01/25','DD/MM/RR'),to_date('02/01/25','DD/MM/RR'),'220');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('18','Iberia','Madrid','Barcelona',to_date('03/01/25','DD/MM/RR'),to_date('03/01/25','DD/MM/RR'),'150,75');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('19','Air France','París','Roma',to_date('04/01/25','DD/MM/RR'),to_date('04/01/25','DD/MM/RR'),'260,4');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('20','Lufthansa','Berlín','Munich',to_date('05/01/25','DD/MM/RR'),to_date('05/01/25','DD/MM/RR'),'180,1');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('21','British Airways','Londres','Dublín',to_date('06/01/25','DD/MM/RR'),to_date('06/01/25','DD/MM/RR'),'170');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('22','Emirates','Dubái','Singapur',to_date('07/01/25','DD/MM/RR'),to_date('07/01/25','DD/MM/RR'),'750,5');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('23','Qatar Airways','Doha','Bangkok',to_date('08/01/25','DD/MM/RR'),to_date('08/01/25','DD/MM/RR'),'680,75');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('24','Avianca','Bogotá','Medellín',to_date('09/01/25','DD/MM/RR'),to_date('09/01/25','DD/MM/RR'),'100');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('25','LATAM Airlines','Santiago','Lima',to_date('10/01/25','DD/MM/RR'),to_date('10/01/25','DD/MM/RR'),'200');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('26','Copa Airlines','Ciudad de Panamá','Cancún',to_date('11/01/25','DD/MM/RR'),to_date('11/01/25','DD/MM/RR'),'300');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('27','Delta Airlines','New York','Miami',to_date('12/01/25','DD/MM/RR'),to_date('12/01/25','DD/MM/RR'),'150,5');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('28','American Airlines','Chicago','Dallas',to_date('13/01/25','DD/MM/RR'),to_date('13/01/25','DD/MM/RR'),'120');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('29','United Airlines','Los Angeles','Seattle',to_date('14/01/25','DD/MM/RR'),to_date('14/01/25','DD/MM/RR'),'200');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('30','Alaska Airlines','Anchorage','Fairbanks',to_date('15/01/25','DD/MM/RR'),to_date('15/01/25','DD/MM/RR'),'300');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('31','JetBlue','Boston','Newark',to_date('16/01/25','DD/MM/RR'),to_date('16/01/25','DD/MM/RR'),'100,5');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('32','Volaris','Guadalajara','Ciudad de México',to_date('17/01/25','DD/MM/RR'),to_date('17/01/25','DD/MM/RR'),'110,75');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('33','AeroMéxico','Monterrey','Cancún',to_date('18/01/25','DD/MM/RR'),to_date('18/01/25','DD/MM/RR'),'250');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('34','Southwest Airlines','San Diego','Las Vegas',to_date('19/01/25','DD/MM/RR'),to_date('19/01/25','DD/MM/RR'),'90');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('35','Spirit Airlines','Dallas','Orlando',to_date('20/01/25','DD/MM/RR'),to_date('20/01/25','DD/MM/RR'),'80');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('36','Frontier Airlines','Atlanta','Tampa',to_date('21/01/25','DD/MM/RR'),to_date('21/01/25','DD/MM/RR'),'70');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('37','Hawaiian Airlines','Honolulu','Kona',to_date('22/01/25','DD/MM/RR'),to_date('22/01/25','DD/MM/RR'),'200');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('38','Allegiant Air','Tampa','Charlotte',to_date('23/01/25','DD/MM/RR'),to_date('23/01/25','DD/MM/RR'),'180');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('39','Emirates','Dubái','Melbourne',to_date('24/01/25','DD/MM/RR'),to_date('24/01/25','DD/MM/RR'),'900');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('40','Qatar Airways','Doha','Manila',to_date('25/01/25','DD/MM/RR'),to_date('25/01/25','DD/MM/RR'),'850');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('41','Iberia','Madrid','Lisboa',to_date('26/01/25','DD/MM/RR'),to_date('26/01/25','DD/MM/RR'),'180');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('42','Air France','París','Amsterdam',to_date('27/01/25','DD/MM/RR'),to_date('27/01/25','DD/MM/RR'),'200');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('43','Lufthansa','Frankfurt','Vienna',to_date('28/01/25','DD/MM/RR'),to_date('28/01/25','DD/MM/RR'),'220');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('44','British Airways','Londres','Nueva York',to_date('01/02/25','DD/MM/RR'),to_date('01/02/25','DD/MM/RR'),'750');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('45','Air Canada','Toronto','Vancouver',to_date('02/02/25','DD/MM/RR'),to_date('02/02/25','DD/MM/RR'),'400');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('46','KLM','Amsterdam','Tokio',to_date('03/02/25','DD/MM/RR'),to_date('04/02/25','DD/MM/RR'),'980');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('47','Air Asia','Bangkok','Singapur',to_date('04/02/25','DD/MM/RR'),to_date('04/02/25','DD/MM/RR'),'120');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('48','Qantas','Sídney','Auckland',to_date('05/02/25','DD/MM/RR'),to_date('05/02/25','DD/MM/RR'),'310');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('49','Lufthansa','Berlín','Estocolmo',to_date('06/02/25','DD/MM/RR'),to_date('06/02/25','DD/MM/RR'),'240');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('50','AeroMéxico','Ciudad de México','Tijuana',to_date('07/02/25','DD/MM/RR'),to_date('07/02/25','DD/MM/RR'),'230');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('51','Volaris','Ciudad de México','Mérida',to_date('08/02/25','DD/MM/RR'),to_date('08/02/25','DD/MM/RR'),'150');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('52','Delta Airlines','Los Ángeles','Atlanta',to_date('09/02/25','DD/MM/RR'),to_date('09/02/25','DD/MM/RR'),'320');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('53','Southwest Airlines','Houston','Phoenix',to_date('10/02/25','DD/MM/RR'),to_date('10/02/25','DD/MM/RR'),'170');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('54','United Airlines','Denver','Salt Lake City',to_date('11/02/25','DD/MM/RR'),to_date('11/02/25','DD/MM/RR'),'180');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('55','Alaska Airlines','Portland','Las Vegas',to_date('12/02/25','DD/MM/RR'),to_date('12/02/25','DD/MM/RR'),'190');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('56','Spirit Airlines','Miami','Charlotte',to_date('13/02/25','DD/MM/RR'),to_date('13/02/25','DD/MM/RR'),'110');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('57','Avianca','Medellín','Quito',to_date('14/02/25','DD/MM/RR'),to_date('14/02/25','DD/MM/RR'),'210');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('58','LATAM Airlines','Buenos Aires','Santiago',to_date('15/02/25','DD/MM/RR'),to_date('15/02/25','DD/MM/RR'),'350');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('59','Copa Airlines','Panamá','Lima',to_date('16/02/25','DD/MM/RR'),to_date('16/02/25','DD/MM/RR'),'400');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('60','JetBlue','Nueva York','Orlando',to_date('17/02/25','DD/MM/RR'),to_date('17/02/25','DD/MM/RR'),'140');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('61','British Airways','Londres','Barcelona',to_date('18/02/25','DD/MM/RR'),to_date('18/02/25','DD/MM/RR'),'300');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('62','Air France','París','Roma',to_date('19/02/25','DD/MM/RR'),to_date('19/02/25','DD/MM/RR'),'280');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('63','KLM','Amsterdam','Madrid',to_date('20/02/25','DD/MM/RR'),to_date('20/02/25','DD/MM/RR'),'310');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('64','Qatar Airways','Doha','Dubái',to_date('21/02/25','DD/MM/RR'),to_date('21/02/25','DD/MM/RR'),'410');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('65','Qantas','Melbourne','Brisbane',to_date('22/02/25','DD/MM/RR'),to_date('22/02/25','DD/MM/RR'),'240');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('66','Emirates','Dubái','Ciudad del Cabo',to_date('23/02/25','DD/MM/RR'),to_date('23/02/25','DD/MM/RR'),'780');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('67','American Airlines','Dallas','San Francisco',to_date('24/02/25','DD/MM/RR'),to_date('24/02/25','DD/MM/RR'),'390');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('68','LATAM Airlines','Lima','Bogotá',to_date('25/02/25','DD/MM/RR'),to_date('25/02/25','DD/MM/RR'),'320');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('69','Volaris','Tijuana','Monterrey',to_date('26/02/25','DD/MM/RR'),to_date('26/02/25','DD/MM/RR'),'270');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('70','Hawaiian Airlines','Honolulu','Maui',to_date('27/02/25','DD/MM/RR'),to_date('27/02/25','DD/MM/RR'),'190');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('71','Turkish Airlines','Estambul','Atenas',to_date('01/02/25','DD/MM/RR'),to_date('01/02/25','DD/MM/RR'),'250');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('72','KLM','Amsterdam','Copenhague',to_date('02/02/25','DD/MM/RR'),to_date('02/02/25','DD/MM/RR'),'220');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('73','Aeroflot','Moscú','San Petersburgo',to_date('03/02/25','DD/MM/RR'),to_date('03/02/25','DD/MM/RR'),'150');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('74','British Airways','Londres','Edimburgo',to_date('04/02/25','DD/MM/RR'),to_date('04/02/25','DD/MM/RR'),'180');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('75','Swiss Air','Zúrich','Ginebra',to_date('05/02/25','DD/MM/RR'),to_date('05/02/25','DD/MM/RR'),'170');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('76','Scandinavian Airlines','Estocolmo','Oslo',to_date('06/02/25','DD/MM/RR'),to_date('06/02/25','DD/MM/RR'),'160');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('77','Air India','Nueva Delhi','Bombay',to_date('07/02/25','DD/MM/RR'),to_date('07/02/25','DD/MM/RR'),'100');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('78','Japan Airlines','Tokio','Osaka',to_date('08/02/25','DD/MM/RR'),to_date('08/02/25','DD/MM/RR'),'120');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('79','Cathay Pacific','Hong Kong','Singapur',to_date('09/02/25','DD/MM/RR'),to_date('09/02/25','DD/MM/RR'),'300');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('80','China Southern','Pekín','Shanghái',to_date('10/02/25','DD/MM/RR'),to_date('10/02/25','DD/MM/RR'),'220');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('81','Qantas','Sídney','Brisbane',to_date('11/02/25','DD/MM/RR'),to_date('11/02/25','DD/MM/RR'),'150');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('82','Air New Zealand','Auckland','Wellington',to_date('12/02/25','DD/MM/RR'),to_date('12/02/25','DD/MM/RR'),'130');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('83','Thai Airways','Bangkok','Phuket',to_date('13/02/25','DD/MM/RR'),to_date('13/02/25','DD/MM/RR'),'110');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('84','Singapore Airlines','Singapur','Kuala Lumpur',to_date('14/02/25','DD/MM/RR'),to_date('14/02/25','DD/MM/RR'),'90');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('85','Virgin Atlantic','Londres','Nueva York',to_date('15/02/25','DD/MM/RR'),to_date('15/02/25','DD/MM/RR'),'450');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('86','Etihad Airways','Abu Dhabi','El Cairo',to_date('16/02/25','DD/MM/RR'),to_date('16/02/25','DD/MM/RR'),'350');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('87','Ethiopian Airlines','Addis Ababa','Nairobi',to_date('17/02/25','DD/MM/RR'),to_date('17/02/25','DD/MM/RR'),'200');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('88','South African Airways','Johannesburgo','Ciudad del Cabo',to_date('18/02/25','DD/MM/RR'),to_date('18/02/25','DD/MM/RR'),'180');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('89','Gol Linhas Aéreas','Río de Janeiro','São Paulo',to_date('19/02/25','DD/MM/RR'),to_date('19/02/25','DD/MM/RR'),'150');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('90','Azul Airlines','Belo Horizonte','Brasilia',to_date('20/02/25','DD/MM/RR'),to_date('20/02/25','DD/MM/RR'),'120');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('91','Air Canada','Toronto','Vancouver',to_date('21/02/25','DD/MM/RR'),to_date('21/02/25','DD/MM/RR'),'350');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('92','WestJet','Calgary','Edmonton',to_date('22/02/25','DD/MM/RR'),to_date('22/02/25','DD/MM/RR'),'150');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('93','Alitalia','Roma','Milán',to_date('23/02/25','DD/MM/RR'),to_date('23/02/25','DD/MM/RR'),'200');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('94','Austrian Airlines','Viena','Praga',to_date('24/02/25','DD/MM/RR'),to_date('24/02/25','DD/MM/RR'),'180');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('95','Tap Air Portugal','Lisboa','Madrid',to_date('25/02/25','DD/MM/RR'),to_date('25/02/25','DD/MM/RR'),'220');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('96','Air Europa','Barcelona','Valencia',to_date('26/02/25','DD/MM/RR'),to_date('26/02/25','DD/MM/RR'),'90');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('97','Vueling','Sevilla','Bilbao',to_date('27/02/25','DD/MM/RR'),to_date('27/02/25','DD/MM/RR'),'110');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('98','Ryanair','Dublín','Londres',to_date('28/02/25','DD/MM/RR'),to_date('28/02/25','DD/MM/RR'),'70');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('99','EasyJet','Londres','Berlín',to_date('01/03/25','DD/MM/RR'),to_date('01/03/25','DD/MM/RR'),'100');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('100','Norwegian Air','Oslo','Reykjavik',to_date('02/03/25','DD/MM/RR'),to_date('02/03/25','DD/MM/RR'),'150');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('101','Finnair','Helsinki','Estocolmo',to_date('03/03/25','DD/MM/RR'),to_date('03/03/25','DD/MM/RR'),'130');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('102','LOT Polish Airlines','Varsovia','Bucarest',to_date('04/03/25','DD/MM/RR'),to_date('04/03/25','DD/MM/RR'),'200');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('103','Brussels Airlines','Bruselas','Ámsterdam',to_date('05/03/25','DD/MM/RR'),to_date('05/03/25','DD/MM/RR'),'140');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('104','Aeroméxico','Ciudad de México','Los Ángeles',to_date('06/03/25','DD/MM/RR'),to_date('06/03/25','DD/MM/RR'),'400');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('105','LATAM Airlines','Bogotá','Santiago',to_date('07/03/25','DD/MM/RR'),to_date('07/03/25','DD/MM/RR'),'350');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('106','Iberia','Madrid','Barcelona',to_date('08/03/25','DD/MM/RR'),to_date('08/03/25','DD/MM/RR'),'180');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('107','Air Canada','Montreal','Toronto',to_date('09/03/25','DD/MM/RR'),to_date('09/03/25','DD/MM/RR'),'200');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('108','Delta Airlines','Atlanta','Chicago',to_date('10/03/25','DD/MM/RR'),to_date('10/03/25','DD/MM/RR'),'210');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('109','United Airlines','San Francisco','Denver',to_date('11/03/25','DD/MM/RR'),to_date('11/03/25','DD/MM/RR'),'230');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('110','American Airlines','Dallas','Las Vegas',to_date('12/03/25','DD/MM/RR'),to_date('12/03/25','DD/MM/RR'),'190');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('111','JetBlue','Orlando','New York',to_date('13/03/25','DD/MM/RR'),to_date('13/03/25','DD/MM/RR'),'170');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('112','Spirit Airlines','Fort Lauderdale','San Juan',to_date('14/03/25','DD/MM/RR'),to_date('14/03/25','DD/MM/RR'),'120');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('113','Volaris','Tijuana','Ciudad de México',to_date('15/03/25','DD/MM/RR'),to_date('15/03/25','DD/MM/RR'),'150');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('114','Copa Airlines','Ciudad de Panamá','Bogotá',to_date('16/03/25','DD/MM/RR'),to_date('16/03/25','DD/MM/RR'),'180');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('115','Qantas','Melbourne','Auckland',to_date('17/03/25','DD/MM/RR'),to_date('17/03/25','DD/MM/RR'),'350');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('116','Air France','París','Roma',to_date('18/03/25','DD/MM/RR'),to_date('18/03/25','DD/MM/RR'),'300');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('117','Lufthansa','Múnich','Viena',to_date('19/03/25','DD/MM/RR'),to_date('19/03/25','DD/MM/RR'),'200');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('118','Swiss Air','Ginebra','Zúrich',to_date('20/03/25','DD/MM/RR'),to_date('20/03/25','DD/MM/RR'),'150');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('119','Turkish Airlines','Estambul','Dubái',to_date('21/03/25','DD/MM/RR'),to_date('21/03/25','DD/MM/RR'),'400');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('120','Qatar Airways','Doha','Londres',to_date('22/03/25','DD/MM/RR'),to_date('22/03/25','DD/MM/RR'),'450');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('121','Etihad Airways','Abu Dhabi','París',to_date('23/03/25','DD/MM/RR'),to_date('23/03/25','DD/MM/RR'),'420');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('122','Vueling','Sevilla','Bilbao',to_date('27/02/25','DD/MM/RR'),to_date('27/02/25','DD/MM/RR'),'110');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('123','Ryanair','Dublín','Londres',to_date('28/02/25','DD/MM/RR'),to_date('28/02/25','DD/MM/RR'),'70');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('124','EasyJet','Londres','Berlín',to_date('01/03/25','DD/MM/RR'),to_date('01/03/25','DD/MM/RR'),'100');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('125','Norwegian Air','Oslo','Reykjavik',to_date('02/03/25','DD/MM/RR'),to_date('02/03/25','DD/MM/RR'),'150');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('126','Finnair','Helsinki','Estocolmo',to_date('03/03/25','DD/MM/RR'),to_date('03/03/25','DD/MM/RR'),'130');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('127','LOT Polish Airlines','Varsovia','Bucarest',to_date('04/03/25','DD/MM/RR'),to_date('04/03/25','DD/MM/RR'),'200');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('128','Brussels Airlines','Bruselas','Ámsterdam',to_date('05/03/25','DD/MM/RR'),to_date('05/03/25','DD/MM/RR'),'140');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('129','Aeroméxico','Ciudad de México','Los Ángeles',to_date('06/03/25','DD/MM/RR'),to_date('06/03/25','DD/MM/RR'),'400');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('130','LATAM Airlines','Bogotá','Santiago',to_date('07/03/25','DD/MM/RR'),to_date('07/03/25','DD/MM/RR'),'350');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('131','Iberia','Madrid','Barcelona',to_date('08/03/25','DD/MM/RR'),to_date('08/03/25','DD/MM/RR'),'180');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('132','Air Canada','Montreal','Toronto',to_date('09/03/25','DD/MM/RR'),to_date('09/03/25','DD/MM/RR'),'200');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('133','Delta Airlines','Atlanta','Chicago',to_date('10/03/25','DD/MM/RR'),to_date('10/03/25','DD/MM/RR'),'210');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('134','United Airlines','San Francisco','Denver',to_date('11/03/25','DD/MM/RR'),to_date('11/03/25','DD/MM/RR'),'230');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('135','American Airlines','Dallas','Las Vegas',to_date('12/03/25','DD/MM/RR'),to_date('12/03/25','DD/MM/RR'),'190');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('136','JetBlue','Orlando','New York',to_date('13/03/25','DD/MM/RR'),to_date('13/03/25','DD/MM/RR'),'170');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('137','Spirit Airlines','Fort Lauderdale','San Juan',to_date('14/03/25','DD/MM/RR'),to_date('14/03/25','DD/MM/RR'),'120');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('138','Volaris','Tijuana','Ciudad de México',to_date('15/03/25','DD/MM/RR'),to_date('15/03/25','DD/MM/RR'),'150');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('139','Copa Airlines','Ciudad de Panamá','Bogotá',to_date('16/03/25','DD/MM/RR'),to_date('16/03/25','DD/MM/RR'),'180');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('140','Qantas','Melbourne','Auckland',to_date('17/03/25','DD/MM/RR'),to_date('17/03/25','DD/MM/RR'),'350');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('141','Air France','París','Roma',to_date('18/03/25','DD/MM/RR'),to_date('18/03/25','DD/MM/RR'),'300');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('142','Lufthansa','Múnich','Viena',to_date('19/03/25','DD/MM/RR'),to_date('19/03/25','DD/MM/RR'),'200');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('143','Swiss Air','Ginebra','Zúrich',to_date('20/03/25','DD/MM/RR'),to_date('20/03/25','DD/MM/RR'),'150');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('144','Turkish Airlines','Estambul','Dubái',to_date('21/03/25','DD/MM/RR'),to_date('21/03/25','DD/MM/RR'),'400');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('145','Qatar Airways','Doha','Londres',to_date('22/03/25','DD/MM/RR'),to_date('22/03/25','DD/MM/RR'),'450');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('146','Etihad Airways','Abu Dhabi','París',to_date('23/03/25','DD/MM/RR'),to_date('23/03/25','DD/MM/RR'),'420');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('147','LATAM Airlines','Lima','Bogotá',to_date('24/03/25','DD/MM/RR'),to_date('24/03/25','DD/MM/RR'),'320');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('148','Aeroméxico','Cancún','Ciudad de México',to_date('25/03/25','DD/MM/RR'),to_date('25/03/25','DD/MM/RR'),'250');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('149','Copa Airlines','San José','Ciudad de Panamá',to_date('26/03/25','DD/MM/RR'),to_date('26/03/25','DD/MM/RR'),'200');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('150','Volaris','Guadalajara','Tijuana',to_date('27/03/25','DD/MM/RR'),to_date('27/03/25','DD/MM/RR'),'180');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('151','Delta Airlines','Nueva York','Miami',to_date('28/03/25','DD/MM/RR'),to_date('28/03/25','DD/MM/RR'),'280');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('152','American Airlines','Dallas','Denver',to_date('29/03/25','DD/MM/RR'),to_date('29/03/25','DD/MM/RR'),'230');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('153','Spirit Airlines','Orlando','Atlanta',to_date('30/03/25','DD/MM/RR'),to_date('30/03/25','DD/MM/RR'),'140');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('154','Air Canada','Toronto','Calgary',to_date('31/03/25','DD/MM/RR'),to_date('31/03/25','DD/MM/RR'),'270');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('155','Air France','París','Múnich',to_date('01/04/25','DD/MM/RR'),to_date('01/04/25','DD/MM/RR'),'310');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('156','Lufthansa','Berlín','Madrid',to_date('02/04/25','DD/MM/RR'),to_date('02/04/25','DD/MM/RR'),'340');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('157','Ryanair','Roma','Atenas',to_date('03/04/25','DD/MM/RR'),to_date('03/04/25','DD/MM/RR'),'190');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('158','EasyJet','Londres','Ámsterdam',to_date('04/04/25','DD/MM/RR'),to_date('04/04/25','DD/MM/RR'),'150');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('159','Swiss Air','Zúrich','Venecia',to_date('05/04/25','DD/MM/RR'),to_date('05/04/25','DD/MM/RR'),'210');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('160','Qatar Airways','Doha','Sídney',to_date('06/04/25','DD/MM/RR'),to_date('08/04/25','DD/MM/RR'),'850');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('161','Turkish Airlines','Estambul','París',to_date('07/04/25','DD/MM/RR'),to_date('07/04/25','DD/MM/RR'),'430');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('162','Emirates','Dubái','Tokio',to_date('08/04/25','DD/MM/RR'),to_date('09/04/25','DD/MM/RR'),'920');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('163','Japan Airlines','Tokio','Seúl',to_date('09/04/25','DD/MM/RR'),to_date('09/04/25','DD/MM/RR'),'280');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('164','ANA','Osaka','Hong Kong',to_date('10/04/25','DD/MM/RR'),to_date('10/04/25','DD/MM/RR'),'600');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('165','China Southern','Pekín','Bangkok',to_date('11/04/25','DD/MM/RR'),to_date('11/04/25','DD/MM/RR'),'520');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('166','Singapore Airlines','Singapur','Melbourne',to_date('12/04/25','DD/MM/RR'),to_date('13/04/25','DD/MM/RR'),'700');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('167','Air India','Mumbai','Nueva Delhi',to_date('13/04/25','DD/MM/RR'),to_date('13/04/25','DD/MM/RR'),'180');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('168','Thai Airways','Bangkok','Phuket',to_date('14/04/25','DD/MM/RR'),to_date('14/04/25','DD/MM/RR'),'160');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('169','South African Airways','Johannesburgo','Nairobi',to_date('15/04/25','DD/MM/RR'),to_date('15/04/25','DD/MM/RR'),'480');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('170','Ethiopian Airlines','Addis Ababa','Cairo',to_date('16/04/25','DD/MM/RR'),to_date('16/04/25','DD/MM/RR'),'500');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('171','Gol Linhas Aéreas','São Paulo','Buenos Aires',to_date('17/04/25','DD/MM/RR'),to_date('17/04/25','DD/MM/RR'),'300');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('172','Azul Airlines','Río de Janeiro','Lima',to_date('18/04/25','DD/MM/RR'),to_date('18/04/25','DD/MM/RR'),'350');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('173','Qantas','Brisbane','Auckland',to_date('19/04/25','DD/MM/RR'),to_date('19/04/25','DD/MM/RR'),'320');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('174','Alitalia','Milán','Atenas',to_date('20/04/25','DD/MM/RR'),to_date('20/04/25','DD/MM/RR'),'270');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('175','Iberia','Lisboa','Valencia',to_date('21/04/25','DD/MM/RR'),to_date('21/04/25','DD/MM/RR'),'190');
Insert into ADMIN01.DIM_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('176','Air Europa','Barcelona','Palma de Mallorca',to_date('22/04/25','DD/MM/RR'),to_date('22/04/25','DD/MM/RR'),'140');
REM INSERTING into ADMIN01.TBL_CLIENTES
SET DEFINE OFF;
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('1','Juan','Pérez','juan.perez@example.com','123456789','Calle 1, Ciudad A');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('2','Maria','Gonzalez','maria.gonzalez@example.com','987654321','Calle 2, Ciudad B');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('3','Carlos','Lopez','carlos.lopez@example.com','111222333','Calle 3, Ciudad C');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('4','Ana','Martinez','ana.martinez@example.com','444555666','Calle 4, Ciudad D');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('5','Pedro','Ramirez','pedro.ramirez@example.com','777888999','Calle 5, Ciudad E');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('6','Laura','Torres','laura.torres@example.com','101010101','Calle 6, Ciudad F');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('7','Luis','Diaz','luis.diaz@example.com','202020202','Calle 7, Ciudad G');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('8','Sofia','Morales','sofia.morales@example.com','303030303','Calle 8, Ciudad H');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('9','Jorge','Vargas','jorge.vargas@example.com','404040404','Calle 9, Ciudad I');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('10','Isabel','Gutierrez','isabel.gutierrez@example.com','505050505','Calle 10, Ciudad J');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('11','Diego','Herrera','diego.herrera@example.com','606060606','Calle 11, Ciudad K');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('12','Camila','Rojas','camila.rojas@example.com','707070707','Calle 12, Ciudad L');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('13','Fernando','Mendoza','fernando.mendoza@example.com','808080808','Calle 13, Ciudad M');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('14','Valeria','Navarro','valeria.navarro@example.com','909090909','Calle 14, Ciudad N');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('15','Oscar','Cruz','oscar.cruz@example.com','111333555','Calle 15, Ciudad O');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('16','Carla','Jimenez','carla.jimenez@example.com','222444666','Calle 16, Ciudad P');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('17','Martin','Flores','martin.flores@example.com','333555777','Calle 17, Ciudad Q');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('18','Paula','Sanchez','paula.sanchez@example.com','444666888','Calle 18, Ciudad R');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('19','Hugo','Pena','hugo.pena@example.com','555777999','Calle 19, Ciudad S');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('20','Lucia','Aguilar','lucia.aguilar@example.com','666888000','Calle 20, Ciudad T');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('21','Sebastian','Rios','sebastian.rios@example.com','700700700','Calle 21, Ciudad U');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('22','Andrea','Ortiz','andrea.ortiz@example.com','800800800','Calle 22, Ciudad V');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('23','Eduardo','Reyes','eduardo.reyes@example.com','900900900','Calle 23, Ciudad W');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('24','Nadia','Carrillo','nadia.carrillo@example.com','123123123','Calle 24, Ciudad X');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('25','Victor','Lara','victor.lara@example.com','234234234','Calle 25, Ciudad Y');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('26','Monica','Fuentes','monica.fuentes@example.com','345345345','Calle 26, Ciudad Z');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('27','Ricardo','Vega','ricardo.vega@example.com','456456456','Calle 27, Ciudad AA');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('28','Elena','Nunez','elena.nunez@example.com','567567567','Calle 28, Ciudad BB');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('29','Adrian','Guerrero','adrian.guerrero@example.com','678678678','Calle 29, Ciudad CC');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('30','Patricia','Maldonado','patricia.maldonado@example.com','789789789','Calle 30, Ciudad DD');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('31','Felipe','Castro','felipe.castro@example.com','890890890','Calle 31, Ciudad EE');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('32','Daniela','Silva','daniela.silva@example.com','101101101','Calle 32, Ciudad FF');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('33','Hector','Cabrera','hector.cabrera@example.com','202202202','Calle 33, Ciudad GG');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('34','Clara','Rivera','clara.rivera@example.com','303303303','Calle 34, Ciudad HH');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('35','Marcos','Salinas','marcos.salinas@example.com','404404404','Calle 35, Ciudad II');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('36','Alicia','Montes','alicia.montes@example.com','505505505','Calle 36, Ciudad JJ');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('37','Tomás','Ibáñez','tomas.ibanez@example.com','606606606','Calle 37, Ciudad KK');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('38','Vanesa','Ruiz','vanesa.ruiz@example.com','707707707','Calle 38, Ciudad LL');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('39','Julian','Ponce','julian.ponce@example.com','808808808','Calle 39, Ciudad MM');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('40','Beatriz','Hidalgo','beatriz.hidalgo@example.com','909909909','Calle 40, Ciudad NN');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('41','Rodrigo','Acosta','rodrigo.acosta@example.com','111111111','Calle 41, Ciudad OO');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('42','Natalia','Esquivel','natalia.esquivel@example.com','222222222','Calle 42, Ciudad PP');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('43','Samuel','Beltran','samuel.beltran@example.com','333333333','Calle 43, Ciudad QQ');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('44','Adriana','León','adriana.leon@example.com','444444444','Calle 44, Ciudad RR');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('45','Javier','Mora','javier.mora@example.com','555555555','Calle 45, Ciudad SS');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('46','Liliana','Soto','liliana.soto@example.com','666666666','Calle 46, Ciudad TT');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('47','Rafael','Camacho','rafael.camacho@example.com','777777777','Calle 47, Ciudad UU');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('48','Claudia','Meza','claudia.meza@example.com','888888888','Calle 48, Ciudad VV');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('49','Pablo','Ramos','pablo.ramos@example.com','999999999','Calle 49, Ciudad WW');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('50','Luciana','Nieves','luciana.nieves@example.com','121212121','Calle 50, Ciudad XX');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('51','Gabriel','Suarez','gabriel.suarez@example.com','232323232','Calle 51, Ciudad YY');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('52','Monica','Cortes','monica.cortes@example.com','343434343','Calle 52, Ciudad ZZ');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('53','Ernesto','López','ernesto.lopez@example.com','454545454','Calle 53, Ciudad AAA');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('54','Elisa','Zamora','elisa.zamora@example.com','565656565','Calle 54, Ciudad BBB');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('55','Ivan','Palacios','ivan.palacios@example.com','676767676','Calle 55, Ciudad CCC');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('56','Patricia','Cervantes','patricia.cervantes@example.com','787878787','Calle 56, Ciudad DDD');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('57','Mariano','Solano','mariano.solano@example.com','898989898','Calle 57, Ciudad EEE');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('58','Renata','Arce','renata.arce@example.com','909090909','Calle 58, Ciudad FFF');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('59','Victor','Garza','victor.garza@example.com','101101101','Calle 59, Ciudad GGG');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('60','Lorena','Vera','lorena.vera@example.com','202202202','Calle 60, Ciudad HHH');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('61','Francisco','Juarez','francisco.juarez@example.com','303303303','Calle 61, Ciudad III');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('62','Ariana','Montoya','ariana.montoya@example.com','404404404','Calle 62, Ciudad JJJ');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('63','Hector','Barrios','hector.barrios@example.com','505505505','Calle 63, Ciudad KKK');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('64','Marina','Lemus','marina.lemus@example.com','606606606','Calle 64, Ciudad LLL');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('65','Agustin','Vargas','agustin.vargas@example.com','707707707','Calle 65, Ciudad MMM');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('66','Silvia','Montalvo','silvia.montalvo@example.com','808808808','Calle 66, Ciudad NNN');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('67','Julio','Arrieta','julio.arrieta@example.com','909909909','Calle 67, Ciudad OOO');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('68','Nataly','Pineda','nataly.pineda@example.com','121121121','Calle 68, Ciudad PPP');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('69','Emilio','Muñoz','emilio.munoz@example.com','232232232','Calle 69, Ciudad QQQ');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('70','Clara','Reyna','clara.reyna@example.com','343343343','Calle 70, Ciudad RRR');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('71','Antonio','Carrasco','antonio.carrasco@example.com','454454454','Calle 71, Ciudad SSS');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('72','Diana','Ortega','diana.ortega@example.com','565565565','Calle 72, Ciudad TTT');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('73','Ricardo','Santos','ricardo.santos@example.com','676676676','Calle 73, Ciudad UUU');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('74','Paula','Mejia','paula.mejia@example.com','787787787','Calle 74, Ciudad VVV');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('75','Luis','Moya','luis.moya@example.com','898898898','Calle 75, Ciudad WWW');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('76','Sara','Lara','sara.lara@example.com','909909909','Calle 76, Ciudad XXX');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('77','Joaquin','Pacheco','joaquin.pacheco@example.com','101010101','Calle 77, Ciudad YYY');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('78','Olivia','Serrano','olivia.serrano@example.com','202202202','Calle 78, Ciudad ZZZ');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('79','Mario','Dominguez','mario.dominguez@example.com','303303303','Calle 79, Ciudad AAAA');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('80','Andrea','Velasco','andrea.velasco@example.com','404404404','Calle 80, Ciudad BBBB');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('81','Diego','Paredes','diego.paredes@example.com','111222333','Calle 81, Ciudad AAA');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('82','Ana','Villalobos','ana.villalobos@example.com','222333444','Calle 82, Ciudad BBB');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('83','Carlos','Mendoza','carlos.mendoza@example.com','333444555','Calle 83, Ciudad CCC');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('84','Lucia','Salinas','lucia.salinas@example.com','444555666','Calle 84, Ciudad DDD');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('85','Fernando','Romero','fernando.romero@example.com','555666777','Calle 85, Ciudad EEE');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('86','Beatriz','Rojas','beatriz.rojas@example.com','666777888','Calle 86, Ciudad FFF');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('87','Manuel','Castillo','manuel.castillo@example.com','777888999','Calle 87, Ciudad GGG');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('88','Elena','Navarrete','elena.navarrete@example.com','888999000','Calle 88, Ciudad HHH');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('89','Roberto','Fuentes','roberto.fuentes@example.com','999000111','Calle 89, Ciudad III');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('90','Isabel','Martinez','isabel.martinez@example.com','000111222','Calle 90, Ciudad JJJ');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('91','Oscar','Jimenez','oscar.jimenez@example.com','111222333','Calle 91, Ciudad KKK');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('92','Valeria','Herrera','valeria.herrera@example.com','222333444','Calle 92, Ciudad LLL');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('93','Hugo','Ramirez','hugo.ramirez@example.com','333444555','Calle 93, Ciudad MMM');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('94','Camila','Vega','camila.vega@example.com','444555666','Calle 94, Ciudad NNN');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('95','Alejandro','Perez','alejandro.perez@example.com','555666777','Calle 95, Ciudad OOO');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('96','Laura','Ortiz','laura.ortiz@example.com','666777888','Calle 96, Ciudad PPP');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('97','Eduardo','Ruiz','eduardo.ruiz@example.com','777888999','Calle 97, Ciudad QQQ');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('98','Rosa','Gomez','rosa.gomez@example.com','888999000','Calle 98, Ciudad RRR');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('99','Martin','Nava','martin.nava@example.com','999000111','Calle 99, Ciudad SSS');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('100','Paola','Lopez','paola.lopez@example.com','000111222','Calle 100, Ciudad TTT');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('101','Julian','Pinto','julian.pinto@example.com','111222333','Calle 101, Ciudad UUU');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('102','Carmen','Aguilar','carmen.aguilar@example.com','222333444','Calle 102, Ciudad VVV');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('103','Raul','Sanchez','raul.sanchez@example.com','333444555','Calle 103, Ciudad WWW');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('104','Diana','Reyes','diana.reyes@example.com','444555666','Calle 104, Ciudad XXX');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('105','Sebastian','Alvarez','sebastian.alvarez@example.com','555666777','Calle 105, Ciudad YYY');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('106','Sofia','Dominguez','sofia.dominguez@example.com','666777888','Calle 106, Ciudad ZZZ');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('107','Jorge','Lara','jorge.lara@example.com','777888999','Calle 107, Ciudad AAAA');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('108','Carolina','Torres','carolina.torres@example.com','888999000','Calle 108, Ciudad BBBB');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('109','Alberto','Campos','alberto.campos@example.com','999000111','Calle 109, Ciudad CCCC');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('110','Mariana','Cabrera','mariana.cabrera@example.com','000111222','Calle 110, Ciudad DDDD');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('111','Antonio','Soto','antonio.soto@example.com','111222333','Calle 111, Ciudad EEEE');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('112','Andrea','Castro','andrea.castro@example.com','222333444','Calle 112, Ciudad FFFF');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('113','Victor','Morales','victor.morales@example.com','333444555','Calle 113, Ciudad GGGG');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('114','Esther','Lopez','esther.lopez@example.com','444555666','Calle 114, Ciudad HHHH');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('115','Luis','Hernandez','luis.hernandez@example.com','555666777','Calle 115, Ciudad IIII');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('116','Sara','Jimenez','sara.jimenez@example.com','666777888','Calle 116, Ciudad JJJJ');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('117','Gerardo','Vargas','gerardo.vargas@example.com','777888999','Calle 117, Ciudad KKKK');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('118','Luciana','Fernandez','luciana.fernandez@example.com','888999000','Calle 118, Ciudad LLLL');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('119','Ricardo','Perez','ricardo.perez@example.com','999000111','Calle 119, Ciudad MMMM');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('120','Fabiola','Ramos','fabiola.ramos@example.com','000111222','Calle 120, Ciudad NNNN');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('121','Adrian','Silva','adrian.silva@example.com','111222333','Calle 121, Ciudad AAAA');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('122','Nadia','Ortiz','nadia.ortiz@example.com','222333444','Calle 122, Ciudad BBBB');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('123','Rodrigo','Gomez','rodrigo.gomez@example.com','333444555','Calle 123, Ciudad CCCC');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('124','Patricia','Mendez','patricia.mendez@example.com','444555666','Calle 124, Ciudad DDDD');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('125','Victor','Torres','victor.torres@example.com','555666777','Calle 125, Ciudad EEEE');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('126','Andrea','Perez','andrea.perez@example.com','666777888','Calle 126, Ciudad FFFF');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('127','Marcos','Rojas','marcos.rojas@example.com','777888999','Calle 127, Ciudad GGGG');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('128','Elisa','Navarro','elisa.navarro@example.com','888999000','Calle 128, Ciudad HHHH');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('129','Hector','Vega','hector.vega@example.com','999000111','Calle 129, Ciudad IIII');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('130','Alejandra','Cruz','alejandra.cruz@example.com','000111222','Calle 130, Ciudad JJJJ');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('131','Mario','Salazar','mario.salazar@example.com','111222333','Calle 131, Ciudad KKKK');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('132','Gabriela','Ramirez','gabriela.ramirez@example.com','222333444','Calle 132, Ciudad LLLL');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('133','Javier','Reyes','javier.reyes@example.com','333444555','Calle 133, Ciudad MMMM');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('134','Paula','Dominguez','paula.dominguez@example.com','444555666','Calle 134, Ciudad NNNN');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('135','Felipe','Martinez','felipe.martinez@example.com','555666777','Calle 135, Ciudad OOOO');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('136','Diana','Aguilar','diana.aguilar@example.com','666777888','Calle 136, Ciudad PPPP');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('137','Juan','Lopez','juan.lopez@example.com','777888999','Calle 137, Ciudad QQQQ');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('138','Claudia','Jimenez','claudia.jimenez@example.com','888999000','Calle 138, Ciudad RRRR');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('139','Ricardo','Hernandez','ricardo.hernandez@example.com','999000111','Calle 139, Ciudad SSSS');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('140','Monica','Sanchez','monica.sanchez@example.com','000111222','Calle 140, Ciudad TTTT');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('141','Sergio','Campos','sergio.campos@example.com','111222333','Calle 141, Ciudad UUUU');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('142','Rocio','Vargas','rocio.vargas@example.com','222333444','Calle 142, Ciudad VVVV');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('143','Alfonso','Paredes','alfonso.paredes@example.com','333444555','Calle 143, Ciudad WWWW');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('144','Carla','Rojas','carla.rojas@example.com','444555666','Calle 144, Ciudad XXXX');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('145','Diego','Garcia','diego.garcia@example.com','555666777','Calle 145, Ciudad YYYY');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('146','Natalia','Salinas','natalia.salinas@example.com','666777888','Calle 146, Ciudad ZZZZ');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('147','Francisco','Perez','francisco.perez@example.com','777888999','Calle 147, Ciudad AAAA');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('148','Lorena','Nava','lorena.nava@example.com','888999000','Calle 148, Ciudad BBBB');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('149','Ernesto','Mora','ernesto.mora@example.com','999000111','Calle 149, Ciudad CCCC');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('150','Valentina','Ruiz','valentina.ruiz@example.com','000111222','Calle 150, Ciudad DDDD');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('151','Pedro','Lopez','pedro.lopez@example.com','111222333','Calle 151, Ciudad EEEE');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('152','Marina','Fuentes','marina.fuentes@example.com','222333444','Calle 152, Ciudad FFFF');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('153','Ignacio','Gomez','ignacio.gomez@example.com','333444555','Calle 153, Ciudad GGGG');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('154','Liliana','Torres','liliana.torres@example.com','444555666','Calle 154, Ciudad HHHH');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('155','Armando','Rojas','armando.rojas@example.com','555666777','Calle 155, Ciudad IIII');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('156','Isabela','Ramirez','isabela.ramirez@example.com','666777888','Calle 156, Ciudad JJJJ');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('157','Joaquin','Salazar','joaquin.salazar@example.com','777888999','Calle 157, Ciudad KKKK');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('158','Gloria','Reyes','gloria.reyes@example.com','888999000','Calle 158, Ciudad LLLL');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('159','Miguel','Dominguez','miguel.dominguez@example.com','999000111','Calle 159, Ciudad MMMM');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('160','Silvia','Pinto','silvia.pinto@example.com','000111222','Calle 160, Ciudad NNNN');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('161','Raul','Fernandez','raul.fernandez@example.com','111222333','Calle 161, Ciudad AAAA');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('162','Sofia','Lopez','sofia.lopez@example.com','222333444','Calle 162, Ciudad BBBB');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('163','Luis','Hernandez','luis.hernandez@example.com','333444555','Calle 163, Ciudad CCCC');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('164','Camila','Vega','camila.vega@example.com','444555666','Calle 164, Ciudad DDDD');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('165','Julian','Cruz','julian.cruz@example.com','555666777','Calle 165, Ciudad EEEE');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('166','Ana','Ramirez','ana.ramirez@example.com','666777888','Calle 166, Ciudad FFFF');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('167','Pablo','Martinez','pablo.martinez@example.com','777888999','Calle 167, Ciudad GGGG');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('168','Valeria','Rojas','valeria.rojas@example.com','888999000','Calle 168, Ciudad HHHH');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('169','Oscar','Navarro','oscar.navarro@example.com','999000111','Calle 169, Ciudad IIII');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('170','Carolina','Aguilar','carolina.aguilar@example.com','000111222','Calle 170, Ciudad JJJJ');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('171','Esteban','Perez','esteban.perez@example.com','111222333','Calle 171, Ciudad KKKK');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('172','Laura','Mendez','laura.mendez@example.com','222333444','Calle 172, Ciudad LLLL');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('173','Martin','Torres','martin.torres@example.com','333444555','Calle 173, Ciudad MMMM');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('174','Elena','Dominguez','elena.dominguez@example.com','444555666','Calle 174, Ciudad NNNN');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('175','Ruben','Reyes','ruben.reyes@example.com','555666777','Calle 175, Ciudad OOOO');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('176','Lucia','Vargas','lucia.vargas@example.com','666777888','Calle 176, Ciudad PPPP');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('177','Hugo','Garcia','hugo.garcia@example.com','777888999','Calle 177, Ciudad QQQQ');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('178','Cecilia','Ruiz','cecilia.ruiz@example.com','888999000','Calle 178, Ciudad RRRR');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('179','Diego','Salinas','diego.salinas@example.com','999000111','Calle 179, Ciudad SSSS');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('180','Paula','Nava','paula.nava@example.com','000111222','Calle 180, Ciudad TTTT');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('181','Fernando','Lopez','fernando.lopez@example.com','111222333','Calle 181, Ciudad UUUU');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('182','Natalia','Paredes','natalia.paredes@example.com','222333444','Calle 182, Ciudad VVVV');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('183','Jorge','Campos','jorge.campos@example.com','333444555','Calle 183, Ciudad WWWW');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('184','Mariana','Silva','mariana.silva@example.com','444555666','Calle 184, Ciudad XXXX');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('185','Roberto','Garcia','roberto.garcia@example.com','555666777','Calle 185, Ciudad YYYY');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('186','Isabel','Mora','isabel.mora@example.com','666777888','Calle 186, Ciudad ZZZZ');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('187','Antonio','Cruz','antonio.cruz@example.com','777888999','Calle 187, Ciudad AAAA');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('188','Claudia','Navarro','claudia.navarro@example.com','888999000','Calle 188, Ciudad BBBB');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('189','Rafael','Gomez','rafael.gomez@example.com','999000111','Calle 189, Ciudad CCCC');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('190','Eva','Hernandez','eva.hernandez@example.com','000111222','Calle 190, Ciudad DDDD');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('191','Sebastian','Reyes','sebastian.reyes@example.com','111222333','Calle 191, Ciudad EEEE');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('192','Luisa','Martinez','luisa.martinez@example.com','222333444','Calle 192, Ciudad FFFF');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('193','Alberto','Vega','alberto.vega@example.com','333444555','Calle 193, Ciudad GGGG');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('194','Rosa','Aguilar','rosa.aguilar@example.com','444555666','Calle 194, Ciudad HHHH');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('195','Mario','Dominguez','mario.dominguez@example.com','555666777','Calle 195, Ciudad IIII');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('196','Samantha','Mendez','samantha.mendez@example.com','666777888','Calle 196, Ciudad JJJJ');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('197','Andres','Pinto','andres.pinto@example.com','777888999','Calle 197, Ciudad KKKK');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('198','Carla','Salazar','carla.salazar@example.com','888999000','Calle 198, Ciudad LLLL');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('199','Gerardo','Ruiz','gerardo.ruiz@example.com','999000111','Calle 199, Ciudad MMMM');
Insert into ADMIN01.TBL_CLIENTES (ID_CLIENTE,NOMBRE,APELLIDO,EMAIL,TELEFONO,DIRECCION) values ('200','Veronica','Jimenez','veronica.jimenez@example.com','000111222','Calle 200, Ciudad NNNN');
REM INSERTING into ADMIN01.TBL_EMPLEADOS
SET DEFINE OFF;
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('1','Carlos','Ramirez','Piloto','555-1234','carlos.ramirez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('2','Ana','Gomez','Azafata','555-5678','ana.gomez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('3','Luis','Martinez','Desarrollador de Sistemas','555-9876','luis.martinez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('4','Maria','Lopez','Recepcionista','555-1357','maria.lopez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('5','Pedro','Hernandez','Mecánico de Aviación','555-2468','pedro.hernandez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('6','Laura','Perez','Directora de Marketing','555-3579','laura.perez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('7','Javier','Diaz','Piloto','555-4680','javier.diaz@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('8','Sofia','Garcia','Azafata','555-5791','sofia.garcia@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('9','Victor','Sanchez','Ingeniero de Aviones','555-6802','victor.sanchez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('10','Elena','Torres','Jefa de Atención al Cliente','555-7913','elena.torres@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('11','Ricardo','Jimenez','Cocinero de Aerolínea','555-8024','ricardo.jimenez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('12','Patricia','Ruiz','Diseñadora de Uniformes','555-9135','patricia.ruiz@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('13','Rafael','Moreno','Jefe de Mantenimiento','555-0246','rafael.moreno@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('14','Mariana','Vega','Gerente de Proyectos','555-1358','mariana.vega@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('15','Fernando','Romero','Técnico de Aviones','555-2469','fernando.romero@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('16','Isabel','Castillo','Analista de Rutas','555-3570','isabel.castillo@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('17','Luis','Fernandez','Asistente de Aeropuerto','555-4681','luis.fernandez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('18','Angela','Mendez','Coordinadora de Vuelo','555-5792','angela.mendez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('19','Oscar','Silva','Piloto','555-6803','oscar.silva@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('20','Cristina','Rios','Azafata','555-7914','cristina.rios@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('21','Sergio','Paredes','Controlador de Tráfico Aéreo','555-8025','sergio.paredes@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('22','Marta','Alvarez','Gerente de Finanzas','555-9136','marta.alvarez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('23','Carlos','Gonzalez','Asistente de Vuelo','555-0247','carlos.gonzalez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('24','Daniela','Serrano','Piloto','555-1359','daniela.serrano@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('25','Alberto','Rojas','Ingeniero de Aviones','555-2460','alberto.rojas@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('26','Jorge','Salazar','Jefe de Seguridad Aeroportuaria','555-3571','jorge.salazar@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('27','Susana','Campos','Gerente de Operaciones','555-4682','susana.campos@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('28','Francisco','Zuniga','Piloto','555-5793','francisco.zuniga@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('29','Vanessa','Pinto','Azafata','555-6804','vanessa.pinto@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('30','Martin','Castro','Coordinador de Logística','555-7915','martin.castro@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('31','Claudia','Guerrero','Gestor de Clientes','555-8026','claudia.guerrero@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('32','Joaquín','Cordero','Piloto','555-9137','joaquin.cordero@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('33','Eduardo','Muñoz','Director de Operaciones','555-0248','eduardo.munoz@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('34','Raquel','Blanco','Azafata','555-1350','raquel.blanco@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('35','Raul','Luna','Piloto','555-2461','raul.luna@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('36','Paula','Ruiz','Técnico de Mantenimiento','555-3572','paula.ruiz@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('37','Miguel','Vazquez','Coordinador de Vuelo','555-4683','miguel.vazquez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('38','Julia','Martinez','Jefa de Atención al Cliente','555-5794','julia.martinez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('39','Gustavo','Herrera','Piloto','555-6805','gustavo.herrera@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('40','Nuria','López','Azafata','555-7916','nuria.lopez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('41','Iván','Martinez','Piloto','555-1239','ivan.martinez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('42','Sandra','Vega','Azafata','555-1240','sandra.vega@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('43','Carlos','Rodriguez','Técnico de Mantenimiento','555-1241','carlos.rodriguez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('44','Martín','Fernandez','Desarrollador de Sistemas','555-1242','martin.fernandez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('45','Alicia','Ramirez','Azafata','555-1243','alicia.ramirez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('46','Julio','Alonso','Piloto','555-1244','julio.alonso@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('47','Marta','Gonzalez','Coordinadora de Vuelo','555-1245','marta.gonzalez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('48','Carlos','Pérez','Piloto','555-1246','carlos.perez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('49','Isabel','Díaz','Azafata','555-1247','isabel.diaz@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('50','Ricardo','Gonzalez','Mecánico de Aviación','555-1248','ricardo.gonzalez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('51','Paula','Silva','Azafata','555-1249','paula.silva@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('52','Sergio','Lopez','Piloto','555-1250','sergio.lopez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('53','Elena','Herrera','Jefa de Seguridad Aeroportuaria','555-1251','elena.herrera@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('54','Jorge','Moreno','Azafata','555-1252','jorge.moreno@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('55','Ana','Fernandez','Coordinadora de Vuelo','555-1253','ana.fernandez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('56','David','Sánchez','Piloto','555-1254','david.sanchez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('57','Claudia','García','Azafata','555-1255','claudia.garcia@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('58','Cristina','Rios','Ingeniero de Aviación','555-1256','cristina.rios@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('59','Andrés','Lozano','Piloto','555-1257','andres.lozano@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('60','Rafael','Morales','Azafata','555-1258','rafael.morales@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('61','Lucas','Gonzalez','Jefe de Mantenimiento','555-1259','lucas.gonzalez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('62','Lorena','Serrano','Piloto','555-1260','lorena.serrano@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('63','Raúl','Alvarez','Azafata','555-1261','raul.alvarez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('64','Daniel','Martínez','Jefe de Aeropuerto','555-1262','daniel.martinez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('65','María','Santos','Piloto','555-1263','maria.santos@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('66','Antonio','Lopez','Azafata','555-1264','antonio.lopez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('67','Verónica','Ramírez','Ingeniero de Aviación','555-1265','veronica.ramirez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('68','Carlos','Hernández','Piloto','555-1266','carlos.hernandez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('69','Laura','Martínez','Azafata','555-1267','laura.martinez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('70','David','García','Piloto','555-1268','david.garcia@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('71','Felipe','Sánchez','Coordinador de Aeropuerto','555-1269','felipe.sanchez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('72','Carmen','Pérez','Azafata','555-1270','carmen.perez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('73','Ricardo','Morales','Piloto','555-1271','ricardo.morales@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('74','Ana','González','Azafata','555-1272','ana.gonzalez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('75','José','Ramírez','Piloto','555-1273','jose.ramirez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('76','Laura','Salazar','Azafata','555-1274','laura.salazar@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('77','Esteban','García','Mecánico de Aviación','555-1275','esteban.garcia@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('78','María','Blanco','Técnico de Aviones','555-1276','maria.blanco@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('79','Carlos','Soto','Azafata','555-1277','carlos.soto@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('80','José','Lopez','Piloto','555-1278','jose.lopez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('81','Claudia','Jiménez','Azafata','555-1279','claudia.jimenez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('82','Ricardo','Pérez','Ingeniero de Aviación','555-1280','ricardo.perez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('83','Marta','Hernández','Azafata','555-1281','marta.hernandez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('84','Carlos','Rodríguez','Piloto','555-1282','carlos.rodriguez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('85','Beatriz','Alvarez','Azafata','555-1283','beatriz.alvarez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('86','Pedro','Sánchez','Coordinador de Vuelo','555-1284','pedro.sanchez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('87','Juan','González','Piloto','555-1285','juan.gonzalez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('88','Lorena','Martínez','Azafata','555-1286','lorena.martinez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('89','Sergio','Hernández','Piloto','555-1287','sergio.hernandez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('90','Patricia','López','Azafata','555-1288','patricia.lopez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('91','Alberto','Jiménez','Jefe de Mantenimiento','555-1289','alberto.jimenez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('92','Francisco','Pérez','Piloto','555-1290','francisco.perez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('93','Isabel','García','Azafata','555-1291','isabel.garcia@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('94','Juan','Santos','Piloto','555-1292','juan.santos@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('95','Raquel','Fernández','Azafata','555-1293','raquel.fernandez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('96','David','Lopez','Piloto','555-1294','david.lopez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('97','Laura','González','Azafata','555-1295','laura.gonzalez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('98','Antonio','Ramírez','Piloto','555-1296','antonio.ramirez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('99','Victoria','Pérez','Azafata','555-1297','victoria.perez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('100','Fernando','Vázquez','Piloto','555-1298','fernando.vazquez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('101','María','Serrano','Azafata','555-1299','maria.serrano@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('102','Carlos','Silva','Piloto','555-1300','carlos.silva@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('103','Raquel','Lopez','Azafata','555-1301','raquel.lopez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('104','Felipe','Martínez','Piloto','555-1302','felipe.martinez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('105','Eva','González','Azafata','555-1303','eva.gonzalez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('106','Daniel','Hernández','Piloto','555-1304','daniel.hernandez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('107','Cristina','Ramírez','Azafata','555-1305','cristina.ramirez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('108','José','Martínez','Piloto','555-1306','jose.martinez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('109','Luis','Pérez','Azafata','555-1307','luis.perez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('110','Antonio','Serrano','Piloto','555-1308','antonio.serrano@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('111','Juan','Vázquez','Azafata','555-1309','juan.vazquez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('112','María','Sánchez','Piloto','555-1310','maria.sanchez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('113','Adrián','Alvarez','Azafata','555-1311','adrian.alvarez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('114','Ana','Lopez','Piloto','555-1312','ana.lopez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('115','Rosa','García','Azafata','555-1313','rosa.garcia@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('116','Vicente','Fernández','Piloto','555-1314','vicente.fernandez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('117','Carlos','Mendoza','Piloto','555-1315','carlos.mendoza@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('118','Gabriela','Cordero','Azafata','555-1316','gabriela.cordero@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('119','Luis','Torres','Piloto','555-1317','luis.torres@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('120','Sandra','Hernández','Azafata','555-1318','sandra.hernandez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('121','Raúl','Sánchez','Piloto','555-1319','raul.sanchez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('122','Paola','González','Azafata','555-1320','paola.gonzalez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('123','Esteban','López','Piloto','555-1321','esteban.lopez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('124','María','Salazar','Azafata','555-1322','maria.salazar@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('125','Carlos','Rodríguez','Piloto','555-1323','carlos.rodriguez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('126','Silvia','Jiménez','Azafata','555-1324','silvia.jimenez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('127','Javier','Fernández','Piloto','555-1325','javier.fernandez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('128','Pablo','Morales','Azafata','555-1326','pablo.morales@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('129','Patricia','Serrano','Piloto','555-1327','patricia.serrano@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('130','Rafael','García','Azafata','555-1328','rafael.garcia@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('131','Isabel','Martínez','Piloto','555-1329','isabel.martinez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('132','José','Cordero','Azafata','555-1330','jose.cordero@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('133','Eduardo','Alvarado','Piloto','555-1331','eduardo.alvarado@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('134','Lidia','Pérez','Azafata','555-1332','lidia.perez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('135','Manuel','Vázquez','Piloto','555-1333','manuel.vazquez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('136','Marta','Ramírez','Azafata','555-1334','marta.ramirez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('137','Julio','Hernández','Piloto','555-1335','julio.hernandez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('138','Carmen','Jiménez','Azafata','555-1336','carmen.jimenez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('139','Andrés','Morales','Piloto','555-1337','andres.morales@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('140','Sonia','Silva','Azafata','555-1338','sonia.silva@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('141','Pedro','González','Piloto','555-1339','pedro.gonzalez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('142','Lucía','Lozano','Azafata','555-1340','lucia.lozano@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('143','Joaquín','Pérez','Piloto','555-1341','joaquin.perez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('144','Raúl','García','Azafata','555-1342','raul.garcia@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('145','Patricia','Jiménez','Piloto','555-1343','patricia.jimenez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('146','Ricardo','Rodríguez','Azafata','555-1344','ricardo.rodriguez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('147','Iván','Torres','Piloto','555-1345','ivan.torres@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('148','Alma','Fernández','Azafata','555-1346','alma.fernandez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('149','José','Ramírez','Piloto','555-1347','jose.ramirez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('150','Monica','Sánchez','Azafata','555-1348','monica.sanchez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('151','Antonio','Silva','Piloto','555-1349','antonio.silva@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('152','Luis','Lopez','Azafata','555-1350','luis.lopez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('153','Isabel','Martínez','Piloto','555-1351','isabel.martinez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('154','David','López','Piloto','555-1352','david.lopez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('155','Ana','Córdoba','Azafata','555-1353','ana.cordoba@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('156','Eduardo','Martínez','Piloto','555-1354','eduardo.martinez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('157','Raquel','Fernández','Azafata','555-1355','raquel.fernandez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('158','Joaquín','González','Piloto','555-1356','joaquin.gonzalez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('159','Lucía','Martínez','Azafata','555-1357','lucia.martinez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('160','Carlos','Sánchez','Piloto','555-1358','carlos.sanchez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('161','Mónica','Ramírez','Azafata','555-1359','monica.ramirez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('162','José','Gómez','Piloto','555-1360','jose.gomez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('163','Verónica','Hernández','Azafata','555-1361','veronica.hernandez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('164','Andrés','Pérez','Piloto','555-1362','andres.perez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('165','Berta','López','Azafata','555-1363','berta.lopez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('166','José','Jiménez','Piloto','555-1364','jose.jimenez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('167','Margarita','García','Azafata','555-1365','margarita.garcia@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('168','Ricardo','Sánchez','Piloto','555-1366','ricardo.sanchez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('169','Claudia','Alonso','Azafata','555-1367','claudia.alonso@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('170','Antonio','Ramírez','Piloto','555-1368','antonio.ramirez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('171','Patricia','Gómez','Azafata','555-1369','patricia.gomez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('172','Juan','Cordero','Piloto','555-1370','juan.cordero@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('173','Teresa','Silva','Azafata','555-1371','teresa.silva@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('174','Fernando','Vázquez','Piloto','555-1372','fernando.vazquez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('175','Liliana','González','Azafata','555-1373','liliana.gonzalez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('176','Alberto','Martínez','Piloto','555-1374','alberto.martinez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('177','Inés','Pérez','Azafata','555-1375','ines.perez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('178','Fernando','López','Piloto','555-1376','fernando.lopez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('179','Isabel','Jiménez','Azafata','555-1377','isabel.jimenez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('180','Martín','Hernández','Piloto','555-1378','martin.hernandez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('181','Verónica','Rodríguez','Azafata','555-1379','veronica.rodriguez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('182','David','Vázquez','Piloto','555-1380','david.vazquez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('183','Sonia','López','Azafata','555-1381','sonia.lopez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('184','Carlos','González','Piloto','555-1382','carlos.gonzalez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('185','Lina','Hernández','Azafata','555-1383','lina.hernandez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('186','Javier','Morales','Piloto','555-1384','javier.morales@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('187','Raquel','Alvarado','Azafata','555-1385','raquel.alvarado@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('188','Ramón','Salazar','Piloto','555-1386','ramon.salazar@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('189','Pilar','García','Azafata','555-1387','pilar.garcia@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('190','Antonio','Martínez','Piloto','555-1388','antonio.martinez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('191','Carmen','Rodríguez','Azafata','555-1389','carmen.rodriguez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('192','Luis','González','Piloto','555-1390','luis.gonzalez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('193','Eva','Silva','Azafata','555-1391','eva.silva@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('194','Antonio','Gómez','Piloto','555-1392','antonio.gomez@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('195','Berta','Alvarado','Azafata','555-1393','berta.alvarado@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('196','Adrián','Torres','Piloto','555-1394','adrian.torres@aerolinea.com');
Insert into ADMIN01.TBL_EMPLEADOS (ID_EMPLEADO,NOMBRE,APELLIDO,CARGO,TELEFONO,EMAIL) values ('197','Natalia','Morales','Azafata','555-1395','natalia.morales@aerolinea.com');
REM INSERTING into ADMIN01.TBL_HOTELES
SET DEFINE OFF;
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('1','Hotel Mar Azul','Playa del Carmen, México','5 Estrellas','200');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('2','Hotel Paraíso','Cancún, México','4 Estrellas','150');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('3','Grand Resort','Bavaro, República Dominicana','5 Estrellas','300');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('4','Hotel Sol y Mar','Puerto Vallarta, México','3 Estrellas','120');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('5','Palace Suites','Miami, USA','4 Estrellas','180');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('6','Sunshine Hotel','Cartagena, Colombia','3 Estrellas','100');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('7','Royal Palm Hotel','Punta Cana, República Dominicana','5 Estrellas','350');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('8','Hotel Mirage','Las Vegas, USA','4 Estrellas','220');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('9','The Grand','Orlando, USA','5 Estrellas','250');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('10','Ocean Breeze','Cozumel, México','4 Estrellas','170');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('11','Mountain View','Asheville, USA','3 Estrellas','90');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('12','Seaside Resort','Boca Chica, República Dominicana','5 Estrellas','320');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('13','Beachfront Hotel','Acapulco, México','3 Estrellas','110');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('14','Golden Sands','Varadero, Cuba','4 Estrellas','180');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('15','Luxury Suites','Buenos Aires, Argentina','5 Estrellas','400');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('16','Royal Suites','Tulum, México','4 Estrellas','210');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('17','Hotel Blue Bay','Cartagena, Colombia','3 Estrellas','95');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('18','Mayan Palace','Riviera Maya, México','5 Estrellas','370');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('19','Tropical Resort','Roatán, Honduras','4 Estrellas','160');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('20','Palm Beach Resort','Barbados','5 Estrellas','280');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('21','Beachfront Paradise','Puerto Rico','4 Estrellas','190');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('22','Sunset Inn','Tulum, México','3 Estrellas','85');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('23','Crystal Palace','Miami, USA','5 Estrellas','320');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('24','Villa Serena','Boca Chica, República Dominicana','4 Estrellas','160');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('25','Laguna Resort','Cozumel, México','5 Estrellas','310');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('26','Grand Ocean View','Varadero, Cuba','4 Estrellas','190');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('27','Blue Sky Resort','Puerto Vallarta, México','3 Estrellas','120');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('28','Oceanfront Hotel','Bavaro, República Dominicana','5 Estrellas','330');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('29','Mountain Escape','Asheville, USA','4 Estrellas','200');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('30','Sunset Bay Hotel','Cancún, México','5 Estrellas','260');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('31','Tropical Breeze','Tulum, México','4 Estrellas','180');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('32','Serenity Hotel','Cartagena, Colombia','3 Estrellas','95');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('33','Vista Mar','Puerto Rico','4 Estrellas','210');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('34','Beachcomber Resort','Las Vegas, USA','5 Estrellas','320');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('35','Skyline Inn','Punta Cana, República Dominicana','3 Estrellas','110');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('36','Sunset Paradise','Boca Chica, República Dominicana','5 Estrellas','350');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('37','Grand Riviera','Riviera Maya, México','4 Estrellas','220');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('38','Royal Resort','Cozumel, México','3 Estrellas','130');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('39','Marina Suites','Puerto Vallarta, México','5 Estrellas','310');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('40','Azure Bay','Playa del Carmen, México','5 Estrellas','220');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('41','Sunset Cove','Cancún, México','4 Estrellas','200');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('42','Coral Reef Hotel','Punta Cana, República Dominicana','5 Estrellas','330');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('43','Riviera Beach Resort','Puerto Vallarta, México','4 Estrellas','160');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('44','Oasis Retreat','Barbados','3 Estrellas','120');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('45','Golden Beach','Varadero, Cuba','5 Estrellas','340');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('46','Pacific Suites','Los Ángeles, USA','4 Estrellas','230');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('47','Blue Lagoon Resort','Tulum, México','3 Estrellas','110');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('48','Tropical Escape','Cartagena, Colombia','4 Estrellas','180');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('49','Beachside Haven','Cozumel, México','5 Estrellas','330');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('50','Crystal Waters','Bavaro, República Dominicana','4 Estrellas','210');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('51','Mango Bay Resort','Roatán, Honduras','5 Estrellas','300');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('52','Coco Beach Hotel','Miami, USA','3 Estrellas','120');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('53','Royal Shores','Cancún, México','4 Estrellas','220');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('54','Palm Bay Hotel','Riviera Maya, México','3 Estrellas','150');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('55','Elite Suites','Las Vegas, USA','5 Estrellas','400');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('56','Casa Blanca','Tulum, México','4 Estrellas','170');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('57','Sunrise Resort','Puerto Rico','3 Estrellas','140');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('58','Horizon Inn','Asheville, USA','4 Estrellas','190');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('59','Sea Breeze Suites','Varadero, Cuba','5 Estrellas','360');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('60','Beachfront Oasis','Barbados','3 Estrellas','130');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('61','Grand Lagoon','Punta Cana, República Dominicana','4 Estrellas','210');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('62','Majestic Towers','Puerto Vallarta, México','5 Estrellas','380');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('63','Luxe Beach Resort','Cozumel, México','4 Estrellas','190');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('64','Sunshine Bay','Cartagena, Colombia','5 Estrellas','350');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('65','Royal Beachfront','Las Vegas, USA','3 Estrellas','150');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('66','Pacific Coast Inn','Miami, USA','4 Estrellas','210');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('67','Cabo View','Baja California, México','5 Estrellas','390');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('68','Skyline Resort','Cozumel, México','4 Estrellas','220');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('69','Ocean Breeze Suites','Varadero, Cuba','3 Estrellas','130');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('70','Vista Marina','Boca Chica, República Dominicana','4 Estrellas','160');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('71','Sunset Lagoon','Tulum, México','5 Estrellas','320');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('72','Royal Vista','Puerto Rico','4 Estrellas','210');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('73','Emerald Bay Hotel','Las Vegas, USA','3 Estrellas','120');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('74','Lagoon Paradise','Cancún, México','5 Estrellas','350');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('75','Palms Resort','Bavaro, República Dominicana','4 Estrellas','200');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('76','Vista Caribe','Boca Chica, República Dominicana','5 Estrellas','330');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('77','Crystal Palace','Bavaro, República Dominicana','3 Estrellas','140');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('78','Seaside Hotel','Cancún, México','4 Estrellas','220');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('79','Palm Springs Resort','Tulum, México','5 Estrellas','360');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('80','Marina Bay Resort','Puerto Vallarta, México','4 Estrellas','250');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('81','Laguna Azul','Riviera Maya, México','5 Estrellas','370');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('82','Paradise Beach','Las Vegas, USA','3 Estrellas','150');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('83','Tropical Oasis','Barbados','4 Estrellas','220');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('84','Silver Sands Resort','Varadero, Cuba','5 Estrellas','340');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('85','Island Breeze','Bavaro, República Dominicana','4 Estrellas','210');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('86','Ocean View Suites','Cozumel, México','5 Estrellas','380');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('87','Palm Bay Beach Resort','Miami, USA','3 Estrellas','160');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('88','Crystal Beachfront','Puerto Rico','5 Estrellas','390');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('89','Vista del Mar','Cabo San Lucas, México','4 Estrellas','230');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('90','Golden Coast Resort','Cozumel, México','5 Estrellas','400');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('91','Dreams Bay','Cartagena, Colombia','3 Estrellas','140');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('92','Blue Waters Inn','Las Vegas, USA','4 Estrellas','250');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('93','Sunshine Cove','Boca Chica, República Dominicana','5 Estrellas','360');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('94','Coral Reef Resort','Tulum, México','4 Estrellas','210');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('95','Lagoon Villas','Puerto Vallarta, México','5 Estrellas','420');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('96','Oasis Paradise','Cancún, México','4 Estrellas','230');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('97','Caribbean Breeze Hotel','Varadero, Cuba','3 Estrellas','160');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('98','Majestic Palm Resort','Barbados','5 Estrellas','370');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('99','Sea Cliff Hotel','Punta Cana, República Dominicana','4 Estrellas','210');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('100','Laguna Grande','Puerto Rico','3 Estrellas','140');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('101','Golden Sun Resort','Las Vegas, USA','4 Estrellas','230');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('102','Sunset Point','Cancún, México','5 Estrellas','380');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('103','Royal Sunset','Bavaro, República Dominicana','3 Estrellas','170');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('104','Coral Beach Suites','Cartagena, Colombia','5 Estrellas','350');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('105','Oceanview Resort','Cozumel, México','4 Estrellas','220');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('106','Sunshine Bay Resort','Punta Cana, República Dominicana','5 Estrellas','400');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('107','Golden Coast Villas','Miami, USA','3 Estrellas','150');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('108','Oasis Grande','Boca Chica, República Dominicana','4 Estrellas','210');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('109','Beachfront Bliss','Riviera Maya, México','5 Estrellas','380');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('110','Skyline Resort','Cancún, México','4 Estrellas','230');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('111','Vista Mar','Tulum, México','5 Estrellas','350');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('112','Sunset Bay Resort','Las Vegas, USA','3 Estrellas','160');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('113','Tropical View Hotel','Bavaro, República Dominicana','4 Estrellas','220');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('114','Ocean Breeze Resort','Puerto Rico','5 Estrellas','370');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('115','Palms Bay Resort','Varadero, Cuba','3 Estrellas','140');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('116','Royal Lagoon','Cabo San Lucas, México','4 Estrellas','230');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('117','El Dorado Beach Resort','Puerto Vallarta, México','5 Estrellas','420');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('118','Mountain View Lodge','Sedona, USA','4 Estrellas','250');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('119','Sea Breeze Inn','Barbados','3 Estrellas','180');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('120','Tropical Sun Resort','Cancún, México','5 Estrellas','410');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('121','Coastal Retreat','Riviera Maya, México','4 Estrellas','230');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('122','Breeze Bay Hotel','Varadero, Cuba','3 Estrellas','160');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('123','Blue Lagoon Resort','Cozumel, México','5 Estrellas','420');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('124','The Island Retreat','Las Vegas, USA','4 Estrellas','240');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('125','Starfish Bay','Tulum, México','5 Estrellas','390');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('126','Royal Beach Club','Punta Cana, República Dominicana','4 Estrellas','220');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('127','Tropical Paradise Resort','Cabo San Lucas, México','3 Estrellas','150');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('128','Seaside Haven','Cartagena, Colombia','5 Estrellas','380');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('129','Ocean Breeze Inn','Boca Chica, República Dominicana','4 Estrellas','210');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('130','Beachfront Villas','Varadero, Cuba','5 Estrellas','360');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('131','Sunshine Beach Resort','Riviera Maya, México','3 Estrellas','170');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('132','Crystal Lagoon Resort','Punta Cana, República Dominicana','4 Estrellas','230');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('133','Tropical Springs Hotel','Cancún, México','5 Estrellas','420');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('134','Golden Sands Hotel','Miami, USA','3 Estrellas','180');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('135','Lagoon Beach Resort','Cozumel, México','4 Estrellas','240');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('136','Sunset Cove Resort','Barbados','5 Estrellas','380');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('137','Coral Bay Villas','Tulum, México','4 Estrellas','220');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('138','Majestic Sun Hotel','Cabo San Lucas, México','5 Estrellas','400');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('139','Blue Waters Inn','Las Vegas, USA','3 Estrellas','160');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('140','Caribbean Sky Resort','Puerto Rico','5 Estrellas','420');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('141','Sunrise Oasis','Boca Chica, República Dominicana','4 Estrellas','230');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('142','Luxury Bay Resort','Cartagena, Colombia','5 Estrellas','390');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('143','Vista Bonita Resort','Puerto Vallarta, México','3 Estrellas','150');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('144','Tropical Heights Resort','Bavaro, República Dominicana','4 Estrellas','220');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('145','Laguna Azul Beach','Riviera Maya, México','5 Estrellas','400');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('146','Majestic Lagoon Resort','Cancún, México','4 Estrellas','210');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('147','Star Bay Resort','Cozumel, México','5 Estrellas','390');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('148','Ocean View Hotel','Las Vegas, USA','3 Estrellas','170');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('149','Coral Sands Beach Resort','Varadero, Cuba','4 Estrellas','240');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('150','Breeze Point Resort','Tulum, México','5 Estrellas','380');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('151','Oceanic View Resort','Punta Cana, República Dominicana','4 Estrellas','230');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('152','Sunset Ridge Resort','Puerto Vallarta, México','3 Estrellas','180');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('153','Marina Beach Resort','Cancún, México','5 Estrellas','450');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('154','Golden Coast Hotel','Punta Cana, República Dominicana','4 Estrellas','250');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('155','Tropical Gardens Inn','Cartagena, Colombia','3 Estrellas','190');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('156','Sunshine View Resort','Boca Chica, República Dominicana','5 Estrellas','420');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('157','Coral Reef Hotel','Barbados','4 Estrellas','240');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('158','Lagoon Breeze Resort','Las Vegas, USA','3 Estrellas','160');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('159','Seaside Escape Resort','Cozumel, México','5 Estrellas','430');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('160','Blue Coral Beach Resort','Riviera Maya, México','4 Estrellas','220');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('161','Crystal Waters Resort','Tulum, México','5 Estrellas','410');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('162','Beachfront Villas','Cancún, México','3 Estrellas','200');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('163','Sunrise Bay Resort','Miami, USA','4 Estrellas','250');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('164','Tropical Oasis Hotel','Puerto Vallarta, México','5 Estrellas','450');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('165','Ocean Breeze Villas','Varadero, Cuba','4 Estrellas','220');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('166','Palm Shores Resort','Punta Cana, República Dominicana','5 Estrellas','420');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('167','Seaview Palace Hotel','Cabo San Lucas, México','4 Estrellas','230');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('168','Lagoon Paradise Resort','Punta Cana, República Dominicana','3 Estrellas','190');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('169','Coral Sands Beach Hotel','Barbados','5 Estrellas','400');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('170','Blue Horizon Resort','Tulum, México','4 Estrellas','230');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('171','Coastal View Inn','Varadero, Cuba','3 Estrellas','180');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('172','The Waterfront Resort','Riviera Maya, México','5 Estrellas','460');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('173','Sunset Bay Hotel','Cabo San Lucas, México','4 Estrellas','250');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('174','Luxury Ocean View Resort','Las Vegas, USA','5 Estrellas','430');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('175','Caribbean Blue Resort','Cartagena, Colombia','3 Estrellas','210');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('176','Golden Reef Inn','Punta Cana, República Dominicana','4 Estrellas','240');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('177','Oceanfront Villas','Cozumel, México','5 Estrellas','450');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('178','Beachfront Horizon Resort','Miami, USA','4 Estrellas','230');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('179','Coral Bay Hotel','Cancún, México','3 Estrellas','180');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('180','Lagoon Palace Resort','Las Vegas, USA','5 Estrellas','470');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('181','Sunrise Lagoon Resort','Boca Chica, República Dominicana','4 Estrellas','230');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('182','Royal Coastal Resort','Cabo San Lucas, México','5 Estrellas','440');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('183','Beachside Escape Resort','Punta Cana, República Dominicana','3 Estrellas','210');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('184','Sunset Paradise Resort','Cartagena, Colombia','5 Estrellas','450');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('185','Tropical Bay Hotel','Varadero, Cuba','4 Estrellas','240');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('186','Ocean Breeze Resort','Tulum, México','3 Estrellas','200');
Insert into ADMIN01.TBL_HOTELES (ID_HOTEL,NOMBRE,UBICACION,CATEGORIA,PRECIO_NOCHE) values ('187','Caribbean Ocean Resort','Puerto Vallarta, México','5 Estrellas','480');
REM INSERTING into ADMIN01.TBL_PAGOS
SET DEFINE OFF;
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('1','150',to_date('05/01/24','DD/MM/RR'),'Tarjeta de Crédito','1');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('2','200',to_date('06/01/24','DD/MM/RR'),'PayPal','2');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('3','300',to_date('07/01/24','DD/MM/RR'),'Tarjeta de Débito','3');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('4','450',to_date('08/01/24','DD/MM/RR'),'Efectivo','4');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('5','275,5',to_date('09/01/24','DD/MM/RR'),'Tarjeta de Crédito','5');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('6','325',to_date('11/01/24','DD/MM/RR'),'PayPal','7');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('7','500',to_date('12/01/24','DD/MM/RR'),'Tarjeta de Débito','8');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('8','250',to_date('13/01/24','DD/MM/RR'),'Efectivo','9');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('9','120',to_date('14/01/24','DD/MM/RR'),'Tarjeta de Crédito','10');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('10','300',to_date('16/01/24','DD/MM/RR'),'PayPal','12');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('11','275',to_date('17/01/24','DD/MM/RR'),'Tarjeta de Débito','13');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('12','190',to_date('18/01/24','DD/MM/RR'),'Efectivo','14');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('13','220,5',to_date('19/01/24','DD/MM/RR'),'Tarjeta de Crédito','15');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('14','145',to_date('21/01/24','DD/MM/RR'),'PayPal','17');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('15','530',to_date('22/01/24','DD/MM/RR'),'Tarjeta de Débito','18');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('16','330',to_date('23/01/24','DD/MM/RR'),'Efectivo','19');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('17','275',to_date('24/01/24','DD/MM/RR'),'Tarjeta de Crédito','20');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('18','480',to_date('26/01/24','DD/MM/RR'),'PayPal','22');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('19','315,5',to_date('27/01/24','DD/MM/RR'),'Tarjeta de Débito','23');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('20','100',to_date('28/01/24','DD/MM/RR'),'Efectivo','24');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('21','245',to_date('29/01/24','DD/MM/RR'),'Tarjeta de Crédito','25');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('22','190',to_date('31/01/24','DD/MM/RR'),'PayPal','27');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('23','550',to_date('01/02/24','DD/MM/RR'),'Tarjeta de Débito','28');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('24','380',to_date('02/02/24','DD/MM/RR'),'Efectivo','29');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('25','120',to_date('03/02/24','DD/MM/RR'),'Tarjeta de Crédito','30');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('26','250',to_date('05/02/24','DD/MM/RR'),'PayPal','32');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('27','180',to_date('06/02/24','DD/MM/RR'),'Tarjeta de Débito','33');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('28','400',to_date('07/02/24','DD/MM/RR'),'Efectivo','34');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('29','325',to_date('08/02/24','DD/MM/RR'),'Tarjeta de Crédito','35');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('30','290',to_date('10/02/24','DD/MM/RR'),'PayPal','37');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('31','150',to_date('11/02/24','DD/MM/RR'),'Tarjeta de Débito','38');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('32','275',to_date('12/02/24','DD/MM/RR'),'Efectivo','39');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('33','310',to_date('13/02/24','DD/MM/RR'),'Tarjeta de Crédito','40');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('34','210,5',to_date('15/02/24','DD/MM/RR'),'PayPal','42');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('35','315',to_date('16/02/24','DD/MM/RR'),'Tarjeta de Débito','43');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('36','145',to_date('17/02/24','DD/MM/RR'),'Efectivo','44');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('37','320',to_date('18/02/24','DD/MM/RR'),'Tarjeta de Crédito','45');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('38','190',to_date('20/02/24','DD/MM/RR'),'PayPal','47');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('39','365',to_date('21/02/24','DD/MM/RR'),'Tarjeta de Débito','48');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('40','425',to_date('22/02/24','DD/MM/RR'),'Efectivo','49');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('41','230',to_date('23/02/24','DD/MM/RR'),'Tarjeta de Crédito','50');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('42','290',to_date('25/02/24','DD/MM/RR'),'PayPal','52');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('43','180',to_date('26/02/24','DD/MM/RR'),'Tarjeta de Débito','53');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('44','400',to_date('27/02/24','DD/MM/RR'),'Efectivo','54');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('45','325',to_date('28/02/24','DD/MM/RR'),'Tarjeta de Crédito','55');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('46','290',to_date('02/03/24','DD/MM/RR'),'PayPal','57');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('47','150',to_date('03/03/24','DD/MM/RR'),'Tarjeta de Débito','58');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('48','275',to_date('04/03/24','DD/MM/RR'),'Efectivo','59');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('49','310',to_date('05/03/24','DD/MM/RR'),'Tarjeta de Crédito','60');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('50','250',to_date('07/03/24','DD/MM/RR'),'PayPal','62');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('51','180',to_date('08/03/24','DD/MM/RR'),'Tarjeta de Débito','63');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('52','400',to_date('09/03/24','DD/MM/RR'),'Efectivo','64');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('53','325',to_date('10/03/24','DD/MM/RR'),'Tarjeta de Crédito','65');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('54','290',to_date('12/03/24','DD/MM/RR'),'PayPal','67');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('55','150',to_date('13/03/24','DD/MM/RR'),'Tarjeta de Débito','68');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('56','275',to_date('14/03/24','DD/MM/RR'),'Efectivo','69');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('57','310',to_date('15/03/24','DD/MM/RR'),'Tarjeta de Crédito','70');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('58','310',to_date('17/03/24','DD/MM/RR'),'PayPal','72');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('59','230',to_date('18/03/24','DD/MM/RR'),'Tarjeta de Débito','73');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('60','390',to_date('19/03/24','DD/MM/RR'),'Efectivo','74');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('61','285',to_date('20/03/24','DD/MM/RR'),'Tarjeta de Crédito','75');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('62','250',to_date('22/03/24','DD/MM/RR'),'PayPal','77');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('63','170',to_date('23/03/24','DD/MM/RR'),'Tarjeta de Débito','78');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('64','270',to_date('24/03/24','DD/MM/RR'),'Efectivo','79');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('65','300',to_date('25/03/24','DD/MM/RR'),'Tarjeta de Crédito','80');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('66','280',to_date('27/03/24','DD/MM/RR'),'PayPal','82');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('67','250',to_date('28/03/24','DD/MM/RR'),'Tarjeta de Débito','83');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('68','410',to_date('29/03/24','DD/MM/RR'),'Efectivo','84');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('69','320',to_date('30/03/24','DD/MM/RR'),'Tarjeta de Crédito','85');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('70','260',to_date('01/04/24','DD/MM/RR'),'PayPal','87');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('71','190',to_date('02/04/24','DD/MM/RR'),'Tarjeta de Débito','88');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('72','330',to_date('03/04/24','DD/MM/RR'),'Efectivo','89');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('73','300',to_date('04/04/24','DD/MM/RR'),'Tarjeta de Crédito','90');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('74','275,5',to_date('06/04/24','DD/MM/RR'),'PayPal','92');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('75','200',to_date('07/04/24','DD/MM/RR'),'Tarjeta de Débito','93');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('76','420',to_date('08/04/24','DD/MM/RR'),'Efectivo','94');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('77','295',to_date('09/04/24','DD/MM/RR'),'Tarjeta de Crédito','95');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('78','315',to_date('11/04/24','DD/MM/RR'),'PayPal','97');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('79','240',to_date('12/04/24','DD/MM/RR'),'Tarjeta de Débito','98');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('80','355',to_date('13/04/24','DD/MM/RR'),'Efectivo','99');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('81','280',to_date('14/04/24','DD/MM/RR'),'Tarjeta de Crédito','100');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('82','285',to_date('16/04/24','DD/MM/RR'),'PayPal','102');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('83','210',to_date('17/04/24','DD/MM/RR'),'Tarjeta de Débito','103');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('84','375',to_date('18/04/24','DD/MM/RR'),'Efectivo','104');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('85','250',to_date('19/04/24','DD/MM/RR'),'Tarjeta de Crédito','105');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('86','300',to_date('21/04/24','DD/MM/RR'),'PayPal','107');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('87','185',to_date('22/04/24','DD/MM/RR'),'Tarjeta de Débito','108');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('88','320',to_date('23/04/24','DD/MM/RR'),'Efectivo','109');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('89','280',to_date('24/04/24','DD/MM/RR'),'Tarjeta de Crédito','110');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('90','270',to_date('26/04/24','DD/MM/RR'),'PayPal','112');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('91','230',to_date('27/04/24','DD/MM/RR'),'Tarjeta de Débito','113');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('92','365',to_date('28/04/24','DD/MM/RR'),'Efectivo','114');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('93','300',to_date('29/04/24','DD/MM/RR'),'Tarjeta de Crédito','115');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('94','350',to_date('01/05/24','DD/MM/RR'),'PayPal','117');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('95','220',to_date('02/05/24','DD/MM/RR'),'Tarjeta de Débito','118');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('96','350',to_date('03/05/24','DD/MM/RR'),'Efectivo','119');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('97','290',to_date('04/05/24','DD/MM/RR'),'Tarjeta de Crédito','120');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('98','320',to_date('05/05/24','DD/MM/RR'),'Tarjeta de Crédito','121');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('99','295,5',to_date('07/05/24','DD/MM/RR'),'PayPal','123');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('100','210',to_date('08/05/24','DD/MM/RR'),'Tarjeta de Débito','124');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('101','380',to_date('09/05/24','DD/MM/RR'),'Efectivo','125');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('102','340',to_date('10/05/24','DD/MM/RR'),'Tarjeta de Crédito','126');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('103','275',to_date('12/05/24','DD/MM/RR'),'PayPal','128');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('104','190',to_date('13/05/24','DD/MM/RR'),'Tarjeta de Débito','129');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('105','360',to_date('14/05/24','DD/MM/RR'),'Efectivo','130');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('106','310',to_date('15/05/24','DD/MM/RR'),'Tarjeta de Crédito','131');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('107','290',to_date('17/05/24','DD/MM/RR'),'PayPal','133');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('108','200',to_date('18/05/24','DD/MM/RR'),'Tarjeta de Débito','134');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('109','400',to_date('19/05/24','DD/MM/RR'),'Efectivo','135');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('110','335',to_date('20/05/24','DD/MM/RR'),'Tarjeta de Crédito','136');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('111','310',to_date('22/05/24','DD/MM/RR'),'PayPal','138');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('112','230',to_date('23/05/24','DD/MM/RR'),'Tarjeta de Débito','139');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('113','385',to_date('24/05/24','DD/MM/RR'),'Efectivo','140');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('114','300',to_date('25/05/24','DD/MM/RR'),'Tarjeta de Crédito','141');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('115','330',to_date('27/05/24','DD/MM/RR'),'PayPal','143');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('116','240',to_date('28/05/24','DD/MM/RR'),'Tarjeta de Débito','144');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('117','370',to_date('29/05/24','DD/MM/RR'),'Efectivo','145');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('118','280',to_date('30/05/24','DD/MM/RR'),'Tarjeta de Crédito','146');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('119','315',to_date('01/06/24','DD/MM/RR'),'PayPal','148');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('120','220',to_date('02/06/24','DD/MM/RR'),'Tarjeta de Débito','149');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('121','345',to_date('03/06/24','DD/MM/RR'),'Efectivo','150');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('122','310',to_date('04/06/24','DD/MM/RR'),'Tarjeta de Crédito','151');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('123','275',to_date('06/06/24','DD/MM/RR'),'PayPal','153');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('124','210',to_date('07/06/24','DD/MM/RR'),'Tarjeta de Débito','154');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('125','390',to_date('08/06/24','DD/MM/RR'),'Efectivo','155');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('126','320',to_date('09/06/24','DD/MM/RR'),'Tarjeta de Crédito','156');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('127','290',to_date('11/06/24','DD/MM/RR'),'PayPal','158');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('128','190',to_date('12/06/24','DD/MM/RR'),'Tarjeta de Débito','159');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('129','360',to_date('13/06/24','DD/MM/RR'),'Efectivo','160');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('130','380',to_date('14/06/24','DD/MM/RR'),'Tarjeta de Crédito','161');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('131','310',to_date('16/06/24','DD/MM/RR'),'PayPal','163');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('132','220',to_date('17/06/24','DD/MM/RR'),'Tarjeta de Débito','164');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('133','400',to_date('18/06/24','DD/MM/RR'),'Efectivo','165');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('134','320',to_date('19/06/24','DD/MM/RR'),'Tarjeta de Crédito','166');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('135','275,5',to_date('21/06/24','DD/MM/RR'),'PayPal','168');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('136','200',to_date('22/06/24','DD/MM/RR'),'Tarjeta de Débito','169');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('137','355',to_date('23/06/24','DD/MM/RR'),'Efectivo','170');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('138','285',to_date('24/06/24','DD/MM/RR'),'Tarjeta de Crédito','171');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('139','340',to_date('26/06/24','DD/MM/RR'),'PayPal','173');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('140','220',to_date('27/06/24','DD/MM/RR'),'Tarjeta de Débito','174');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('141','390',to_date('28/06/24','DD/MM/RR'),'Efectivo','175');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('142','310',to_date('29/06/24','DD/MM/RR'),'Tarjeta de Crédito','176');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('143','290',to_date('01/07/24','DD/MM/RR'),'PayPal','178');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('144','210',to_date('02/07/24','DD/MM/RR'),'Tarjeta de Débito','179');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('145','365',to_date('03/07/24','DD/MM/RR'),'Efectivo','180');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('146','300',to_date('04/07/24','DD/MM/RR'),'Tarjeta de Crédito','181');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('147','330',to_date('06/07/24','DD/MM/RR'),'PayPal','183');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('148','230',to_date('07/07/24','DD/MM/RR'),'Tarjeta de Débito','184');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('149','385',to_date('08/07/24','DD/MM/RR'),'Efectivo','185');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('150','250',to_date('09/07/24','DD/MM/RR'),'Tarjeta de Crédito','186');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('151','315',to_date('11/07/24','DD/MM/RR'),'PayPal','188');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('152','180',to_date('12/07/24','DD/MM/RR'),'Tarjeta de Débito','189');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('153','340',to_date('13/07/24','DD/MM/RR'),'Efectivo','190');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('154','280',to_date('14/07/24','DD/MM/RR'),'Tarjeta de Crédito','191');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('155','260',to_date('16/07/24','DD/MM/RR'),'PayPal','193');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('156','200',to_date('17/07/24','DD/MM/RR'),'Tarjeta de Débito','194');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('157','400',to_date('18/07/24','DD/MM/RR'),'Efectivo','195');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('158','310',to_date('19/07/24','DD/MM/RR'),'Tarjeta de Crédito','196');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('159','280',to_date('21/07/24','DD/MM/RR'),'PayPal','198');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('160','220',to_date('22/07/24','DD/MM/RR'),'Tarjeta de Débito','199');
Insert into ADMIN01.TBL_PAGOS (ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_RESERVA) values ('161','370',to_date('23/07/24','DD/MM/RR'),'Efectivo','200');
REM INSERTING into ADMIN01.TBL_RESERVAS
SET DEFINE OFF;
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('1','1','1','2');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('2','2','2','1');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('3','3','3','4');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('4','4','4','3');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('5','5','5','6');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('6','6','6','5');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('7','7','7','8');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('8','8','8','7');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('9','9','9','10');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('10','10','10','9');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('11','11','11','12');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('12','12','12','11');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('13','13','13','14');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('14','14','14','13');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('15','15','15','16');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('16','16','16','15');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('17','17','17','18');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('18','18','18','17');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('19','19','19','20');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('20','20','20','19');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('21','21','21','22');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('22','22','22','21');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('23','23','23','24');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('24','24','24','23');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('25','25','25','26');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('26','26','26','25');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('27','27','27','28');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('28','28','28','27');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('29','29','29','30');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('30','30','30','29');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('31','31','31','32');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('32','32','32','31');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('33','33','33','34');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('34','34','34','33');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('35','35','35','36');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('36','36','36','35');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('37','37','37','38');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('38','38','38','37');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('39','39','39','40');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('40','40','40','39');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('41','41','1','5');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('42','42','2','6');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('43','43','3','7');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('44','44','4','8');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('45','45','5','9');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('46','46','6','10');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('47','47','7','11');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('48','48','8','12');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('49','49','9','13');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('50','50','10','14');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('51','51','11','15');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('52','52','12','16');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('53','53','13','17');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('54','54','14','18');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('55','55','15','19');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('56','56','16','20');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('57','57','17','21');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('58','58','18','22');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('59','59','19','23');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('60','60','20','24');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('61','61','21','25');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('62','62','22','26');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('63','63','23','27');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('64','64','24','28');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('65','65','25','29');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('66','66','26','30');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('67','67','27','31');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('68','68','28','32');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('69','69','29','33');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('70','70','30','34');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('71','71','31','35');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('72','72','32','36');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('73','73','33','37');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('74','74','34','38');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('75','75','35','39');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('76','76','36','40');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('77','77','37','1');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('78','78','38','2');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('79','79','39','3');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('80','80','40','4');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('81','81','5','10');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('82','82','6','11');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('83','83','7','12');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('84','84','8','13');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('85','85','9','14');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('86','86','10','15');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('87','87','11','16');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('88','88','12','17');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('89','89','13','18');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('90','90','14','19');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('91','91','15','20');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('92','92','16','21');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('93','93','17','22');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('94','94','18','23');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('95','95','19','24');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('96','96','20','25');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('97','97','21','26');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('98','98','22','27');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('99','99','23','28');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('100','100','24','29');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('101','101','25','30');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('102','102','26','31');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('103','103','27','32');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('104','104','28','33');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('105','105','29','34');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('106','106','30','35');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('107','107','31','36');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('108','108','32','37');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('109','109','33','38');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('110','110','34','39');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('111','111','35','40');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('112','112','36','1');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('113','113','37','2');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('114','114','38','3');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('115','115','39','4');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('116','116','40','5');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('117','117','1','6');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('118','118','2','7');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('119','119','3','8');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('120','120','4','9');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('121','121','6','15');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('122','122','7','16');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('123','123','8','17');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('124','124','9','18');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('125','125','10','19');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('126','126','11','20');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('127','127','12','21');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('128','128','13','22');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('129','129','14','23');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('130','130','15','24');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('131','131','16','25');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('132','132','17','26');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('133','133','18','27');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('134','134','19','28');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('135','135','20','29');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('136','136','21','30');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('137','137','22','31');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('138','138','23','32');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('139','139','24','33');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('140','140','25','34');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('141','141','26','35');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('142','142','27','36');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('143','143','28','37');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('144','144','29','38');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('145','145','30','39');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('146','146','31','40');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('147','147','32','1');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('148','148','33','2');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('149','149','34','3');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('150','150','35','4');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('151','151','36','5');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('152','152','37','6');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('153','153','38','7');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('154','154','39','8');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('155','155','40','9');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('156','156','1','10');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('157','157','2','11');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('158','158','3','12');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('159','159','4','13');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('160','160','5','14');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('161','161','6','25');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('162','162','7','26');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('163','163','8','27');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('164','164','9','28');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('165','165','10','29');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('166','166','11','30');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('167','167','12','31');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('168','168','13','32');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('169','169','14','33');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('170','170','15','34');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('171','171','16','35');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('172','172','17','36');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('173','173','18','37');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('174','174','19','38');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('175','175','20','39');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('176','176','21','40');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('177','177','22','1');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('178','178','23','2');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('179','179','24','3');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('180','180','25','4');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('181','181','26','5');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('182','182','27','6');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('183','183','28','7');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('184','184','29','8');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('185','185','30','9');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('186','186','31','10');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('187','187','32','11');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('188','188','33','12');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('189','189','34','13');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('190','190','35','14');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('191','191','36','15');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('192','192','37','16');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('193','193','38','17');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('194','194','39','18');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('195','195','40','19');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('196','196','1','20');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('197','197','2','21');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('198','198','3','22');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('199','199','4','23');
Insert into ADMIN01.TBL_RESERVAS (ID_RESERVA,ID_CLIENTE,ID_VUELO,ID_HOTEL) values ('200','200','5','24');
REM INSERTING into ADMIN01.TBL_RESERVAS_PAGOS
SET DEFINE OFF;
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('1','1','150',to_date('05/01/24','DD/MM/RR'),'Tarjeta de Crédito','1','1','2','5');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('2','2','200',to_date('06/01/24','DD/MM/RR'),'PayPal','2','2','1','8');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('3','3','300',to_date('07/01/24','DD/MM/RR'),'Tarjeta de Débito','3','3','4','12');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('4','4','450',to_date('08/01/24','DD/MM/RR'),'Efectivo','4','4','3','15');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('5','5','275,5',to_date('09/01/24','DD/MM/RR'),'Tarjeta de Crédito','5','5','6','19');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('7','6','325',to_date('11/01/24','DD/MM/RR'),'PayPal','7','7','8','25');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('8','7','500',to_date('12/01/24','DD/MM/RR'),'Tarjeta de Débito','8','8','7','28');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('9','8','250',to_date('13/01/24','DD/MM/RR'),'Efectivo','9','9','10','32');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('10','9','120',to_date('14/01/24','DD/MM/RR'),'Tarjeta de Crédito','10','10','9','35');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('12','10','300',to_date('16/01/24','DD/MM/RR'),'PayPal','12','12','11','6');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('13','11','275',to_date('17/01/24','DD/MM/RR'),'Tarjeta de Débito','13','13','14','9');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('14','12','190',to_date('18/01/24','DD/MM/RR'),'Efectivo','14','14','13','13');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('15','13','220,5',to_date('19/01/24','DD/MM/RR'),'Tarjeta de Crédito','15','15','16','16');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('17','14','145',to_date('21/01/24','DD/MM/RR'),'PayPal','17','17','18','23');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('18','15','530',to_date('22/01/24','DD/MM/RR'),'Tarjeta de Débito','18','18','17','26');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('19','16','330',to_date('23/01/24','DD/MM/RR'),'Efectivo','19','19','20','29');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('20','17','275',to_date('24/01/24','DD/MM/RR'),'Tarjeta de Crédito','20','20','19','33');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('22','18','480',to_date('26/01/24','DD/MM/RR'),'PayPal','22','22','21','7');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('23','19','315,5',to_date('27/01/24','DD/MM/RR'),'Tarjeta de Débito','23','23','24','10');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('24','20','100',to_date('28/01/24','DD/MM/RR'),'Efectivo','24','24','23','14');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('25','21','245',to_date('29/01/24','DD/MM/RR'),'Tarjeta de Crédito','25','25','26','17');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('27','22','190',to_date('31/01/24','DD/MM/RR'),'PayPal','27','27','28','24');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('28','23','550',to_date('01/02/24','DD/MM/RR'),'Tarjeta de Débito','28','28','27','27');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('29','24','380',to_date('02/02/24','DD/MM/RR'),'Efectivo','29','29','30','30');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('30','25','120',to_date('03/02/24','DD/MM/RR'),'Tarjeta de Crédito','30','30','29','34');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('32','26','250',to_date('05/02/24','DD/MM/RR'),'PayPal','32','32','31','6');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('33','27','180',to_date('06/02/24','DD/MM/RR'),'Tarjeta de Débito','33','33','34','10');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('34','28','400',to_date('07/02/24','DD/MM/RR'),'Efectivo','34','34','33','14');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('35','29','325',to_date('08/02/24','DD/MM/RR'),'Tarjeta de Crédito','35','35','36','18');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('37','30','290',to_date('10/02/24','DD/MM/RR'),'PayPal','37','37','38','26');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('38','31','150',to_date('11/02/24','DD/MM/RR'),'Tarjeta de Débito','38','38','37','30');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('39','32','275',to_date('12/02/24','DD/MM/RR'),'Efectivo','39','39','40','35');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('40','33','310',to_date('13/02/24','DD/MM/RR'),'Tarjeta de Crédito','40','40','39','5');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('42','34','210,5',to_date('15/02/24','DD/MM/RR'),'PayPal','42','2','6','11');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('43','35','315',to_date('16/02/24','DD/MM/RR'),'Tarjeta de Débito','43','3','7','16');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('44','36','145',to_date('17/02/24','DD/MM/RR'),'Efectivo','44','4','8','19');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('45','37','320',to_date('18/02/24','DD/MM/RR'),'Tarjeta de Crédito','45','5','9','23');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('47','38','190',to_date('20/02/24','DD/MM/RR'),'PayPal','47','7','11','31');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('48','39','365',to_date('21/02/24','DD/MM/RR'),'Tarjeta de Débito','48','8','12','34');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('49','40','425',to_date('22/02/24','DD/MM/RR'),'Efectivo','49','9','13','3');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('50','41','230',to_date('23/02/24','DD/MM/RR'),'Tarjeta de Crédito','50','10','14','6');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('52','42','290',to_date('25/02/24','DD/MM/RR'),'PayPal','52','12','16','12');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('53','43','180',to_date('26/02/24','DD/MM/RR'),'Tarjeta de Débito','53','13','17','15');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('54','44','400',to_date('27/02/24','DD/MM/RR'),'Efectivo','54','14','18','18');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('55','45','325',to_date('28/02/24','DD/MM/RR'),'Tarjeta de Crédito','55','15','19','21');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('57','46','290',to_date('02/03/24','DD/MM/RR'),'PayPal','57','17','21','27');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('58','47','150',to_date('03/03/24','DD/MM/RR'),'Tarjeta de Débito','58','18','22','30');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('59','48','275',to_date('04/03/24','DD/MM/RR'),'Efectivo','59','19','23','33');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('60','49','310',to_date('05/03/24','DD/MM/RR'),'Tarjeta de Crédito','60','20','24','36');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('62','50','250',to_date('07/03/24','DD/MM/RR'),'PayPal','62','22','26','5');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('63','51','180',to_date('08/03/24','DD/MM/RR'),'Tarjeta de Débito','63','23','27','8');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('64','52','400',to_date('09/03/24','DD/MM/RR'),'Efectivo','64','24','28','11');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('65','53','325',to_date('10/03/24','DD/MM/RR'),'Tarjeta de Crédito','65','25','29','14');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('67','54','290',to_date('12/03/24','DD/MM/RR'),'PayPal','67','27','31','20');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('68','55','150',to_date('13/03/24','DD/MM/RR'),'Tarjeta de Débito','68','28','32','23');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('69','56','275',to_date('14/03/24','DD/MM/RR'),'Efectivo','69','29','33','26');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('70','57','310',to_date('15/03/24','DD/MM/RR'),'Tarjeta de Crédito','70','30','34','29');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('72','58','310',to_date('17/03/24','DD/MM/RR'),'PayPal','72','32','36','7');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('73','59','230',to_date('18/03/24','DD/MM/RR'),'Tarjeta de Débito','73','33','37','10');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('74','60','390',to_date('19/03/24','DD/MM/RR'),'Efectivo','74','34','38','13');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('75','61','285',to_date('20/03/24','DD/MM/RR'),'Tarjeta de Crédito','75','35','39','16');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('77','62','250',to_date('22/03/24','DD/MM/RR'),'PayPal','77','37','1','22');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('78','63','170',to_date('23/03/24','DD/MM/RR'),'Tarjeta de Débito','78','38','2','25');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('79','64','270',to_date('24/03/24','DD/MM/RR'),'Efectivo','79','39','3','28');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('80','65','300',to_date('25/03/24','DD/MM/RR'),'Tarjeta de Crédito','80','40','4','31');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('82','66','280',to_date('27/03/24','DD/MM/RR'),'PayPal','82','6','11','9');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('83','67','250',to_date('28/03/24','DD/MM/RR'),'Tarjeta de Débito','83','7','12','12');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('84','68','410',to_date('29/03/24','DD/MM/RR'),'Efectivo','84','8','13','15');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('85','69','320',to_date('30/03/24','DD/MM/RR'),'Tarjeta de Crédito','85','9','14','18');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('87','70','260',to_date('01/04/24','DD/MM/RR'),'PayPal','87','11','16','24');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('88','71','190',to_date('02/04/24','DD/MM/RR'),'Tarjeta de Débito','88','12','17','27');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('89','72','330',to_date('03/04/24','DD/MM/RR'),'Efectivo','89','13','18','30');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('90','73','300',to_date('04/04/24','DD/MM/RR'),'Tarjeta de Crédito','90','14','19','33');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('92','74','275,5',to_date('06/04/24','DD/MM/RR'),'PayPal','92','16','21','5');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('93','75','200',to_date('07/04/24','DD/MM/RR'),'Tarjeta de Débito','93','17','22','8');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('94','76','420',to_date('08/04/24','DD/MM/RR'),'Efectivo','94','18','23','11');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('95','77','295',to_date('09/04/24','DD/MM/RR'),'Tarjeta de Crédito','95','19','24','14');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('97','78','315',to_date('11/04/24','DD/MM/RR'),'PayPal','97','21','26','20');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('98','79','240',to_date('12/04/24','DD/MM/RR'),'Tarjeta de Débito','98','22','27','23');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('99','80','355',to_date('13/04/24','DD/MM/RR'),'Efectivo','99','23','28','26');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('100','81','280',to_date('14/04/24','DD/MM/RR'),'Tarjeta de Crédito','100','24','29','29');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('102','82','285',to_date('16/04/24','DD/MM/RR'),'PayPal','102','26','31','6');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('103','83','210',to_date('17/04/24','DD/MM/RR'),'Tarjeta de Débito','103','27','32','9');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('104','84','375',to_date('18/04/24','DD/MM/RR'),'Efectivo','104','28','33','12');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('105','85','250',to_date('19/04/24','DD/MM/RR'),'Tarjeta de Crédito','105','29','34','15');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('107','86','300',to_date('21/04/24','DD/MM/RR'),'PayPal','107','31','36','21');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('108','87','185',to_date('22/04/24','DD/MM/RR'),'Tarjeta de Débito','108','32','37','24');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('109','88','320',to_date('23/04/24','DD/MM/RR'),'Efectivo','109','33','38','27');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('110','89','280',to_date('24/04/24','DD/MM/RR'),'Tarjeta de Crédito','110','34','39','30');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('112','90','270',to_date('26/04/24','DD/MM/RR'),'PayPal','112','36','1','5');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('113','91','230',to_date('27/04/24','DD/MM/RR'),'Tarjeta de Débito','113','37','2','8');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('114','92','365',to_date('28/04/24','DD/MM/RR'),'Efectivo','114','38','3','11');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('115','93','300',to_date('29/04/24','DD/MM/RR'),'Tarjeta de Crédito','115','39','4','14');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('117','94','350',to_date('01/05/24','DD/MM/RR'),'PayPal','117','1','6','20');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('118','95','220',to_date('02/05/24','DD/MM/RR'),'Tarjeta de Débito','118','2','7','23');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('119','96','350',to_date('03/05/24','DD/MM/RR'),'Efectivo','119','3','8','26');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('120','97','290',to_date('04/05/24','DD/MM/RR'),'Tarjeta de Crédito','120','4','9','29');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('121','98','320',to_date('05/05/24','DD/MM/RR'),'Tarjeta de Crédito','121','6','15','4');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('123','99','295,5',to_date('07/05/24','DD/MM/RR'),'PayPal','123','8','17','10');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('124','100','210',to_date('08/05/24','DD/MM/RR'),'Tarjeta de Débito','124','9','18','13');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('125','101','380',to_date('09/05/24','DD/MM/RR'),'Efectivo','125','10','19','16');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('126','102','340',to_date('10/05/24','DD/MM/RR'),'Tarjeta de Crédito','126','11','20','19');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('128','103','275',to_date('12/05/24','DD/MM/RR'),'PayPal','128','13','22','25');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('129','104','190',to_date('13/05/24','DD/MM/RR'),'Tarjeta de Débito','129','14','23','28');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('130','105','360',to_date('14/05/24','DD/MM/RR'),'Efectivo','130','15','24','31');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('131','106','310',to_date('15/05/24','DD/MM/RR'),'Tarjeta de Crédito','131','16','25','2');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('133','107','290',to_date('17/05/24','DD/MM/RR'),'PayPal','133','18','27','8');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('134','108','200',to_date('18/05/24','DD/MM/RR'),'Tarjeta de Débito','134','19','28','11');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('135','109','400',to_date('19/05/24','DD/MM/RR'),'Efectivo','135','20','29','14');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('136','110','335',to_date('20/05/24','DD/MM/RR'),'Tarjeta de Crédito','136','21','30','17');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('138','111','310',to_date('22/05/24','DD/MM/RR'),'PayPal','138','23','32','23');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('139','112','230',to_date('23/05/24','DD/MM/RR'),'Tarjeta de Débito','139','24','33','26');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('140','113','385',to_date('24/05/24','DD/MM/RR'),'Efectivo','140','25','34','29');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('141','114','300',to_date('25/05/24','DD/MM/RR'),'Tarjeta de Crédito','141','26','35','3');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('143','115','330',to_date('27/05/24','DD/MM/RR'),'PayPal','143','28','37','9');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('144','116','240',to_date('28/05/24','DD/MM/RR'),'Tarjeta de Débito','144','29','38','12');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('145','117','370',to_date('29/05/24','DD/MM/RR'),'Efectivo','145','30','39','15');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('146','118','280',to_date('30/05/24','DD/MM/RR'),'Tarjeta de Crédito','146','31','40','18');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('148','119','315',to_date('01/06/24','DD/MM/RR'),'PayPal','148','33','2','24');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('149','120','220',to_date('02/06/24','DD/MM/RR'),'Tarjeta de Débito','149','34','3','27');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('150','121','345',to_date('03/06/24','DD/MM/RR'),'Efectivo','150','35','4','30');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('151','122','310',to_date('04/06/24','DD/MM/RR'),'Tarjeta de Crédito','151','36','5','2');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('153','123','275',to_date('06/06/24','DD/MM/RR'),'PayPal','153','38','7','8');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('154','124','210',to_date('07/06/24','DD/MM/RR'),'Tarjeta de Débito','154','39','8','11');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('155','125','390',to_date('08/06/24','DD/MM/RR'),'Efectivo','155','40','9','14');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('156','126','320',to_date('09/06/24','DD/MM/RR'),'Tarjeta de Crédito','156','1','10','17');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('158','127','290',to_date('11/06/24','DD/MM/RR'),'PayPal','158','3','12','23');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('159','128','190',to_date('12/06/24','DD/MM/RR'),'Tarjeta de Débito','159','4','13','26');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('160','129','360',to_date('13/06/24','DD/MM/RR'),'Efectivo','160','5','14','29');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('161','130','380',to_date('14/06/24','DD/MM/RR'),'Tarjeta de Crédito','161','6','25','4');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('163','131','310',to_date('16/06/24','DD/MM/RR'),'PayPal','163','8','27','10');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('164','132','220',to_date('17/06/24','DD/MM/RR'),'Tarjeta de Débito','164','9','28','13');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('165','133','400',to_date('18/06/24','DD/MM/RR'),'Efectivo','165','10','29','16');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('166','134','320',to_date('19/06/24','DD/MM/RR'),'Tarjeta de Crédito','166','11','30','19');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('168','135','275,5',to_date('21/06/24','DD/MM/RR'),'PayPal','168','13','32','25');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('169','136','200',to_date('22/06/24','DD/MM/RR'),'Tarjeta de Débito','169','14','33','28');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('170','137','355',to_date('23/06/24','DD/MM/RR'),'Efectivo','170','15','34','31');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('171','138','285',to_date('24/06/24','DD/MM/RR'),'Tarjeta de Crédito','171','16','35','2');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('173','139','340',to_date('26/06/24','DD/MM/RR'),'PayPal','173','18','37','8');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('174','140','220',to_date('27/06/24','DD/MM/RR'),'Tarjeta de Débito','174','19','38','11');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('175','141','390',to_date('28/06/24','DD/MM/RR'),'Efectivo','175','20','39','14');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('176','142','310',to_date('29/06/24','DD/MM/RR'),'Tarjeta de Crédito','176','21','40','17');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('178','143','290',to_date('01/07/24','DD/MM/RR'),'PayPal','178','23','2','23');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('179','144','210',to_date('02/07/24','DD/MM/RR'),'Tarjeta de Débito','179','24','3','26');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('180','145','365',to_date('03/07/24','DD/MM/RR'),'Efectivo','180','25','4','29');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('181','146','300',to_date('04/07/24','DD/MM/RR'),'Tarjeta de Crédito','181','26','5','3');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('183','147','330',to_date('06/07/24','DD/MM/RR'),'PayPal','183','28','7','9');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('184','148','230',to_date('07/07/24','DD/MM/RR'),'Tarjeta de Débito','184','29','8','12');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('185','149','385',to_date('08/07/24','DD/MM/RR'),'Efectivo','185','30','9','15');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('186','150','250',to_date('09/07/24','DD/MM/RR'),'Tarjeta de Crédito','186','31','10','18');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('188','151','315',to_date('11/07/24','DD/MM/RR'),'PayPal','188','33','12','24');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('189','152','180',to_date('12/07/24','DD/MM/RR'),'Tarjeta de Débito','189','34','13','27');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('190','153','340',to_date('13/07/24','DD/MM/RR'),'Efectivo','190','35','14','30');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('191','154','280',to_date('14/07/24','DD/MM/RR'),'Tarjeta de Crédito','191','36','15','2');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('193','155','260',to_date('16/07/24','DD/MM/RR'),'PayPal','193','38','17','8');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('194','156','200',to_date('17/07/24','DD/MM/RR'),'Tarjeta de Débito','194','39','18','11');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('195','157','400',to_date('18/07/24','DD/MM/RR'),'Efectivo','195','40','19','14');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('196','158','310',to_date('19/07/24','DD/MM/RR'),'Tarjeta de Crédito','196','1','20','17');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('198','159','280',to_date('21/07/24','DD/MM/RR'),'PayPal','198','3','22','23');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('199','160','220',to_date('22/07/24','DD/MM/RR'),'Tarjeta de Débito','199','4','23','26');
Insert into ADMIN01.TBL_RESERVAS_PAGOS (ID_RESERVA,ID_PAGO,MONTO,FECHA_PAGO,METODO_PAGO,ID_CLIENTE,ID_VUELO,ID_HOTEL,ID_TOUR) values ('200','161','370',to_date('23/07/24','DD/MM/RR'),'Efectivo','200','5','24','29');
REM INSERTING into ADMIN01.TBL_RESERVAS_TOURS
SET DEFINE OFF;
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('1','1','5');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('2','2','8');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('3','3','12');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('4','4','15');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('5','5','19');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('6','6','22');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('7','7','25');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('8','8','28');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('9','9','32');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('10','10','35');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('11','11','3');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('12','12','6');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('13','13','9');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('14','14','13');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('15','15','16');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('16','16','20');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('17','17','23');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('18','18','26');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('19','19','29');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('20','20','33');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('21','21','4');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('22','22','7');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('23','23','10');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('24','24','14');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('25','25','17');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('26','26','21');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('27','27','24');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('28','28','27');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('29','29','30');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('30','30','34');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('31','31','2');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('32','32','6');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('33','33','10');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('34','34','14');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('35','35','18');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('36','36','22');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('37','37','26');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('38','38','30');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('39','39','35');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('40','40','5');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('41','41','7');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('42','42','11');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('43','43','16');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('44','44','19');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('45','45','23');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('46','46','26');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('47','47','31');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('48','48','34');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('49','49','3');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('50','50','6');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('51','51','9');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('52','52','12');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('53','53','15');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('54','54','18');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('55','55','21');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('56','56','24');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('57','57','27');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('58','58','30');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('59','59','33');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('60','60','36');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('61','61','2');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('62','62','5');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('63','63','8');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('64','64','11');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('65','65','14');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('66','66','17');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('67','67','20');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('68','68','23');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('69','69','26');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('70','70','29');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('71','71','4');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('72','72','7');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('73','73','10');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('74','74','13');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('75','75','16');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('76','76','19');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('77','77','22');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('78','78','25');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('79','79','28');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('80','80','31');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('81','81','6');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('82','82','9');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('83','83','12');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('84','84','15');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('85','85','18');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('86','86','21');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('87','87','24');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('88','88','27');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('89','89','30');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('90','90','33');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('91','91','2');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('92','92','5');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('93','93','8');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('94','94','11');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('95','95','14');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('96','96','17');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('97','97','20');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('98','98','23');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('99','99','26');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('100','100','29');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('101','101','3');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('102','102','6');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('103','103','9');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('104','104','12');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('105','105','15');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('106','106','18');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('107','107','21');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('108','108','24');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('109','109','27');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('110','110','30');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('111','111','2');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('112','112','5');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('113','113','8');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('114','114','11');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('115','115','14');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('116','116','17');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('117','117','20');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('118','118','23');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('119','119','26');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('120','120','29');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('121','121','4');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('122','122','7');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('123','123','10');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('124','124','13');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('125','125','16');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('126','126','19');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('127','127','22');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('128','128','25');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('129','129','28');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('130','130','31');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('131','131','2');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('132','132','5');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('133','133','8');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('134','134','11');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('135','135','14');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('136','136','17');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('137','137','20');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('138','138','23');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('139','139','26');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('140','140','29');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('141','141','3');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('142','142','6');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('143','143','9');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('144','144','12');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('145','145','15');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('146','146','18');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('147','147','21');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('148','148','24');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('149','149','27');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('150','150','30');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('151','151','2');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('152','152','5');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('153','153','8');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('154','154','11');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('155','155','14');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('156','156','17');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('157','157','20');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('158','158','23');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('159','159','26');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('160','160','29');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('161','161','4');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('162','162','7');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('163','163','10');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('164','164','13');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('165','165','16');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('166','166','19');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('167','167','22');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('168','168','25');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('169','169','28');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('170','170','31');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('171','171','2');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('172','172','5');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('173','173','8');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('174','174','11');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('175','175','14');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('176','176','17');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('177','177','20');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('178','178','23');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('179','179','26');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('180','180','29');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('181','181','3');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('182','182','6');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('183','183','9');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('184','184','12');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('185','185','15');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('186','186','18');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('187','187','21');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('188','188','24');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('189','189','27');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('190','190','30');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('191','191','2');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('192','192','5');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('193','193','8');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('194','194','11');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('195','195','14');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('196','196','17');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('197','197','20');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('198','198','23');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('199','199','26');
Insert into ADMIN01.TBL_RESERVAS_TOURS (ID_RESERVA_TOUR,ID_RESERVA,ID_TOUR) values ('200','200','29');
REM INSERTING into ADMIN01.TBL_TOURS
SET DEFINE OFF;
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('136','Tour en barco por el Mar Egeo','7','500');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('137','Exploración del Parque Nacional Rapa Nui','5','450');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('138','Ruta por las Highlands escocesas','6','300');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('139','Tour por las ruinas de Pompeya','4','180');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('140','Ruta de trekking por los Andes','8','600');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('141','Tour en globo por los valles de Turquía','3','280');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('142','Exploración de la costa Amalfitana','5','320');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('143','Safari en el Parque Nacional Chobe','7','700');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('144','Tour por el desierto del Sahara','6','400');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('145','Ruta por los canales de Brujas','3','150');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('146','Excursión al Monte Fuji','4','250');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('147','Tour por los lagos de Plitvice','5','200');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('148','Crucero por la Antártida','10','1500');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('149','Ruta de cata de quesos en Suiza','3','180');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('150','Tour por los monasterios de Armenia','4','160');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('151','Ruta de las cascadas en Islandia','6','400');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('152','Tour arqueológico en Pompeya y Herculano','5','240');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('153','Paseo en tren por el Cañón del Colorado','5','350');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('154','Exploración de las ruinas de Chichén Itzá','4','180');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('155','Crucero por el Mediterráneo','7','850');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('156','Tour por los templos de Luxor','5','300');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('157','Safari nocturno en Kenia','4','450');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('158','Tour por las Highlands de Islandia','6','550');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('159','Exploración de las cuevas de Waitomo','3','220');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('160','Ruta de trekking en Torres del Paine','7','600');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('161','Visita al Kremlin y Plaza Roja','3','150');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('162','Tour por los campos de tulipanes en Holanda','2','100');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('163','Crucero por las islas Maldivas','6','1200');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('164','Paseo en globo por los campos de la Toscana','3','350');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('165','Tour por el Valle Sagrado de los Incas','5','300');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('166','Recorrido por la Gran Ruta Oceánica','4','250');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('167','Tour por el Parque Nacional Everglades','3','150');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('168','Ruta por los castillos de Transilvania','5','220');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('169','Exploración del desierto de Atacama','6','400');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('170','Ruta en bicicleta por Ámsterdam','3','120');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('171','Tour por el lago Titicaca','5','250');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('1','Tour por las Pirámides de Egipto','8','150');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('2','Safari en el Serengeti','12','300');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('3','Crucero por los canales de Venecia','2','80');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('4','Recorrido por la Gran Muralla China','7','220');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('5','Excursión al Machu Picchu','10','250');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('6','Visita a la Torre Eiffel y Louvre','6','180');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('7','Tour de vinos en Napa Valley','5','120');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('8','Exploración del Amazonas','12','400');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('9','Caminata por el Parque Nacional Torres del Paine','8','300');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('10','Tour histórico en Roma','5','140');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('11','Excursión al Taj Mahal','6','200');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('12','Snorkel en la Gran Barrera de Coral','7','180');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('13','Tour nocturno en Tokio','4','100');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('14','Recorrido por las Cataratas del Niágara','5','90');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('15','Expedición al Monte Everest','10','500');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('16','Tour por los templos de Angkor','7','210');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('17','Recorrido por Nueva York','6','130');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('18','Ruta por la Toscana','8','200');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('19','Tour por la Ruta 66','12','400');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('20','Excursión al Glaciar Perito Moreno','7','150');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('21','Paseo por la Bahía de San Francisco','3','70');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('22','Tour gastronómico en Bangkok','5','110');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('23','Crucero por las islas griegas','10','250');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('24','Tour en globo aerostático en Cappadocia','3','180');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('25','Recorrido por el desierto del Sahara','15','350');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('26','Exploración de la Antártida','20','1200');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('27','Paseo en tren por los Alpes suizos','7','220');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('28','Tour cultural en Kioto','6','180');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('29','Excursión a la Isla de Pascua','8','400');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('30','Aventura en la Selva Negra','5','140');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('31','Safari nocturno en Sudáfrica','6','300');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('32','Exploración de cuevas en Vietnam','8','200');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('33','Tour por el Cañón del Antílope','4','120');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('34','Viaje al Polo Norte','15','1500');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('35','Tour arqueológico en Jordania','10','350');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('36','Caminata por el Camino de Santiago','15','600');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('37','Excursión a las Islas Galápagos','8','800');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('38','Tour de las auroras boreales en Noruega','6','350');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('39','Tour por las playas de Bali','6','180');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('40','Excursión al Gran Cañón','5','150');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('41','Crucero por los fiordos noruegos','10','500');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('42','Tour por las Highlands escocesas','8','250');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('43','Visita al Palacio de Versalles','4','100');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('44','Caminata por el Monte Fuji','10','300');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('45','Tour en bicicleta por Ámsterdam','4','70');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('46','Recorrido por los castillos del Loira','7','200');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('47','Safari en el desierto de Dubái','6','180');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('48','Tour en helicóptero sobre Nueva York','2','300');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('49','Paseo en globo sobre el Valle del Loira','3','250');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('50','Tour por los mercados de Marrakech','5','90');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('51','Excursión al Monte Kilimanjaro','12','500');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('52','Crucero por el río Nilo','8','400');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('53','Tour por el desierto de Atacama','7','250');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('54','Paseo por el centro histórico de Praga','3','70');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('55','Ruta de la cerveza en Múnich','5','120');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('56','Excursión a los Alpes franceses','6','250');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('57','Tour por el Lago Titicaca','7','150');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('58','Excursión a la Aurora Boreal en Islandia','5','300');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('59','Paseo en barco por el río Támesis','2','50');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('60','Recorrido por la Riviera Maya','8','200');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('61','Tour en la muralla de Dubrovnik','4','100');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('62','Crucero por el Mediterráneo','10','700');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('63','Visita al Parque Nacional Yellowstone','7','180');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('64','Tour cultural por Estambul','6','150');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('65','Excursión al Parque Nacional Banff','8','220');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('66','Tour en globo sobre Luxor','3','180');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('67','Ruta por los volcanes de Hawái','6','300');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('68','Safari fotográfico en Botswana','10','400');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('69','Recorrido en kayak por Halong Bay','5','180');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('70','Tour gastronómico por Italia','8','350');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('71','Paseo por los jardines de Keukenhof','4','90');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('72','Visita al Museo del Prado y el Retiro','5','100');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('73','Excursión al Volcán Arenal en Costa Rica','6','250');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('74','Tour por la ruta del chocolate en Suiza','6','200');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('75','Recorrido en glaciares en Alaska','8','350');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('76','Ruta por los templos de Kyoto y Nara','7','300');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('77','Tour por los Jardines de Butchart','3','80');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('78','Crucero por las Islas Galápagos','7','900');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('79','Recorrido en tren por los Alpes Suizos','6','400');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('80','Ruta de vinos en Napa Valley','5','250');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('81','Exploración de las Cataratas Victoria','4','180');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('82','Tour por los templos de Angkor Wat','6','220');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('83','Visita al Parque Nacional Kruger','7','500');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('84','Paseo en barco por Cinque Terre','5','150');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('85','Excursión a Machu Picchu','6','350');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('86','Tour por las dunas de Erg Chebbi','8','300');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('87','Excursión a la Gran Muralla China','5','200');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('88','Ruta por los monasterios de Meteora','6','180');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('89','Paseo en globo sobre Capadocia','3','250');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('90','Exploración de los fiordos chilenos','7','450');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('91','Tour por los templos de Bagan','5','220');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('92','Crucero por el Caribe','8','700');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('93','Tour en las ruinas de Petra','5','300');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('94','Tour por la ruta del whisky en Escocia','6','350');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('95','Visita al Parque Nacional Torres del Paine','7','400');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('96','Tour cultural en Ciudad de México','4','120');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('97','Recorrido por las islas de Croacia','6','350');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('98','Safari en el Parque Nacional Serengeti','7','600');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('99','Ruta de trekking en los Dolomitas','8','280');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('100','Visita a las islas de Seychelles','7','500');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('101','Tour histórico por Jerusalén','5','200');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('102','Excursión al Monte Everest','12','1200');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('103','Ruta por los campos de lavanda en Provenza','4','140');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('104','Tour por la Amazonía peruana','6','400');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('105','Excursión a las Blue Mountains','5','150');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('106','Paseo en barco por el Lago Baikal','5','200');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('107','Tour en los templos de Kyoto','5','250');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('108','Tour arqueológico en Egipto','7','400');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('109','Tour en bicicleta por Barcelona','4','120');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('110','Recorrido por la Selva Negra','6','250');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('111','Safari en el Parque Nacional Hwange','6','300');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('112','Ruta por los castillos de Baviera','5','200');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('113','Excursión a la Isla de Pascua','8','500');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('114','Tour por el Parque Nacional Yosemite','6','250');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('115','Crucero por el Nilo','6','450');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('116','Ruta del café en Colombia','4','120');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('117','Excursión a los fiordos noruegos','7','550');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('118','Recorrido por el Taj Mahal','4','300');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('119','Tour en kayak por Halong Bay','5','220');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('120','Trekking por el Cañón del Colca','6','280');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('121','Paseo en barco por el Danubio','5','300');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('122','Tour por los glaciares de Islandia','7','600');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('123','Ruta por los mercados flotantes de Tailandia','3','150');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('124','Exploración del Parque Yellowstone','5','250');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('125','Visita al Santuario de Lhasa','6','400');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('126','Safari en el Delta del Okavango','7','750');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('127','Tour por la Toscana italiana','5','320');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('128','Ruta por los castillos del Loira','4','200');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('129','Crucero por Alaska','7','800');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('130','Tour por los arrozales de Bali','3','180');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('131','Exploración de las Montañas Rocosas','6','300');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('132','Paseo por el Gran Cañón','4','180');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('133','Visita a la ciudad amurallada de Carcassonne','3','150');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('134','Excursión a la Aurora Boreal','5','400');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('135','Ruta por los volcanes de Hawái','6','350');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('172','Safari en el Parque Nacional Etosha','7','700');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('173','Exploración del Monte Kilimanjaro','10','1500');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('174','Tour por las cuevas de Postojna','3','200');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('175','Visita a la ciudad perdida de Tikal','4','280');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('176','Ruta de trekking en el Annapurna','12','1400');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('177','Tour en jeep por el Salar de Uyuni','4','350');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('178','Excursión a la Garganta de Verdon','3','180');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('179','Tour histórico por Praga','4','220');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('180','Ruta de vinos en Mendoza','5','300');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('181','Tour por los fiordos de Milford Sound','4','280');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('182','Visita a las ruinas de Éfeso','3','200');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('183','Tour por el Parque Nacional de Iguazú','4','300');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('184','Exploración del Valle de los Reyes','5','350');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('185','Ruta de senderismo en el Mont Blanc','7','600');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('186','Paseo por el Puente Golden Gate','2','100');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('187','Visita a las islas Faroe','6','500');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('188','Ruta por los monasterios de Georgia','4','180');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('189','Tour por las playas de Seychelles','5','700');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('190','Exploración de las selvas de Borneo','6','400');
Insert into ADMIN01.TBL_TOURS (ID_TOUR,NOMBRE,DURACION,PRECIO) values ('191','Ruta por los campos de lavanda en Provenza','3','150');
REM INSERTING into ADMIN01.TBL_VUELOS
SET DEFINE OFF;
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('1','Delta Airlines','New York','Los Angeles',to_date('20/12/24','DD/MM/RR'),to_date('20/12/24','DD/MM/RR'),'350,5');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('2','American Airlines','Miami','Chicago',to_date('21/12/24','DD/MM/RR'),to_date('21/12/24','DD/MM/RR'),'200,75');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('3','United Airlines','Houston','Denver',to_date('22/12/24','DD/MM/RR'),to_date('22/12/24','DD/MM/RR'),'180,3');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('4','Southwest Airlines','San Francisco','Seattle',to_date('23/12/24','DD/MM/RR'),to_date('23/12/24','DD/MM/RR'),'120,9');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('5','JetBlue','Boston','Orlando',to_date('24/12/24','DD/MM/RR'),to_date('24/12/24','DD/MM/RR'),'250,6');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('6','Alaska Airlines','Portland','Anchorage',to_date('25/12/24','DD/MM/RR'),to_date('25/12/24','DD/MM/RR'),'400');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('7','Spirit Airlines','Dallas','Atlanta',to_date('26/12/24','DD/MM/RR'),to_date('26/12/24','DD/MM/RR'),'99,99');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('8','Frontier Airlines','Phoenix','Las Vegas',to_date('27/12/24','DD/MM/RR'),to_date('27/12/24','DD/MM/RR'),'80');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('9','Hawaiian Airlines','Honolulu','Maui',to_date('28/12/24','DD/MM/RR'),to_date('28/12/24','DD/MM/RR'),'150,5');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('10','Allegiant Air','Tampa','Nashville',to_date('29/12/24','DD/MM/RR'),to_date('29/12/24','DD/MM/RR'),'120,75');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('11','Volaris','Ciudad de México','Cancún',to_date('30/12/24','DD/MM/RR'),to_date('30/12/24','DD/MM/RR'),'180,5');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('12','AeroMéxico','Guadalajara','Tijuana',to_date('31/12/24','DD/MM/RR'),to_date('31/12/24','DD/MM/RR'),'210,99');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('13','Interjet','Monterrey','Hermosillo',to_date('19/12/24','DD/MM/RR'),to_date('19/12/24','DD/MM/RR'),'130,5');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('14','Delta Airlines','Atlanta','Miami',to_date('20/12/24','DD/MM/RR'),to_date('20/12/24','DD/MM/RR'),'170,25');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('15','United Airlines','San Diego','San Jose',to_date('18/12/24','DD/MM/RR'),to_date('18/12/24','DD/MM/RR'),'160');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('16','LATAM Airlines','Lima','Bogotá',to_date('01/01/25','DD/MM/RR'),to_date('01/01/25','DD/MM/RR'),'300,5');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('17','Copa Airlines','Panamá','San José',to_date('02/01/25','DD/MM/RR'),to_date('02/01/25','DD/MM/RR'),'220');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('18','Iberia','Madrid','Barcelona',to_date('03/01/25','DD/MM/RR'),to_date('03/01/25','DD/MM/RR'),'150,75');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('19','Air France','París','Roma',to_date('04/01/25','DD/MM/RR'),to_date('04/01/25','DD/MM/RR'),'260,4');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('20','Lufthansa','Berlín','Munich',to_date('05/01/25','DD/MM/RR'),to_date('05/01/25','DD/MM/RR'),'180,1');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('21','British Airways','Londres','Dublín',to_date('06/01/25','DD/MM/RR'),to_date('06/01/25','DD/MM/RR'),'170');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('22','Emirates','Dubái','Singapur',to_date('07/01/25','DD/MM/RR'),to_date('07/01/25','DD/MM/RR'),'750,5');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('23','Qatar Airways','Doha','Bangkok',to_date('08/01/25','DD/MM/RR'),to_date('08/01/25','DD/MM/RR'),'680,75');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('24','Avianca','Bogotá','Medellín',to_date('09/01/25','DD/MM/RR'),to_date('09/01/25','DD/MM/RR'),'100');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('25','LATAM Airlines','Santiago','Lima',to_date('10/01/25','DD/MM/RR'),to_date('10/01/25','DD/MM/RR'),'200');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('26','Copa Airlines','Ciudad de Panamá','Cancún',to_date('11/01/25','DD/MM/RR'),to_date('11/01/25','DD/MM/RR'),'300');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('27','Delta Airlines','New York','Miami',to_date('12/01/25','DD/MM/RR'),to_date('12/01/25','DD/MM/RR'),'150,5');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('28','American Airlines','Chicago','Dallas',to_date('13/01/25','DD/MM/RR'),to_date('13/01/25','DD/MM/RR'),'120');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('29','United Airlines','Los Angeles','Seattle',to_date('14/01/25','DD/MM/RR'),to_date('14/01/25','DD/MM/RR'),'200');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('30','Alaska Airlines','Anchorage','Fairbanks',to_date('15/01/25','DD/MM/RR'),to_date('15/01/25','DD/MM/RR'),'300');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('31','JetBlue','Boston','Newark',to_date('16/01/25','DD/MM/RR'),to_date('16/01/25','DD/MM/RR'),'100,5');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('32','Volaris','Guadalajara','Ciudad de México',to_date('17/01/25','DD/MM/RR'),to_date('17/01/25','DD/MM/RR'),'110,75');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('33','AeroMéxico','Monterrey','Cancún',to_date('18/01/25','DD/MM/RR'),to_date('18/01/25','DD/MM/RR'),'250');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('34','Southwest Airlines','San Diego','Las Vegas',to_date('19/01/25','DD/MM/RR'),to_date('19/01/25','DD/MM/RR'),'90');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('35','Spirit Airlines','Dallas','Orlando',to_date('20/01/25','DD/MM/RR'),to_date('20/01/25','DD/MM/RR'),'80');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('36','Frontier Airlines','Atlanta','Tampa',to_date('21/01/25','DD/MM/RR'),to_date('21/01/25','DD/MM/RR'),'70');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('37','Hawaiian Airlines','Honolulu','Kona',to_date('22/01/25','DD/MM/RR'),to_date('22/01/25','DD/MM/RR'),'200');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('38','Allegiant Air','Tampa','Charlotte',to_date('23/01/25','DD/MM/RR'),to_date('23/01/25','DD/MM/RR'),'180');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('39','Emirates','Dubái','Melbourne',to_date('24/01/25','DD/MM/RR'),to_date('24/01/25','DD/MM/RR'),'900');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('40','Qatar Airways','Doha','Manila',to_date('25/01/25','DD/MM/RR'),to_date('25/01/25','DD/MM/RR'),'850');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('41','Iberia','Madrid','Lisboa',to_date('26/01/25','DD/MM/RR'),to_date('26/01/25','DD/MM/RR'),'180');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('42','Air France','París','Amsterdam',to_date('27/01/25','DD/MM/RR'),to_date('27/01/25','DD/MM/RR'),'200');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('43','Lufthansa','Frankfurt','Vienna',to_date('28/01/25','DD/MM/RR'),to_date('28/01/25','DD/MM/RR'),'220');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('44','British Airways','Londres','Nueva York',to_date('01/02/25','DD/MM/RR'),to_date('01/02/25','DD/MM/RR'),'750');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('45','Air Canada','Toronto','Vancouver',to_date('02/02/25','DD/MM/RR'),to_date('02/02/25','DD/MM/RR'),'400');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('46','KLM','Amsterdam','Tokio',to_date('03/02/25','DD/MM/RR'),to_date('04/02/25','DD/MM/RR'),'980');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('47','Air Asia','Bangkok','Singapur',to_date('04/02/25','DD/MM/RR'),to_date('04/02/25','DD/MM/RR'),'120');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('48','Qantas','Sídney','Auckland',to_date('05/02/25','DD/MM/RR'),to_date('05/02/25','DD/MM/RR'),'310');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('49','Lufthansa','Berlín','Estocolmo',to_date('06/02/25','DD/MM/RR'),to_date('06/02/25','DD/MM/RR'),'240');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('50','AeroMéxico','Ciudad de México','Tijuana',to_date('07/02/25','DD/MM/RR'),to_date('07/02/25','DD/MM/RR'),'230');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('51','Volaris','Ciudad de México','Mérida',to_date('08/02/25','DD/MM/RR'),to_date('08/02/25','DD/MM/RR'),'150');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('52','Delta Airlines','Los Ángeles','Atlanta',to_date('09/02/25','DD/MM/RR'),to_date('09/02/25','DD/MM/RR'),'320');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('53','Southwest Airlines','Houston','Phoenix',to_date('10/02/25','DD/MM/RR'),to_date('10/02/25','DD/MM/RR'),'170');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('54','United Airlines','Denver','Salt Lake City',to_date('11/02/25','DD/MM/RR'),to_date('11/02/25','DD/MM/RR'),'180');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('55','Alaska Airlines','Portland','Las Vegas',to_date('12/02/25','DD/MM/RR'),to_date('12/02/25','DD/MM/RR'),'190');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('56','Spirit Airlines','Miami','Charlotte',to_date('13/02/25','DD/MM/RR'),to_date('13/02/25','DD/MM/RR'),'110');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('57','Avianca','Medellín','Quito',to_date('14/02/25','DD/MM/RR'),to_date('14/02/25','DD/MM/RR'),'210');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('58','LATAM Airlines','Buenos Aires','Santiago',to_date('15/02/25','DD/MM/RR'),to_date('15/02/25','DD/MM/RR'),'350');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('59','Copa Airlines','Panamá','Lima',to_date('16/02/25','DD/MM/RR'),to_date('16/02/25','DD/MM/RR'),'400');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('60','JetBlue','Nueva York','Orlando',to_date('17/02/25','DD/MM/RR'),to_date('17/02/25','DD/MM/RR'),'140');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('61','British Airways','Londres','Barcelona',to_date('18/02/25','DD/MM/RR'),to_date('18/02/25','DD/MM/RR'),'300');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('62','Air France','París','Roma',to_date('19/02/25','DD/MM/RR'),to_date('19/02/25','DD/MM/RR'),'280');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('63','KLM','Amsterdam','Madrid',to_date('20/02/25','DD/MM/RR'),to_date('20/02/25','DD/MM/RR'),'310');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('64','Qatar Airways','Doha','Dubái',to_date('21/02/25','DD/MM/RR'),to_date('21/02/25','DD/MM/RR'),'410');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('65','Qantas','Melbourne','Brisbane',to_date('22/02/25','DD/MM/RR'),to_date('22/02/25','DD/MM/RR'),'240');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('66','Emirates','Dubái','Ciudad del Cabo',to_date('23/02/25','DD/MM/RR'),to_date('23/02/25','DD/MM/RR'),'780');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('67','American Airlines','Dallas','San Francisco',to_date('24/02/25','DD/MM/RR'),to_date('24/02/25','DD/MM/RR'),'390');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('68','LATAM Airlines','Lima','Bogotá',to_date('25/02/25','DD/MM/RR'),to_date('25/02/25','DD/MM/RR'),'320');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('69','Volaris','Tijuana','Monterrey',to_date('26/02/25','DD/MM/RR'),to_date('26/02/25','DD/MM/RR'),'270');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('70','Hawaiian Airlines','Honolulu','Maui',to_date('27/02/25','DD/MM/RR'),to_date('27/02/25','DD/MM/RR'),'190');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('71','Turkish Airlines','Estambul','Atenas',to_date('01/02/25','DD/MM/RR'),to_date('01/02/25','DD/MM/RR'),'250');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('72','KLM','Amsterdam','Copenhague',to_date('02/02/25','DD/MM/RR'),to_date('02/02/25','DD/MM/RR'),'220');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('73','Aeroflot','Moscú','San Petersburgo',to_date('03/02/25','DD/MM/RR'),to_date('03/02/25','DD/MM/RR'),'150');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('74','British Airways','Londres','Edimburgo',to_date('04/02/25','DD/MM/RR'),to_date('04/02/25','DD/MM/RR'),'180');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('75','Swiss Air','Zúrich','Ginebra',to_date('05/02/25','DD/MM/RR'),to_date('05/02/25','DD/MM/RR'),'170');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('76','Scandinavian Airlines','Estocolmo','Oslo',to_date('06/02/25','DD/MM/RR'),to_date('06/02/25','DD/MM/RR'),'160');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('77','Air India','Nueva Delhi','Bombay',to_date('07/02/25','DD/MM/RR'),to_date('07/02/25','DD/MM/RR'),'100');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('78','Japan Airlines','Tokio','Osaka',to_date('08/02/25','DD/MM/RR'),to_date('08/02/25','DD/MM/RR'),'120');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('79','Cathay Pacific','Hong Kong','Singapur',to_date('09/02/25','DD/MM/RR'),to_date('09/02/25','DD/MM/RR'),'300');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('80','China Southern','Pekín','Shanghái',to_date('10/02/25','DD/MM/RR'),to_date('10/02/25','DD/MM/RR'),'220');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('81','Qantas','Sídney','Brisbane',to_date('11/02/25','DD/MM/RR'),to_date('11/02/25','DD/MM/RR'),'150');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('82','Air New Zealand','Auckland','Wellington',to_date('12/02/25','DD/MM/RR'),to_date('12/02/25','DD/MM/RR'),'130');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('83','Thai Airways','Bangkok','Phuket',to_date('13/02/25','DD/MM/RR'),to_date('13/02/25','DD/MM/RR'),'110');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('84','Singapore Airlines','Singapur','Kuala Lumpur',to_date('14/02/25','DD/MM/RR'),to_date('14/02/25','DD/MM/RR'),'90');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('85','Virgin Atlantic','Londres','Nueva York',to_date('15/02/25','DD/MM/RR'),to_date('15/02/25','DD/MM/RR'),'450');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('86','Etihad Airways','Abu Dhabi','El Cairo',to_date('16/02/25','DD/MM/RR'),to_date('16/02/25','DD/MM/RR'),'350');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('87','Ethiopian Airlines','Addis Ababa','Nairobi',to_date('17/02/25','DD/MM/RR'),to_date('17/02/25','DD/MM/RR'),'200');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('88','South African Airways','Johannesburgo','Ciudad del Cabo',to_date('18/02/25','DD/MM/RR'),to_date('18/02/25','DD/MM/RR'),'180');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('89','Gol Linhas Aéreas','Río de Janeiro','São Paulo',to_date('19/02/25','DD/MM/RR'),to_date('19/02/25','DD/MM/RR'),'150');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('90','Azul Airlines','Belo Horizonte','Brasilia',to_date('20/02/25','DD/MM/RR'),to_date('20/02/25','DD/MM/RR'),'120');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('91','Air Canada','Toronto','Vancouver',to_date('21/02/25','DD/MM/RR'),to_date('21/02/25','DD/MM/RR'),'350');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('92','WestJet','Calgary','Edmonton',to_date('22/02/25','DD/MM/RR'),to_date('22/02/25','DD/MM/RR'),'150');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('93','Alitalia','Roma','Milán',to_date('23/02/25','DD/MM/RR'),to_date('23/02/25','DD/MM/RR'),'200');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('94','Austrian Airlines','Viena','Praga',to_date('24/02/25','DD/MM/RR'),to_date('24/02/25','DD/MM/RR'),'180');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('95','Tap Air Portugal','Lisboa','Madrid',to_date('25/02/25','DD/MM/RR'),to_date('25/02/25','DD/MM/RR'),'220');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('96','Air Europa','Barcelona','Valencia',to_date('26/02/25','DD/MM/RR'),to_date('26/02/25','DD/MM/RR'),'90');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('97','Vueling','Sevilla','Bilbao',to_date('27/02/25','DD/MM/RR'),to_date('27/02/25','DD/MM/RR'),'110');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('98','Ryanair','Dublín','Londres',to_date('28/02/25','DD/MM/RR'),to_date('28/02/25','DD/MM/RR'),'70');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('99','EasyJet','Londres','Berlín',to_date('01/03/25','DD/MM/RR'),to_date('01/03/25','DD/MM/RR'),'100');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('100','Norwegian Air','Oslo','Reykjavik',to_date('02/03/25','DD/MM/RR'),to_date('02/03/25','DD/MM/RR'),'150');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('101','Finnair','Helsinki','Estocolmo',to_date('03/03/25','DD/MM/RR'),to_date('03/03/25','DD/MM/RR'),'130');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('102','LOT Polish Airlines','Varsovia','Bucarest',to_date('04/03/25','DD/MM/RR'),to_date('04/03/25','DD/MM/RR'),'200');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('103','Brussels Airlines','Bruselas','Ámsterdam',to_date('05/03/25','DD/MM/RR'),to_date('05/03/25','DD/MM/RR'),'140');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('104','Aeroméxico','Ciudad de México','Los Ángeles',to_date('06/03/25','DD/MM/RR'),to_date('06/03/25','DD/MM/RR'),'400');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('105','LATAM Airlines','Bogotá','Santiago',to_date('07/03/25','DD/MM/RR'),to_date('07/03/25','DD/MM/RR'),'350');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('106','Iberia','Madrid','Barcelona',to_date('08/03/25','DD/MM/RR'),to_date('08/03/25','DD/MM/RR'),'180');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('107','Air Canada','Montreal','Toronto',to_date('09/03/25','DD/MM/RR'),to_date('09/03/25','DD/MM/RR'),'200');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('108','Delta Airlines','Atlanta','Chicago',to_date('10/03/25','DD/MM/RR'),to_date('10/03/25','DD/MM/RR'),'210');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('109','United Airlines','San Francisco','Denver',to_date('11/03/25','DD/MM/RR'),to_date('11/03/25','DD/MM/RR'),'230');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('110','American Airlines','Dallas','Las Vegas',to_date('12/03/25','DD/MM/RR'),to_date('12/03/25','DD/MM/RR'),'190');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('111','JetBlue','Orlando','New York',to_date('13/03/25','DD/MM/RR'),to_date('13/03/25','DD/MM/RR'),'170');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('112','Spirit Airlines','Fort Lauderdale','San Juan',to_date('14/03/25','DD/MM/RR'),to_date('14/03/25','DD/MM/RR'),'120');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('113','Volaris','Tijuana','Ciudad de México',to_date('15/03/25','DD/MM/RR'),to_date('15/03/25','DD/MM/RR'),'150');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('114','Copa Airlines','Ciudad de Panamá','Bogotá',to_date('16/03/25','DD/MM/RR'),to_date('16/03/25','DD/MM/RR'),'180');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('115','Qantas','Melbourne','Auckland',to_date('17/03/25','DD/MM/RR'),to_date('17/03/25','DD/MM/RR'),'350');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('116','Air France','París','Roma',to_date('18/03/25','DD/MM/RR'),to_date('18/03/25','DD/MM/RR'),'300');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('117','Lufthansa','Múnich','Viena',to_date('19/03/25','DD/MM/RR'),to_date('19/03/25','DD/MM/RR'),'200');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('118','Swiss Air','Ginebra','Zúrich',to_date('20/03/25','DD/MM/RR'),to_date('20/03/25','DD/MM/RR'),'150');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('119','Turkish Airlines','Estambul','Dubái',to_date('21/03/25','DD/MM/RR'),to_date('21/03/25','DD/MM/RR'),'400');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('120','Qatar Airways','Doha','Londres',to_date('22/03/25','DD/MM/RR'),to_date('22/03/25','DD/MM/RR'),'450');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('121','Etihad Airways','Abu Dhabi','París',to_date('23/03/25','DD/MM/RR'),to_date('23/03/25','DD/MM/RR'),'420');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('122','Vueling','Sevilla','Bilbao',to_date('27/02/25','DD/MM/RR'),to_date('27/02/25','DD/MM/RR'),'110');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('123','Ryanair','Dublín','Londres',to_date('28/02/25','DD/MM/RR'),to_date('28/02/25','DD/MM/RR'),'70');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('124','EasyJet','Londres','Berlín',to_date('01/03/25','DD/MM/RR'),to_date('01/03/25','DD/MM/RR'),'100');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('125','Norwegian Air','Oslo','Reykjavik',to_date('02/03/25','DD/MM/RR'),to_date('02/03/25','DD/MM/RR'),'150');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('126','Finnair','Helsinki','Estocolmo',to_date('03/03/25','DD/MM/RR'),to_date('03/03/25','DD/MM/RR'),'130');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('127','LOT Polish Airlines','Varsovia','Bucarest',to_date('04/03/25','DD/MM/RR'),to_date('04/03/25','DD/MM/RR'),'200');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('128','Brussels Airlines','Bruselas','Ámsterdam',to_date('05/03/25','DD/MM/RR'),to_date('05/03/25','DD/MM/RR'),'140');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('129','Aeroméxico','Ciudad de México','Los Ángeles',to_date('06/03/25','DD/MM/RR'),to_date('06/03/25','DD/MM/RR'),'400');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('130','LATAM Airlines','Bogotá','Santiago',to_date('07/03/25','DD/MM/RR'),to_date('07/03/25','DD/MM/RR'),'350');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('131','Iberia','Madrid','Barcelona',to_date('08/03/25','DD/MM/RR'),to_date('08/03/25','DD/MM/RR'),'180');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('132','Air Canada','Montreal','Toronto',to_date('09/03/25','DD/MM/RR'),to_date('09/03/25','DD/MM/RR'),'200');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('133','Delta Airlines','Atlanta','Chicago',to_date('10/03/25','DD/MM/RR'),to_date('10/03/25','DD/MM/RR'),'210');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('134','United Airlines','San Francisco','Denver',to_date('11/03/25','DD/MM/RR'),to_date('11/03/25','DD/MM/RR'),'230');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('135','American Airlines','Dallas','Las Vegas',to_date('12/03/25','DD/MM/RR'),to_date('12/03/25','DD/MM/RR'),'190');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('136','JetBlue','Orlando','New York',to_date('13/03/25','DD/MM/RR'),to_date('13/03/25','DD/MM/RR'),'170');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('137','Spirit Airlines','Fort Lauderdale','San Juan',to_date('14/03/25','DD/MM/RR'),to_date('14/03/25','DD/MM/RR'),'120');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('138','Volaris','Tijuana','Ciudad de México',to_date('15/03/25','DD/MM/RR'),to_date('15/03/25','DD/MM/RR'),'150');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('139','Copa Airlines','Ciudad de Panamá','Bogotá',to_date('16/03/25','DD/MM/RR'),to_date('16/03/25','DD/MM/RR'),'180');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('140','Qantas','Melbourne','Auckland',to_date('17/03/25','DD/MM/RR'),to_date('17/03/25','DD/MM/RR'),'350');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('141','Air France','París','Roma',to_date('18/03/25','DD/MM/RR'),to_date('18/03/25','DD/MM/RR'),'300');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('142','Lufthansa','Múnich','Viena',to_date('19/03/25','DD/MM/RR'),to_date('19/03/25','DD/MM/RR'),'200');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('143','Swiss Air','Ginebra','Zúrich',to_date('20/03/25','DD/MM/RR'),to_date('20/03/25','DD/MM/RR'),'150');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('144','Turkish Airlines','Estambul','Dubái',to_date('21/03/25','DD/MM/RR'),to_date('21/03/25','DD/MM/RR'),'400');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('145','Qatar Airways','Doha','Londres',to_date('22/03/25','DD/MM/RR'),to_date('22/03/25','DD/MM/RR'),'450');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('146','Etihad Airways','Abu Dhabi','París',to_date('23/03/25','DD/MM/RR'),to_date('23/03/25','DD/MM/RR'),'420');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('147','LATAM Airlines','Lima','Bogotá',to_date('24/03/25','DD/MM/RR'),to_date('24/03/25','DD/MM/RR'),'320');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('148','Aeroméxico','Cancún','Ciudad de México',to_date('25/03/25','DD/MM/RR'),to_date('25/03/25','DD/MM/RR'),'250');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('149','Copa Airlines','San José','Ciudad de Panamá',to_date('26/03/25','DD/MM/RR'),to_date('26/03/25','DD/MM/RR'),'200');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('150','Volaris','Guadalajara','Tijuana',to_date('27/03/25','DD/MM/RR'),to_date('27/03/25','DD/MM/RR'),'180');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('151','Delta Airlines','Nueva York','Miami',to_date('28/03/25','DD/MM/RR'),to_date('28/03/25','DD/MM/RR'),'280');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('152','American Airlines','Dallas','Denver',to_date('29/03/25','DD/MM/RR'),to_date('29/03/25','DD/MM/RR'),'230');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('153','Spirit Airlines','Orlando','Atlanta',to_date('30/03/25','DD/MM/RR'),to_date('30/03/25','DD/MM/RR'),'140');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('154','Air Canada','Toronto','Calgary',to_date('31/03/25','DD/MM/RR'),to_date('31/03/25','DD/MM/RR'),'270');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('155','Air France','París','Múnich',to_date('01/04/25','DD/MM/RR'),to_date('01/04/25','DD/MM/RR'),'310');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('156','Lufthansa','Berlín','Madrid',to_date('02/04/25','DD/MM/RR'),to_date('02/04/25','DD/MM/RR'),'340');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('157','Ryanair','Roma','Atenas',to_date('03/04/25','DD/MM/RR'),to_date('03/04/25','DD/MM/RR'),'190');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('158','EasyJet','Londres','Ámsterdam',to_date('04/04/25','DD/MM/RR'),to_date('04/04/25','DD/MM/RR'),'150');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('159','Swiss Air','Zúrich','Venecia',to_date('05/04/25','DD/MM/RR'),to_date('05/04/25','DD/MM/RR'),'210');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('160','Qatar Airways','Doha','Sídney',to_date('06/04/25','DD/MM/RR'),to_date('08/04/25','DD/MM/RR'),'850');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('161','Turkish Airlines','Estambul','París',to_date('07/04/25','DD/MM/RR'),to_date('07/04/25','DD/MM/RR'),'430');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('162','Emirates','Dubái','Tokio',to_date('08/04/25','DD/MM/RR'),to_date('09/04/25','DD/MM/RR'),'920');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('163','Japan Airlines','Tokio','Seúl',to_date('09/04/25','DD/MM/RR'),to_date('09/04/25','DD/MM/RR'),'280');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('164','ANA','Osaka','Hong Kong',to_date('10/04/25','DD/MM/RR'),to_date('10/04/25','DD/MM/RR'),'600');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('165','China Southern','Pekín','Bangkok',to_date('11/04/25','DD/MM/RR'),to_date('11/04/25','DD/MM/RR'),'520');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('166','Singapore Airlines','Singapur','Melbourne',to_date('12/04/25','DD/MM/RR'),to_date('13/04/25','DD/MM/RR'),'700');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('167','Air India','Mumbai','Nueva Delhi',to_date('13/04/25','DD/MM/RR'),to_date('13/04/25','DD/MM/RR'),'180');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('168','Thai Airways','Bangkok','Phuket',to_date('14/04/25','DD/MM/RR'),to_date('14/04/25','DD/MM/RR'),'160');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('169','South African Airways','Johannesburgo','Nairobi',to_date('15/04/25','DD/MM/RR'),to_date('15/04/25','DD/MM/RR'),'480');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('170','Ethiopian Airlines','Addis Ababa','Cairo',to_date('16/04/25','DD/MM/RR'),to_date('16/04/25','DD/MM/RR'),'500');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('171','Gol Linhas Aéreas','São Paulo','Buenos Aires',to_date('17/04/25','DD/MM/RR'),to_date('17/04/25','DD/MM/RR'),'300');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('172','Azul Airlines','Río de Janeiro','Lima',to_date('18/04/25','DD/MM/RR'),to_date('18/04/25','DD/MM/RR'),'350');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('173','Qantas','Brisbane','Auckland',to_date('19/04/25','DD/MM/RR'),to_date('19/04/25','DD/MM/RR'),'320');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('174','Alitalia','Milán','Atenas',to_date('20/04/25','DD/MM/RR'),to_date('20/04/25','DD/MM/RR'),'270');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('175','Iberia','Lisboa','Valencia',to_date('21/04/25','DD/MM/RR'),to_date('21/04/25','DD/MM/RR'),'190');
Insert into ADMIN01.TBL_VUELOS (ID_VUELO,AEROLINEA,ORIGEN,DESTINO,FECHA_SALIDA,FECHA_LLEGADA,PRECIO) values ('176','Air Europa','Barcelona','Palma de Mallorca',to_date('22/04/25','DD/MM/RR'),to_date('22/04/25','DD/MM/RR'),'140');
--------------------------------------------------------
--  DDL for Trigger TRG_AUTO_INCREMENT_EMPLEADOS
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "ADMIN01"."TRG_AUTO_INCREMENT_EMPLEADOS" 
BEFORE INSERT ON TBL_Empleados
FOR EACH ROW
BEGIN
    :NEW.ID_Empleado := seq_empleado_id.NEXTVAL;
END;
/
ALTER TRIGGER "ADMIN01"."TRG_AUTO_INCREMENT_EMPLEADOS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_AUTO_INCREMENT_HOTEL
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "ADMIN01"."TRG_AUTO_INCREMENT_HOTEL" 
BEFORE INSERT ON TBL_Hoteles
FOR EACH ROW
BEGIN
    :NEW.ID_Hotel := seq_hotel_id.NEXTVAL;
END;
/
ALTER TRIGGER "ADMIN01"."TRG_AUTO_INCREMENT_HOTEL" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_AUTO_INCREMENT_PAGOS
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "ADMIN01"."TRG_AUTO_INCREMENT_PAGOS" 
BEFORE INSERT ON TBL_Pagos
FOR EACH ROW
BEGIN
    :NEW.ID_Pago := seq_pagos_id.NEXTVAL;
END;
/
ALTER TRIGGER "ADMIN01"."TRG_AUTO_INCREMENT_PAGOS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_AUTO_INCREMENT_RESERVAS
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "ADMIN01"."TRG_AUTO_INCREMENT_RESERVAS" 
BEFORE INSERT ON TBL_Reservas
FOR EACH ROW
BEGIN
    :NEW.ID_RESERVA := seq_reservas_id.NEXTVAL;
END;
/
ALTER TRIGGER "ADMIN01"."TRG_AUTO_INCREMENT_RESERVAS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_AUTO_INCREMENT_RESERVATOUR
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "ADMIN01"."TRG_AUTO_INCREMENT_RESERVATOUR" 
BEFORE INSERT ON TBL_Reservas_Tours
FOR EACH ROW
BEGIN
    :NEW.ID_Reserva_Tour := seq_reservaTour_id.NEXTVAL;
END;
/
ALTER TRIGGER "ADMIN01"."TRG_AUTO_INCREMENT_RESERVATOUR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_AUTO_INCREMENT_TOURS
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "ADMIN01"."TRG_AUTO_INCREMENT_TOURS" 
BEFORE INSERT ON TBL_Tours
FOR EACH ROW
BEGIN
    :NEW.ID_Tour := seq_tours_id.NEXTVAL;
END;
/
ALTER TRIGGER "ADMIN01"."TRG_AUTO_INCREMENT_TOURS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_AUTO_INCREMENT_VUELOS
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "ADMIN01"."TRG_AUTO_INCREMENT_VUELOS" 
BEFORE INSERT ON TBL_Vuelos
FOR EACH ROW
BEGIN
    :NEW.ID_Vuelo := seq_vuelos_id.NEXTVAL;
END;
/
ALTER TRIGGER "ADMIN01"."TRG_AUTO_INCREMENT_VUELOS" ENABLE;
--------------------------------------------------------
--  Constraints for Table TBL_PAGOS
--------------------------------------------------------

  ALTER TABLE "ADMIN01"."TBL_PAGOS" MODIFY ("MONTO" NOT NULL ENABLE);
  ALTER TABLE "ADMIN01"."TBL_PAGOS" MODIFY ("FECHA_PAGO" NOT NULL ENABLE);
  ALTER TABLE "ADMIN01"."TBL_PAGOS" ADD PRIMARY KEY ("ID_PAGO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TABLESPACEAGENCIAVIAJES"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DIM_TOURS
--------------------------------------------------------

  ALTER TABLE "ADMIN01"."DIM_TOURS" MODIFY ("NOMBRE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_TOURS
--------------------------------------------------------

  ALTER TABLE "ADMIN01"."TBL_TOURS" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "ADMIN01"."TBL_TOURS" ADD PRIMARY KEY ("ID_TOUR")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TABLESPACEAGENCIAVIAJES"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TBL_VUELOS
--------------------------------------------------------

  ALTER TABLE "ADMIN01"."TBL_VUELOS" ADD PRIMARY KEY ("ID_VUELO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TABLESPACEAGENCIAVIAJES"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TBL_RESERVAS_TOURS
--------------------------------------------------------

  ALTER TABLE "ADMIN01"."TBL_RESERVAS_TOURS" ADD PRIMARY KEY ("ID_RESERVA_TOUR")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TABLESPACEAGENCIAVIAJES"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TBL_EMPLEADOS
--------------------------------------------------------

  ALTER TABLE "ADMIN01"."TBL_EMPLEADOS" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "ADMIN01"."TBL_EMPLEADOS" MODIFY ("APELLIDO" NOT NULL ENABLE);
  ALTER TABLE "ADMIN01"."TBL_EMPLEADOS" ADD PRIMARY KEY ("ID_EMPLEADO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TABLESPACEAGENCIAVIAJES"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TBL_RESERVAS
--------------------------------------------------------

  ALTER TABLE "ADMIN01"."TBL_RESERVAS" ADD PRIMARY KEY ("ID_RESERVA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TABLESPACEAGENCIAVIAJES"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DIM_CLIENTES
--------------------------------------------------------

  ALTER TABLE "ADMIN01"."DIM_CLIENTES" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "ADMIN01"."DIM_CLIENTES" MODIFY ("APELLIDO" NOT NULL ENABLE);
  ALTER TABLE "ADMIN01"."DIM_CLIENTES" MODIFY ("EMAIL" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DIM_HOTELES
--------------------------------------------------------

  ALTER TABLE "ADMIN01"."DIM_HOTELES" MODIFY ("NOMBRE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_RESERVAS_PAGOS
--------------------------------------------------------

  ALTER TABLE "ADMIN01"."TBL_RESERVAS_PAGOS" MODIFY ("MONTO" NOT NULL ENABLE);
  ALTER TABLE "ADMIN01"."TBL_RESERVAS_PAGOS" MODIFY ("FECHA_PAGO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_CLIENTES
--------------------------------------------------------

  ALTER TABLE "ADMIN01"."TBL_CLIENTES" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "ADMIN01"."TBL_CLIENTES" MODIFY ("APELLIDO" NOT NULL ENABLE);
  ALTER TABLE "ADMIN01"."TBL_CLIENTES" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "ADMIN01"."TBL_CLIENTES" ADD PRIMARY KEY ("ID_CLIENTE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TABLESPACEAGENCIAVIAJES"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TBL_HOTELES
--------------------------------------------------------

  ALTER TABLE "ADMIN01"."TBL_HOTELES" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "ADMIN01"."TBL_HOTELES" ADD PRIMARY KEY ("ID_HOTEL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TABLESPACEAGENCIAVIAJES"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TBL_PAGOS
--------------------------------------------------------

  ALTER TABLE "ADMIN01"."TBL_PAGOS" ADD CONSTRAINT "FK_PAGO_RESERVA" FOREIGN KEY ("ID_RESERVA")
	  REFERENCES "ADMIN01"."TBL_RESERVAS" ("ID_RESERVA") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TBL_RESERVAS
--------------------------------------------------------

  ALTER TABLE "ADMIN01"."TBL_RESERVAS" ADD CONSTRAINT "FK_RESERVA_CLIENTE" FOREIGN KEY ("ID_CLIENTE")
	  REFERENCES "ADMIN01"."TBL_CLIENTES" ("ID_CLIENTE") ENABLE;
  ALTER TABLE "ADMIN01"."TBL_RESERVAS" ADD CONSTRAINT "FK_RESERVA_VUELO" FOREIGN KEY ("ID_VUELO")
	  REFERENCES "ADMIN01"."TBL_VUELOS" ("ID_VUELO") ENABLE;
  ALTER TABLE "ADMIN01"."TBL_RESERVAS" ADD CONSTRAINT "FK_RESERVA_HOTEL" FOREIGN KEY ("ID_HOTEL")
	  REFERENCES "ADMIN01"."TBL_HOTELES" ("ID_HOTEL") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TBL_RESERVAS_TOURS
--------------------------------------------------------

  ALTER TABLE "ADMIN01"."TBL_RESERVAS_TOURS" ADD CONSTRAINT "FK_CONSULTA_RESERVA" FOREIGN KEY ("ID_RESERVA")
	  REFERENCES "ADMIN01"."TBL_RESERVAS" ("ID_RESERVA") ENABLE;
  ALTER TABLE "ADMIN01"."TBL_RESERVAS_TOURS" ADD CONSTRAINT "FK_CONSULTA_TOUR" FOREIGN KEY ("ID_TOUR")
	  REFERENCES "ADMIN01"."TBL_TOURS" ("ID_TOUR") ENABLE;
