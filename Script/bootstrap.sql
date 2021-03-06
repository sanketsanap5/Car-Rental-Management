
-- Author - Sanket Sanap

--------------------------------------------------------
--  File created - Thursday-November-11-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ACTIVITY
--------------------------------------------------------

  CREATE TABLE "ADMIN"."ACTIVITY" 
   (	"ACTIVITY_ID" NUMBER(25,0), 
	"LOGIN_TIME" DATE, 
	"LOGOUT_TIME" DATE, 
	"CUSTOMER_ID" NUMBER(25,0)
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 10 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "DATA" ;
--------------------------------------------------------
--  DDL for Table CAR
--------------------------------------------------------

  CREATE TABLE "ADMIN"."CAR" 
   (	"CAR_ID" NUMBER(25,0), 
	"CAR_TYPE" VARCHAR2(50 BYTE) COLLATE "USING_NLS_COMP", 
	"MAX_PERSON" NUMBER(2,0) DEFAULT (4), 
	"RATE_PER_HR" NUMBER(3,0) DEFAULT (10), 
	"MODEL" VARCHAR2(50 BYTE) COLLATE "USING_NLS_COMP", 
	"CAR_MAKE" VARCHAR2(50 BYTE) COLLATE "USING_NLS_COMP", 
	"CAR_NUMBER" VARCHAR2(50 BYTE) COLLATE "USING_NLS_COMP", 
	"CAR_COST" NUMBER(10,0)
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 10 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "DATA" ;
--------------------------------------------------------
--  DDL for Table CARS_AT_PICKUP
--------------------------------------------------------

  CREATE TABLE "ADMIN"."CARS_AT_PICKUP" 
   (	"CARS_AT_PICKUP_ID" NUMBER(25,0), 
	"PICKUP_POINT_ID" NUMBER(25,0), 
	"CAR_ID" NUMBER(25,0)
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 10 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "DATA" ;
--------------------------------------------------------
--  DDL for Table CUSTOMERS
--------------------------------------------------------

  CREATE TABLE "ADMIN"."CUSTOMERS" 
   (	"CUSTOMER_ID" NUMBER(25,0), 
	"FIRST_NAME" VARCHAR2(50 BYTE) COLLATE "USING_NLS_COMP", 
	"LAST_NAME" VARCHAR2(50 BYTE) COLLATE "USING_NLS_COMP", 
	"EMAIL_ID" VARCHAR2(50 BYTE) COLLATE "USING_NLS_COMP", 
	"CONTACT" NUMBER(10,0), 
	"LICENSE_NUMBER" VARCHAR2(50 BYTE) COLLATE "USING_NLS_COMP", 
	"PASSPORT_NUMBER" VARCHAR2(50 BYTE) COLLATE "USING_NLS_COMP", 
	"CUSTOMER_TYPE" VARCHAR2(50 BYTE) COLLATE "USING_NLS_COMP", 
	"DATE_OF_BIRTH" DATE
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 10 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "DATA" ;
--------------------------------------------------------
--  DDL for Table CUSTOMER_ADDRESS
--------------------------------------------------------

  CREATE TABLE "ADMIN"."CUSTOMER_ADDRESS" 
   (	"ADDRESS_ID" NUMBER(25,0), 
	"ADDRESS_LINE1" VARCHAR2(50 BYTE) COLLATE "USING_NLS_COMP", 
	"ADDRESS_LINE2" VARCHAR2(50 BYTE) COLLATE "USING_NLS_COMP", 
	"CITY_STATE" VARCHAR2(50 BYTE) COLLATE "USING_NLS_COMP", 
	"CITY" VARCHAR2(50 BYTE) COLLATE "USING_NLS_COMP", 
	"CUSTOMER_ID" NUMBER(25,0), 
	"ZIP_CODE" VARCHAR2(10 BYTE) COLLATE "USING_NLS_COMP", 
	"ADDRESS_TYPE" VARCHAR2(20 BYTE) COLLATE "USING_NLS_COMP" DEFAULT 'HOME'
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 10 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "DATA" ;
--------------------------------------------------------
--  DDL for Table DISCOUNTS
--------------------------------------------------------

  CREATE TABLE "ADMIN"."DISCOUNTS" 
   (	"DISCOUNT_ID" NUMBER(25,0), 
	"DESCRIPTION" VARCHAR2(100 BYTE) COLLATE "USING_NLS_COMP", 
	"PERCENTAGE" NUMBER(3,0)
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 10 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "DATA" ;
--------------------------------------------------------
--  DDL for Table FEEDBACK
--------------------------------------------------------

  CREATE TABLE "ADMIN"."FEEDBACK" 
   (	"FEEDBACK_ID" NUMBER(25,0), 
	"RATINGS" NUMBER(2,0), 
	"COMMENTS" VARCHAR2(50 BYTE) COLLATE "USING_NLS_COMP", 
	"FEEDBACK_DATE" DATE DEFAULT sysdate, 
	"TRANS_ID" NUMBER(25,0)
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 10 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "DATA" ;
--------------------------------------------------------
--  DDL for Table INSURANCE
--------------------------------------------------------

  CREATE TABLE "ADMIN"."INSURANCE" 
   (	"INSURANCE_ID" NUMBER(25,0), 
	"SUMMARY" VARCHAR2(50 BYTE) COLLATE "USING_NLS_COMP", 
	"INSURANCE_TYPE" VARCHAR2(50 BYTE) COLLATE "USING_NLS_COMP", 
	"INSURANCE_COST" NUMBER(25,0)
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 10 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "DATA" ;
--------------------------------------------------------
--  DDL for Table MAINTENANCE
--------------------------------------------------------

  CREATE TABLE "ADMIN"."MAINTENANCE" 
   (	"MAINTENANCE_ID" NUMBER(25,0), 
	"SUMMARY" VARCHAR2(50 BYTE) COLLATE "USING_NLS_COMP", 
	"MAINTENANCE_DATE" DATE, 
	"MAINTENANCE_COST" NUMBER(25,0), 
	"CAR_ID" NUMBER(25,0), 
	"PURCHASE_INSURANCE_ID" NUMBER(25,0)
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 10 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "DATA" ;
--------------------------------------------------------
--  DDL for Table PAYMENTS
--------------------------------------------------------

  CREATE TABLE "ADMIN"."PAYMENTS" 
   (	"PAY_ID" NUMBER(25,0), 
	"PAY_DATE" DATE DEFAULT sysdate, 
	"CUSTOMER_CARD" NUMBER(25,0), 
	"STATUS" VARCHAR2(15 BYTE) COLLATE "USING_NLS_COMP", 
	"TRANS_ID" NUMBER(25,0), 
	"DISCOUNT_ID" NUMBER(25,0)
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 10 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "DATA" ;
--------------------------------------------------------
--  DDL for Table PICKUP_POINTS
--------------------------------------------------------

  CREATE TABLE "ADMIN"."PICKUP_POINTS" 
   (	"PICKUP_POINT_ID" NUMBER(25,0), 
	"STATE" VARCHAR2(50 BYTE) COLLATE "USING_NLS_COMP", 
	"CITY" VARCHAR2(50 BYTE) COLLATE "USING_NLS_COMP", 
	"ZIP" VARCHAR2(10 BYTE) COLLATE "USING_NLS_COMP", 
	"COST" NUMBER(10,0), 
	"NAME" VARCHAR2(50 BYTE) COLLATE "USING_NLS_COMP"
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 10 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "DATA" ;
--------------------------------------------------------
--  DDL for Table PURCHASE_INSURANCE
--------------------------------------------------------

  CREATE TABLE "ADMIN"."PURCHASE_INSURANCE" 
   (	"PURCHASE_INSURANCE_ID" NUMBER(25,0), 
	"CAR_ID" NUMBER(25,0), 
	"INSURANCE_ID" NUMBER(25,0), 
	"PURCHASE_DATE" DATE, 
	"EXPIRY_DATE" DATE
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 10 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "DATA" ;
--------------------------------------------------------
--  DDL for Table RIDE_TRANSACTION
--------------------------------------------------------

  CREATE TABLE "ADMIN"."RIDE_TRANSACTION" 
   (	"TRANS_ID" NUMBER(25,0), 
	"CUSTOMER_ID" NUMBER(25,0), 
	"CARS_AT_PICKUP_ID" NUMBER(25,0), 
	"TRANSACTION_DATE" DATE DEFAULT sysdate, 
	"START_TIME" TIMESTAMP (6), 
	"END_TIME" TIMESTAMP (6), 
	"CAR_ID" NUMBER(25,0), 
	"DISTANCE" NUMBER DEFAULT 0, 
	"STATUS" VARCHAR2(20 BYTE) COLLATE "USING_NLS_COMP" DEFAULT 'IN PROCESS'
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 10 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "DATA" ;
--------------------------------------------------------
--  DDL for Table SUPPORT
--------------------------------------------------------

  CREATE TABLE "ADMIN"."SUPPORT" 
   (	"SUPPORT_ID" NUMBER(25,0), 
	"STATUS" VARCHAR2(15 BYTE) COLLATE "USING_NLS_COMP", 
	"CUSTOMER_ID" NUMBER(25,0), 
	"TRANS_ID" NUMBER(25,0)
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 10 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "DATA" ;
--------------------------------------------------------
--  DDL for Table VIOLATIONS
--------------------------------------------------------

  CREATE TABLE "ADMIN"."VIOLATIONS" 
   (	"VIOLATION_ID" NUMBER(25,0), 
	"DESCRIPTION" VARCHAR2(50 BYTE) COLLATE "USING_NLS_COMP"
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 10 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "DATA" ;
--------------------------------------------------------
--  DDL for Table VIOLATIONS_RECORDS
--------------------------------------------------------

  CREATE TABLE "ADMIN"."VIOLATIONS_RECORDS" 
   (	"RECORD_ID" NUMBER(25,0), 
	"RECORD_DATE" DATE, 
	"CUSTOMER_ID" NUMBER(25,0), 
	"VIOLATION_ID" NUMBER(25,0)
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 10 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "DATA" ;
REM INSERTING into ADMIN.ACTIVITY
SET DEFINE OFF;
REM INSERTING into ADMIN.CAR
SET DEFINE OFF;
REM INSERTING into ADMIN.CARS_AT_PICKUP
SET DEFINE OFF;
REM INSERTING into ADMIN.CUSTOMERS
SET DEFINE OFF;
REM INSERTING into ADMIN.CUSTOMER_ADDRESS
SET DEFINE OFF;
REM INSERTING into ADMIN.DISCOUNTS
SET DEFINE OFF;
REM INSERTING into ADMIN.FEEDBACK
SET DEFINE OFF;
REM INSERTING into ADMIN.INSURANCE
SET DEFINE OFF;
REM INSERTING into ADMIN.MAINTENANCE
SET DEFINE OFF;
REM INSERTING into ADMIN.PAYMENTS
SET DEFINE OFF;
REM INSERTING into ADMIN.PICKUP_POINTS
SET DEFINE OFF;
REM INSERTING into ADMIN.PURCHASE_INSURANCE
SET DEFINE OFF;
REM INSERTING into ADMIN.RIDE_TRANSACTION
SET DEFINE OFF;
REM INSERTING into ADMIN.SUPPORT
SET DEFINE OFF;
REM INSERTING into ADMIN.VIOLATIONS
SET DEFINE OFF;
REM INSERTING into ADMIN.VIOLATIONS_RECORDS
SET DEFINE OFF;
--------------------------------------------------------
--  Constraints for Table MAINTENANCE
--------------------------------------------------------

  ALTER TABLE "ADMIN"."MAINTENANCE" MODIFY ("PURCHASE_INSURANCE_ID" CONSTRAINT "PURCHASE_INSURANCE_ID_NOT_NULL" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."MAINTENANCE" ADD CONSTRAINT "MAINTENANCE_PK" PRIMARY KEY ("MAINTENANCE_ID")
  USING INDEX PCTFREE 10 INITRANS 20 MAXTRANS 255 
  TABLESPACE "DATA"  ENABLE;
  ALTER TABLE "ADMIN"."MAINTENANCE" MODIFY ("MAINTENANCE_DATE" CONSTRAINT "MAINTENANCE_DATE_NOT_NULL" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."MAINTENANCE" MODIFY ("MAINTENANCE_COST" CONSTRAINT "MAINTENANCE_COST_NOT_NULL" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."MAINTENANCE" MODIFY ("CAR_ID" CONSTRAINT "CAR_ID_NOT_NULL1" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SUPPORT
--------------------------------------------------------

  ALTER TABLE "ADMIN"."SUPPORT" MODIFY ("TRANS_ID" CONSTRAINT "TRANS_ID_NOT_NULL" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."SUPPORT" ADD CONSTRAINT "SUPPORT_PK" PRIMARY KEY ("SUPPORT_ID")
  USING INDEX PCTFREE 10 INITRANS 20 MAXTRANS 255 
  TABLESPACE "DATA"  ENABLE;
  ALTER TABLE "ADMIN"."SUPPORT" ADD CONSTRAINT "STATUS_CHECK" CHECK (status in ('IN PROGRESS', 'COMPLETED', 'PENDING')) ENABLE;
  ALTER TABLE "ADMIN"."SUPPORT" MODIFY ("CUSTOMER_ID" CONSTRAINT "CUSTOMER_ID_NOT_NULL1" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FEEDBACK
--------------------------------------------------------

  ALTER TABLE "ADMIN"."FEEDBACK" MODIFY ("TRANS_ID" CONSTRAINT "TRANS_ID_NOT_NULL3" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."FEEDBACK" ADD CONSTRAINT "FEEDBACK_PK" PRIMARY KEY ("FEEDBACK_ID")
  USING INDEX PCTFREE 10 INITRANS 20 MAXTRANS 255 
  TABLESPACE "DATA"  ENABLE;
--------------------------------------------------------
--  Constraints for Table INSURANCE
--------------------------------------------------------

  ALTER TABLE "ADMIN"."INSURANCE" ADD CONSTRAINT "INSURANCE_PK" PRIMARY KEY ("INSURANCE_ID")
  USING INDEX PCTFREE 10 INITRANS 20 MAXTRANS 255 
  TABLESPACE "DATA"  ENABLE;
  ALTER TABLE "ADMIN"."INSURANCE" MODIFY ("INSURANCE_COST" CONSTRAINT "INSURANCE_COST_NOT_NULL" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PICKUP_POINTS
--------------------------------------------------------

  ALTER TABLE "ADMIN"."PICKUP_POINTS" ADD CONSTRAINT "PICKUP_POINTS_PK" PRIMARY KEY ("PICKUP_POINT_ID")
  USING INDEX PCTFREE 10 INITRANS 20 MAXTRANS 255 
  TABLESPACE "DATA"  ENABLE;
  ALTER TABLE "ADMIN"."PICKUP_POINTS" MODIFY ("STATE" CONSTRAINT "STATE_NOT_NULL" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."PICKUP_POINTS" MODIFY ("CITY" CONSTRAINT "CITY_NOT_NULL1" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."PICKUP_POINTS" MODIFY ("ZIP" CONSTRAINT "ZIP_NOT_NULL" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."PICKUP_POINTS" MODIFY ("NAME" CONSTRAINT "NAME_NOT_NULL" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CUSTOMER_ADDRESS
--------------------------------------------------------

  ALTER TABLE "ADMIN"."CUSTOMER_ADDRESS" MODIFY ("CUSTOMER_ID" CONSTRAINT "CUSTOMER_ID_NOT_NULL2" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."CUSTOMER_ADDRESS" ADD CONSTRAINT "CUSTOMER_ADDRESS_PK" PRIMARY KEY ("ADDRESS_ID")
  USING INDEX PCTFREE 10 INITRANS 20 MAXTRANS 255 
  TABLESPACE "DATA"  ENABLE;
  ALTER TABLE "ADMIN"."CUSTOMER_ADDRESS" MODIFY ("ADDRESS_LINE1" CONSTRAINT "ADDRESS_LINE1_NOT_NULL" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."CUSTOMER_ADDRESS" MODIFY ("CITY_STATE" CONSTRAINT "CITY_STATE_NOT_NULL" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."CUSTOMER_ADDRESS" MODIFY ("CITY" CONSTRAINT "CITY_NOT_NULL" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."CUSTOMER_ADDRESS" MODIFY ("ZIP_CODE" CONSTRAINT "ZIP_CODE_NOT_NULL" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."CUSTOMER_ADDRESS" ADD CONSTRAINT "ADDRESS_TYPE_CHECK" CHECK (ADDRESS_TYPE in ('HOME', 'OFFICE', 'OTHER')) ENABLE;
--------------------------------------------------------
--  Constraints for Table PAYMENTS
--------------------------------------------------------

  ALTER TABLE "ADMIN"."PAYMENTS" ADD CONSTRAINT "PAYMENTS_PK" PRIMARY KEY ("PAY_ID")
  USING INDEX PCTFREE 10 INITRANS 20 MAXTRANS 255 
  TABLESPACE "DATA"  ENABLE;
  ALTER TABLE "ADMIN"."PAYMENTS" MODIFY ("CUSTOMER_CARD" CONSTRAINT "CUSTOMER_CARD_NOT_NULL" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."PAYMENTS" ADD CONSTRAINT "STATUS_CHECK1" CHECK (status in ('IN PROGRESS', 'COMPLETED', 'PENDING')) ENABLE;
  ALTER TABLE "ADMIN"."PAYMENTS" MODIFY ("TRANS_ID" CONSTRAINT "TRANS_ID_NOT_NULL2" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DISCOUNTS
--------------------------------------------------------

  ALTER TABLE "ADMIN"."DISCOUNTS" ADD CONSTRAINT "DISCOUNTS_PK" PRIMARY KEY ("DISCOUNT_ID")
  USING INDEX PCTFREE 10 INITRANS 20 MAXTRANS 255 
  TABLESPACE "DATA"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CAR
--------------------------------------------------------

  ALTER TABLE "ADMIN"."CAR" ADD CONSTRAINT "CAR_PK" PRIMARY KEY ("CAR_ID")
  USING INDEX PCTFREE 10 INITRANS 20 MAXTRANS 255 
  TABLESPACE "DATA"  ENABLE;
  ALTER TABLE "ADMIN"."CAR" ADD CONSTRAINT "CAR_NUMBER_UN" UNIQUE ("CAR_NUMBER")
  USING INDEX PCTFREE 10 INITRANS 20 MAXTRANS 255 
  TABLESPACE "DATA"  ENABLE;
  ALTER TABLE "ADMIN"."CAR" MODIFY ("CAR_TYPE" CONSTRAINT "CAR_TYPE_NOT_NULL" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."CAR" MODIFY ("MODEL" CONSTRAINT "MODEL_NOT_NULL" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."CAR" MODIFY ("CAR_MAKE" CONSTRAINT "CAR_MAKE_NOT_NULL" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."CAR" MODIFY ("CAR_NUMBER" CONSTRAINT "CAR_NUMBER_NOT_NULL" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ACTIVITY
--------------------------------------------------------

  ALTER TABLE "ADMIN"."ACTIVITY" ADD CONSTRAINT "ACTIVITY_PK" PRIMARY KEY ("ACTIVITY_ID")
  USING INDEX PCTFREE 10 INITRANS 20 MAXTRANS 255 
  TABLESPACE "DATA"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CUSTOMERS
--------------------------------------------------------

  ALTER TABLE "ADMIN"."CUSTOMERS" MODIFY ("FIRST_NAME" CONSTRAINT "FIRST_NAME_NOT_NULL" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."CUSTOMERS" ADD CONSTRAINT "CUSTOMERS_PK" PRIMARY KEY ("CUSTOMER_ID")
  USING INDEX PCTFREE 10 INITRANS 20 MAXTRANS 255 
  TABLESPACE "DATA"  ENABLE;
  ALTER TABLE "ADMIN"."CUSTOMERS" MODIFY ("EMAIL_ID" CONSTRAINT "EMAIL_ID_NOT_NULL" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."CUSTOMERS" MODIFY ("CONTACT" CONSTRAINT "CONTACT_NOT_NULL" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."CUSTOMERS" MODIFY ("LICENSE_NUMBER" CONSTRAINT "LICENSE_NUMBER_NOT_NULL" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."CUSTOMERS" MODIFY ("PASSPORT_NUMBER" CONSTRAINT "PASSPORT_NUMBER_NOT_NULL" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."CUSTOMERS" ADD CONSTRAINT "CUSTOMER_TYPE_CHECK" CHECK ( customer_type in ('student','employee','others')) ENABLE;
  ALTER TABLE "ADMIN"."CUSTOMERS" ADD CONSTRAINT "CUSTOMERS_EMAIL_ID_UN" UNIQUE ("EMAIL_ID")
  USING INDEX PCTFREE 10 INITRANS 20 MAXTRANS 255 
  TABLESPACE "DATA"  ENABLE;
  ALTER TABLE "ADMIN"."CUSTOMERS" ADD CONSTRAINT "CUSTOMERS_CONTACT_UN" UNIQUE ("CONTACT")
  USING INDEX PCTFREE 10 INITRANS 20 MAXTRANS 255 
  TABLESPACE "DATA"  ENABLE;
  ALTER TABLE "ADMIN"."CUSTOMERS" ADD CONSTRAINT "CUSTOMERS_LICENSE_NUMBER_UN" UNIQUE ("LICENSE_NUMBER")
  USING INDEX PCTFREE 10 INITRANS 20 MAXTRANS 255 
  TABLESPACE "DATA"  ENABLE;
  ALTER TABLE "ADMIN"."CUSTOMERS" ADD CONSTRAINT "CUSTOMERS_PASSPORT_NUMBER_UN" UNIQUE ("PASSPORT_NUMBER")
  USING INDEX PCTFREE 10 INITRANS 20 MAXTRANS 255 
  TABLESPACE "DATA"  ENABLE;
--------------------------------------------------------
--  Constraints for Table VIOLATIONS
--------------------------------------------------------

  ALTER TABLE "ADMIN"."VIOLATIONS" MODIFY ("DESCRIPTION" CONSTRAINT "DESCRIPTION_NOT_NULL" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."VIOLATIONS" ADD CONSTRAINT "VIOLATIONS_PK" PRIMARY KEY ("VIOLATION_ID")
  USING INDEX PCTFREE 10 INITRANS 20 MAXTRANS 255 
  TABLESPACE "DATA"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CARS_AT_PICKUP
--------------------------------------------------------

  ALTER TABLE "ADMIN"."CARS_AT_PICKUP" ADD CONSTRAINT "CARS_AT_PICKUP_PK" PRIMARY KEY ("CARS_AT_PICKUP_ID")
  USING INDEX PCTFREE 10 INITRANS 20 MAXTRANS 255 
  TABLESPACE "DATA"  ENABLE;
  ALTER TABLE "ADMIN"."CARS_AT_PICKUP" MODIFY ("PICKUP_POINT_ID" CONSTRAINT "PICKUP_POINT_ID_NOT_NULL" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."CARS_AT_PICKUP" MODIFY ("CAR_ID" CONSTRAINT "CAR_ID_NOT_NULL3" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table VIOLATIONS_RECORDS
--------------------------------------------------------

  ALTER TABLE "ADMIN"."VIOLATIONS_RECORDS" ADD CONSTRAINT "VIOLATIONS_RECORDS_PK" PRIMARY KEY ("RECORD_ID")
  USING INDEX PCTFREE 10 INITRANS 20 MAXTRANS 255 
  TABLESPACE "DATA"  ENABLE;
  ALTER TABLE "ADMIN"."VIOLATIONS_RECORDS" MODIFY ("VIOLATION_ID" CONSTRAINT "VIOLATION_ID_NOT_NULL" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."VIOLATIONS_RECORDS" MODIFY ("RECORD_DATE" CONSTRAINT "RECORD_DATE_NOT_NULL" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."VIOLATIONS_RECORDS" MODIFY ("CUSTOMER_ID" CONSTRAINT "CUSTOMER_ID_NOT_NULL" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table RIDE_TRANSACTION
--------------------------------------------------------

  ALTER TABLE "ADMIN"."RIDE_TRANSACTION" MODIFY ("CARS_AT_PICKUP_ID" CONSTRAINT "CARS_AT_PICKUP_ID_NOT_NULL" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."RIDE_TRANSACTION" MODIFY ("CAR_ID" CONSTRAINT "CAR_ID_NOT_NULL" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."RIDE_TRANSACTION" MODIFY ("END_TIME" CONSTRAINT "END_TIME_NOT_NULL" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."RIDE_TRANSACTION" MODIFY ("CUSTOMER_ID" CONSTRAINT "CUSTOMER_ID_NOT_NULL3" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."RIDE_TRANSACTION" ADD CONSTRAINT "RIDE_TRANSACTION_PK" PRIMARY KEY ("TRANS_ID")
  USING INDEX PCTFREE 10 INITRANS 20 MAXTRANS 255 
  TABLESPACE "DATA"  ENABLE;
  ALTER TABLE "ADMIN"."RIDE_TRANSACTION" MODIFY ("STATUS" CONSTRAINT "STATUS_NOT_NULL" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."RIDE_TRANSACTION" MODIFY ("START_TIME" CONSTRAINT "START_TIME_NOT_NULL" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."RIDE_TRANSACTION" ADD CONSTRAINT "STATUS_CHECK2" CHECK (STATUS in ('IN PROCESS', 'COMPLETED', 'CANCELLED', 'UPDATED')) ENABLE;
--------------------------------------------------------
--  Constraints for Table PURCHASE_INSURANCE
--------------------------------------------------------

  ALTER TABLE "ADMIN"."PURCHASE_INSURANCE" ADD CONSTRAINT "PURCHASE_INSURANCE_PK" PRIMARY KEY ("PURCHASE_INSURANCE_ID")
  USING INDEX PCTFREE 10 INITRANS 20 MAXTRANS 255 
  TABLESPACE "DATA"  ENABLE;
  ALTER TABLE "ADMIN"."PURCHASE_INSURANCE" MODIFY ("EXPIRY_DATE" CONSTRAINT "EXPIRY_DATE_NOT_NULL" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."PURCHASE_INSURANCE" MODIFY ("CAR_ID" CONSTRAINT "CAR_ID_NOT_NULL2" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."PURCHASE_INSURANCE" MODIFY ("INSURANCE_ID" CONSTRAINT "INSURANCE_ID_NOT_NULL" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table ACTIVITY
--------------------------------------------------------

  ALTER TABLE "ADMIN"."ACTIVITY" ADD CONSTRAINT "CUSTOMER_ID_FK1" FOREIGN KEY ("CUSTOMER_ID")
	  REFERENCES "ADMIN"."CUSTOMERS" ("CUSTOMER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CARS_AT_PICKUP
--------------------------------------------------------

  ALTER TABLE "ADMIN"."CARS_AT_PICKUP" ADD CONSTRAINT "CAR_ID_FK4" FOREIGN KEY ("CAR_ID")
	  REFERENCES "ADMIN"."CAR" ("CAR_ID") ENABLE;
  ALTER TABLE "ADMIN"."CARS_AT_PICKUP" ADD CONSTRAINT "PICKUP_POINT_ID_FK1" FOREIGN KEY ("PICKUP_POINT_ID")
	  REFERENCES "ADMIN"."PICKUP_POINTS" ("PICKUP_POINT_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CUSTOMER_ADDRESS
--------------------------------------------------------

  ALTER TABLE "ADMIN"."CUSTOMER_ADDRESS" ADD CONSTRAINT "CUSTOMER_ID_FK4" FOREIGN KEY ("CUSTOMER_ID")
	  REFERENCES "ADMIN"."CUSTOMERS" ("CUSTOMER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table FEEDBACK
--------------------------------------------------------

  ALTER TABLE "ADMIN"."FEEDBACK" ADD CONSTRAINT "TRANS_ID_FK3" FOREIGN KEY ("TRANS_ID")
	  REFERENCES "ADMIN"."RIDE_TRANSACTION" ("TRANS_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MAINTENANCE
--------------------------------------------------------

  ALTER TABLE "ADMIN"."MAINTENANCE" ADD CONSTRAINT "CAR_ID_FK2" FOREIGN KEY ("CAR_ID")
	  REFERENCES "ADMIN"."CAR" ("CAR_ID") ENABLE;
  ALTER TABLE "ADMIN"."MAINTENANCE" ADD CONSTRAINT "PURCHASE_INSUARANCE_ID_FK1" FOREIGN KEY ("PURCHASE_INSURANCE_ID")
	  REFERENCES "ADMIN"."PURCHASE_INSURANCE" ("PURCHASE_INSURANCE_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PAYMENTS
--------------------------------------------------------

  ALTER TABLE "ADMIN"."PAYMENTS" ADD CONSTRAINT "TRANS_ID_FK2" FOREIGN KEY ("TRANS_ID")
	  REFERENCES "ADMIN"."RIDE_TRANSACTION" ("TRANS_ID") ENABLE;
  ALTER TABLE "ADMIN"."PAYMENTS" ADD CONSTRAINT "DISCOUNT_ID_FK1" FOREIGN KEY ("DISCOUNT_ID")
	  REFERENCES "ADMIN"."DISCOUNTS" ("DISCOUNT_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PURCHASE_INSURANCE
--------------------------------------------------------

  ALTER TABLE "ADMIN"."PURCHASE_INSURANCE" ADD CONSTRAINT "CAR_ID_FK3" FOREIGN KEY ("CAR_ID")
	  REFERENCES "ADMIN"."CAR" ("CAR_ID") ENABLE;
  ALTER TABLE "ADMIN"."PURCHASE_INSURANCE" ADD CONSTRAINT "INSURANCE_ID_FK1" FOREIGN KEY ("INSURANCE_ID")
	  REFERENCES "ADMIN"."INSURANCE" ("INSURANCE_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RIDE_TRANSACTION
--------------------------------------------------------

  ALTER TABLE "ADMIN"."RIDE_TRANSACTION" ADD CONSTRAINT "CARS_AT_PICKUP_ID_FK1" FOREIGN KEY ("CARS_AT_PICKUP_ID")
	  REFERENCES "ADMIN"."CARS_AT_PICKUP" ("CARS_AT_PICKUP_ID") ENABLE;
  ALTER TABLE "ADMIN"."RIDE_TRANSACTION" ADD CONSTRAINT "CUSTOMER_ID_FK5" FOREIGN KEY ("CUSTOMER_ID")
	  REFERENCES "ADMIN"."CUSTOMERS" ("CUSTOMER_ID") ENABLE;
  ALTER TABLE "ADMIN"."RIDE_TRANSACTION" ADD CONSTRAINT "CAR_ID_FK1" FOREIGN KEY ("CAR_ID")
	  REFERENCES "ADMIN"."CAR" ("CAR_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SUPPORT
--------------------------------------------------------

  ALTER TABLE "ADMIN"."SUPPORT" ADD CONSTRAINT "TRANS_ID_FK1" FOREIGN KEY ("TRANS_ID")
	  REFERENCES "ADMIN"."RIDE_TRANSACTION" ("TRANS_ID") ENABLE;
  ALTER TABLE "ADMIN"."SUPPORT" ADD CONSTRAINT "CUSTOMER_ID_FK3" FOREIGN KEY ("CUSTOMER_ID")
	  REFERENCES "ADMIN"."CUSTOMERS" ("CUSTOMER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table VIOLATIONS_RECORDS
--------------------------------------------------------

  ALTER TABLE "ADMIN"."VIOLATIONS_RECORDS" ADD CONSTRAINT "CUSTOMER_ID_FK2" FOREIGN KEY ("CUSTOMER_ID")
	  REFERENCES "ADMIN"."CUSTOMERS" ("CUSTOMER_ID") ENABLE;
  ALTER TABLE "ADMIN"."VIOLATIONS_RECORDS" ADD CONSTRAINT "VIOLATION_ID_FK" FOREIGN KEY ("VIOLATION_ID")
	  REFERENCES "ADMIN"."VIOLATIONS" ("VIOLATION_ID") ENABLE;
