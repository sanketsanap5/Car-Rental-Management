--------------------------------------------------------
--  File created - Thursday-December-16-2021   
--------------------------------------------------------

---------------------------------------------------------
-- SEQUENCE FOR ACTIVITY_ID
---------------------------------------------------------

    CREATE SEQUENCE ACTIVITY_ID_SEQ
         START WITH 1
         INCREMENT BY 1
         ORDER;

---------------------------------------------------------
-- SEQUENCE FOR ADDRESS_ID
---------------------------------------------------------

    CREATE SEQUENCE ADDRESS_ID_SEQ
         START WITH 11111
         INCREMENT BY 1
         ORDER;

---------------------------------------------------------
-- SEQUENCE FOR CAR_ID_SEQ
---------------------------------------------------------
    CREATE SEQUENCE CAR_ID_SEQ
        START WITH 1001
        INCREMENT BY 1
        ORDER;
---------------------------------------------------------
-- SEQUENCE FOR CARS_AT_PICKUP_ID_SEQ
---------------------------------------------------------

    CREATE SEQUENCE CARS_AT_PICKUP_ID_SEQ
         START WITH 9000
         INCREMENT BY 1
         ORDER;
         
---------------------------------------------------------
-- SEQUENCE FOR CUSTOMER_ID
---------------------------------------------------------

    CREATE SEQUENCE CUST_ID_SEQ
        START WITH 1001
        INCREMENT BY 1
        ORDER;
        
---------------------------------------------------------
-- SEQUENCE FOR DISCOUNT_ID_SEQ
---------------------------------------------------------
    CREATE SEQUENCE DISCOUNT_ID_SEQ
         START WITH 100
         INCREMENT BY 1
         ORDER;

---------------------------------------------------------
-- SEQUENCE FOR FEEDBACK_ID_SEQ
---------------------------------------------------------
    CREATE SEQUENCE FEEDBACK_ID_SEQ
         START WITH 1001
         INCREMENT BY 1
         ORDER;
       
---------------------------------------------------------
-- SEQUENCE FOR INSURANCE_ID_SEQ
---------------------------------------------------------

    CREATE SEQUENCE INSURANCE_ID_SEQ
         START WITH 50001
         INCREMENT BY 1
         ORDER;
         
---------------------------------------------------------
-- SEQUENCE FOR RECORD_ID_SEQ
---------------------------------------------------------

    CREATE SEQUENCE RECORD_ID_SEQ
         START WITH 101
         INCREMENT BY 1
         ORDER;

---------------------------------------------------------
-- SEQUENCE FOR MAINTENANCE_ID_SEQ
---------------------------------------------------------

    CREATE SEQUENCE MAINTENANCE_ID_SEQ
         START WITH 5000
         INCREMENT BY 1
         ORDER;

---------------------------------------------------------
-- SEQUENCE FOR PURCHASE_INSURANCE_ID_SEQ
---------------------------------------------------------

    CREATE SEQUENCE PURCHASE_INSURANCE_ID_SEQ
         START WITH 1
         INCREMENT BY 1
         ORDER;
         
---------------------------------------------------------
-- SEQUENCE FOR TRANS_ID_SEQ
---------------------------------------------------------

    CREATE SEQUENCE TRANS_ID_SEQ
        START WITH 101
        INCREMENT BY 1
        ORDER;

---------------------------------------------------------
-- SEQUENCE FOR VIOLATION_ID_SEQ
---------------------------------------------------------

    CREATE SEQUENCE VIOLATION_ID_SEQ
         START WITH 1
         INCREMENT BY 1
         ORDER;

---------------------------------------------------------
-- SEQUENCE FOR PAYMENT_ID_SEQ
---------------------------------------------------------
    CREATE SEQUENCE PAY_ID_SEQ
         START WITH 1
         INCREMENT BY 1
         ORDER;

---------------------------------------------------------
-- SEQUENCE FOR SUPPORT_ID_SEQ
---------------------------------------------------------
    CREATE SEQUENCE SUPPORT_ID_SEQ
         START WITH 1
         INCREMENT BY 1
         ORDER;
             
---------------------------------------------------------
-- SEQUENCE FOR PICKUP_POINT_ID_SEQ
---------------------------------------------------------
    CREATE SEQUENCE PICKUP_POINT_ID_SEQ
         START WITH 7000
         INCREMENT BY 1
         ORDER;
---------------------------------------------------------
-- SEQUENCE FOR AUDIT_ID_SEQ
---------------------------------------------------------
    create sequence AUDIT_ID_SEQ 
    start with 1 
    increment by 1
    order;
    
----------------------------------------------------------

--------------------------------------------------------
--  DDL for Table ACTIVITY
--------------------------------------------------------

  CREATE TABLE ACTIVITY  
   (	  ACTIVITY_ID   NUMBER(25,0), 
	  LOGIN_TIME   DATE, 
	  LOGOUT_TIME   DATE, 
	  CUSTOMER_ID   NUMBER(25,0)
   )       ;
--------------------------------------------------------
--  DDL for Table AUDIT_DATA
--------------------------------------------------------

  CREATE TABLE AUDIT_DATA   
   (	  AUDIT_ID   NUMBER, 
	  USERNAME   VARCHAR2(50)  , 
	  AUDIT_DATE   TIMESTAMP (6) DEFAULT systimestamp, 
	  ACTION   VARCHAR2(25)  
   )       ;
--------------------------------------------------------
--  DDL for Table CAR
--------------------------------------------------------

  CREATE TABLE CAR   
   (	  CAR_ID   NUMBER(25,0), 
	  CAR_TYPE   VARCHAR2(50)  , 
	  MAX_PERSON   NUMBER(2,0) DEFAULT (4), 
	  RATE_PER_HR   NUMBER DEFAULT (10), 
	  MODEL   VARCHAR2(50)  , 
	  CAR_MAKE   VARCHAR2(50)  , 
	  CAR_NUMBER   VARCHAR2(50)  , 
	  CAR_COST   NUMBER(10,0)
   )       ;
--------------------------------------------------------
--  DDL for Table CARS_AT_PICKUP
--------------------------------------------------------

  CREATE TABLE CARS_AT_PICKUP   
   (	  CARS_AT_PICKUP_ID   NUMBER(25,0), 
	  PICKUP_POINT_ID   NUMBER(25,0), 
	  CAR_ID   NUMBER(25,0)
   )       ;
--------------------------------------------------------
--  DDL for Table CUSTOMERS
--------------------------------------------------------

  CREATE TABLE CUSTOMERS   
   (	  CUSTOMER_ID   NUMBER(25,0), 
	  FIRST_NAME   VARCHAR2(50)  , 
	  LAST_NAME   VARCHAR2(50)  , 
	  EMAIL_ID   VARCHAR2(50)  , 
	  CONTACT   NUMBER(10,0), 
	  LICENSE_NUMBER   VARCHAR2(50)  , 
	  PASSPORT_NUMBER   VARCHAR2(50)  , 
	  CUSTOMER_TYPE   VARCHAR2(50)  , 
	  DATE_OF_BIRTH   DATE
   )       ;
--------------------------------------------------------
--  DDL for Table CUSTOMER_ADDRESS
--------------------------------------------------------

  CREATE TABLE CUSTOMER_ADDRESS   
   (	  ADDRESS_ID   NUMBER(25,0), 
	  ADDRESS_LINE1   VARCHAR2(50)  , 
	  ADDRESS_LINE2   VARCHAR2(50)  , 
	  CITY_STATE   VARCHAR2(50)  , 
	  CITY   VARCHAR2(50)  , 
	  CUSTOMER_ID   NUMBER(25,0), 
	  ZIP_CODE   VARCHAR2(10)  , 
	  ADDRESS_TYPE   VARCHAR2(20)   DEFAULT 'HOME'
   )       ;
--------------------------------------------------------
--  DDL for Table DISCOUNTS
--------------------------------------------------------

  CREATE TABLE DISCOUNTS   
   (	  DISCOUNT_ID   NUMBER(25,0), 
	  DESCRIPTION   VARCHAR2(100)  , 
	  PERCENTAGE   NUMBER(3,0)
   )       ;
--------------------------------------------------------
--  DDL for Table FEEDBACK
--------------------------------------------------------

  CREATE TABLE FEEDBACK   
   (	  FEEDBACK_ID   NUMBER(25,0), 
	  RATINGS   NUMBER(2,0), 
	  COMMENTS   VARCHAR2(50)  , 
	  FEEDBACK_DATE   DATE DEFAULT sysdate, 
	  TRANS_ID   NUMBER(25,0)
   )       ;
--------------------------------------------------------
--  DDL for Table INSURANCE
--------------------------------------------------------

  CREATE TABLE INSURANCE   
   (	  INSURANCE_ID   NUMBER(25,0), 
	  SUMMARY   VARCHAR2(50)  , 
	  INSURANCE_TYPE   VARCHAR2(50)  , 
	  INSURANCE_COST   NUMBER(25,0)
   )       ;
--------------------------------------------------------
--  DDL for Table MAINTENANCE
--------------------------------------------------------

  CREATE TABLE MAINTENANCE   
   (	  MAINTENANCE_ID   NUMBER(25,0), 
	  SUMMARY   VARCHAR2(50)  , 
	  MAINTENANCE_DATE   DATE, 
	  MAINTENANCE_COST   NUMBER(25,0), 
	  CAR_ID   NUMBER(25,0), 
	  PURCHASE_INSURANCE_ID   NUMBER(25,0)
   )       ;
--------------------------------------------------------
--  DDL for Table PAYMENTS
--------------------------------------------------------

  CREATE TABLE PAYMENTS   
   (	  PAY_ID   NUMBER(25,0), 
	  PAY_DATE   DATE DEFAULT sysdate, 
	  CUSTOMER_CARD   VARCHAR2(50)   ENCRYPT USING 'AES192' 'SHA-1', 
	  STATUS   VARCHAR2(15)   DEFAULT 'IN PROCESS', 
	  TRANS_ID   NUMBER(25,0), 
	  DISCOUNT_ID   NUMBER(25,0)
   )       ;
--------------------------------------------------------
--  DDL for Table PICKUP_POINTS
--------------------------------------------------------

  CREATE TABLE PICKUP_POINTS   
   (	  PICKUP_POINT_ID   NUMBER(25,0), 
	  STATE   VARCHAR2(50)  , 
	  CITY   VARCHAR2(50)  , 
	  ZIP   VARCHAR2(10)  , 
	  COST   NUMBER(10,0), 
	  NAME   VARCHAR2(50)  
   )       ;
--------------------------------------------------------
--  DDL for Table PURCHASE_INSURANCE
--------------------------------------------------------

  CREATE TABLE PURCHASE_INSURANCE   
   (	  PURCHASE_INSURANCE_ID   NUMBER(25,0), 
	  CAR_ID   NUMBER(25,0), 
	  INSURANCE_ID   NUMBER(25,0), 
	  PURCHASE_DATE   DATE, 
	  EXPIRY_DATE   DATE
   )       ;
--------------------------------------------------------
--  DDL for Table RIDE_TRANSACTION
--------------------------------------------------------

  CREATE TABLE RIDE_TRANSACTION   
   (	  TRANS_ID   NUMBER(25,0), 
	  CUSTOMER_ID   NUMBER(25,0), 
	  CARS_AT_PICKUP_ID   NUMBER(25,0), 
	  TRANSACTION_DATE   DATE DEFAULT sysdate, 
	  START_TIME   TIMESTAMP (6), 
	  END_TIME   TIMESTAMP (6), 
	  CAR_ID   NUMBER(25,0), 
	  DISTANCE   NUMBER(10,0) DEFAULT 0, 
	  STATUS   VARCHAR2(20)   DEFAULT 'IN PROCESS'
   )       ;
--------------------------------------------------------
--  DDL for Table SUPPORT
--------------------------------------------------------

  CREATE TABLE SUPPORT   
   (	  SUPPORT_ID   NUMBER(25,0), 
	  STATUS   VARCHAR2(15)  , 
	  CUSTOMER_ID   NUMBER(25,0), 
	  TRANS_ID   NUMBER(25,0)
   )       ;
--------------------------------------------------------
--  DDL for Table VIOLATIONS
--------------------------------------------------------

  CREATE TABLE VIOLATIONS   
   (	  VIOLATION_ID   NUMBER(25,0), 
	  DESCRIPTION   VARCHAR2(50)  
   )       ;
--------------------------------------------------------
--  DDL for Table VIOLATIONS_RECORDS
--------------------------------------------------------

  CREATE TABLE VIOLATIONS_RECORDS   
   (	  RECORD_ID   NUMBER(25,0), 
	  RECORD_DATE   DATE, 
	  CUSTOMER_ID   NUMBER(25,0), 
	  VIOLATION_ID   NUMBER(25,0)
   )       ;

--------------------------------------------------------

------------------------------------
-- Payment_Bill View
------------------------------------

create or replace view payment_bill as
select pay_id, payments.trans_id, pay_date, discount_id, payments.status, START_TIME, END_TIME, 
    case
        when ceil((extract(hour from END_TIME - START_TIME)*60 + round(abs(extract(minute from  END_TIME - START_TIME)),2))/60) < 1 then 1
        else
            ceil(round(extract(hour from END_TIME - START_TIME)*60 + round(abs(extract(minute from  END_TIME - START_TIME)),2),2)/60)
    END as Ride_Duration, distance, RATE_PER_HR, 
    round(RATE_PER_HR * 
        case
            when ceil((extract(hour from END_TIME - START_TIME)*60 + round(abs(extract(minute from  END_TIME - START_TIME)),2))/60) < 1 then 1
        else
           ceil((extract(hour from END_TIME - START_TIME)*60 + round(abs(extract(minute from  END_TIME - START_TIME)),2))/60)
        END,2) as BILL_AMOUNT
from payments, ride_transaction,
(
 select CAR_ID, RATE_PER_HR FROM CAR
) p
where   ride_transaction.car_id = p.car_id and 
        ride_transaction.trans_id = payments.trans_id;
    

------------------------------------
-- Analyst View
------------------------------------

create or replace view analyst_view as
SELECT cust.FIRST_NAME, cust.LAST_NAME, cust.EMAIL_ID, cust.CUSTOMER_TYPE, car.car_make, car.model, car.car_type, car.rate_per_hr, rt.TRANSACTION_DATE, 
rt.START_TIME, rt.END_TIME, bill.ride_duration, rt.DISTANCE, rt.status as trans_status, pay.PAY_DATE, bill.status as payment_status, bill.bill_amount
FROM customers cust, ride_transaction rt, payments pay, car, payment_bill bill
WHERE   cust.CUSTOMER_ID = rt.CUSTOMER_ID and rt.TRANS_ID = pay.TRANS_ID and 
        rt.CAR_ID = car.CAR_ID and rt.TRANS_ID = bill.TRANS_ID;

------------------------------------
--  audit_view
------------------------------------

create or replace view audit_view as
SELECT cust.CUSTOMER_ID, cust.first_name, cust.last_name, cust.email_id, to_char(act.login_time, 'DD-MON-YYYY HH24:MI:SS') login_time, 
to_char(act.logout_time, 'DD-MON-YYYY HH24:MI:SS') logout_time
FROM customers cust, activity act
WHERE cust.CUSTOMER_ID = act.CUSTOMER_ID;

------------------------------------
-- car_bookings_by_distane
------------------------------------

create or replace view car_bookings_by_distance as
select car.car_type, q.distance,
round( sum(q.total) /
    (
        select Average_Rides from
        (
            select  car.car_type as car_type, sum(p.count_trans) as Average_Rides
            from car, (select car_id, count(trans_id) as count_trans from RIDE_TRANSACTION group by car_id) p
            where car.car_id = p.car_id 
            group by car.car_type
        )
        where car_type = car.car_type
    ) *100 ,2)|| '%' as Average_Rides
from car,
(
    select t.distance, car.car_id, sum(total) as total
    from car,
    (
        select 
        case 
             when distance between 0  and 10 then '0-10 Miles'
             when distance between 11 and 20 then '11-20 Miles'
             when distance between 21 and 30 then '21-30 Miles'
             when distance between 31 and 40 then '31-40 Miles'
             when distance between 41 and 50 then '41-50 Miles'
             when distance between 51 and 60 then '51-60 Miles'
             when distance > 61 then '61+ Miles'
             when distance is null then 'IGNORE'
        END as distance, car_id,count(distance) as total 
        from ride_transaction group by distance, car_id
    ) t
    where car.car_id = t.car_id
    group by t.distance, car.car_id
) q
where car.car_id = q.car_id
group by car.car_type, q.distance
order by car.car_type, distance;

------------------------------------
-- Feedback_report
------------------------------------

create or replace view feedback_report as
select ratings, round(count(ratings)/ (select count(*) from feedback) * 100,2) || ' %' as Percentage 
from feedback 
group by ratings
order by ratings;

-------------------------------------
-- Inactive_customer
-------------------------------------

create or replace view inactive_customers as
select customers.customer_id, customers.first_name, customers.last_name, customers.email_id
from customers
where customers.customer_id NOT IN 
    (
    select distinct customer_id from ride_transaction
    ) or
       customers.customer_id in 
       (
           select distinct customer_id 
           from ride_transaction 
           where months_between(sysdate,transaction_date) > 6
       );
    
-------------------------------------
-- Prevalent_car_type
-------------------------------------

create or replace view prevalent_car_types as
select car.car_type, round(sum(p.count_trans)/(select count(*) from RIDE_TRANSACTION) *100,2) || '%' as Average_Rides
from car, (select car_id, count(trans_id) as count_trans from RIDE_TRANSACTION group by car_id) p
where car.car_id = p.car_id
group by car.car_type;

--------------------------------------
-- usage_pattern
--------------------------------------

create or replace view usage_pattern as
select
case
        when ride_duration >= 0 and ride_duration < 2 then '0-2 Hr'
        when ride_duration >= 2 and ride_duration < 4 then '2-4 Hr'
        when ride_duration >= 4 and ride_duration < 6 then '4-6 Hr'
        when ride_duration >= 6 and ride_duration < 8 then '6-8 Hr'
        when ride_duration >= 8 and ride_duration <= 10 then '8-10 Hr'
    end as Frame, over
from
(
select 
    *
from 
(
    select ride_duration , count(ride_duration) as over
    from payment_bill
    where distance > 20 and distance > 0  and ride_duration >= 0 and ride_duration < 2 
    group by ride_duration
) 
UNION
(
    select ride_duration , count(ride_duration) as over
    from payment_bill
    where distance > 40  and ride_duration >= 2 and  ride_duration < 4
    group by ride_duration
) 
UNION
(
    select ride_duration, count(ride_duration) as over
    from payment_bill
    where distance > 60  and ride_duration >= 4 and  ride_duration < 6
    group by ride_duration
)
UNION
(
    select ride_duration, count(ride_duration) as over
    from payment_bill
    where distance > 80  and ride_duration >= 6 and  ride_duration < 8
    group by ride_duration
)
UNION
(
    select ride_duration, count(ride_duration) as over
    from payment_bill
    where distance > 100  and ride_duration >= 8 and  ride_duration <= 10
    group by ride_duration
)
);

--------------------------------------
-- support_view
--------------------------------------

create or replace view support_view as
select support_id, support.trans_id, support.customer_id, first_name, last_name, email_id, contact, 
customer_type, car_id, rate_per_hr, ride_duration, transaction_date, pay_id, pay_date, bill_amount, support.status as "Support Status"
from support, ride_transaction, payment_bill, customers
where
    support.trans_id = ride_transaction.trans_id and
    support.trans_id = payment_bill.trans_id and
    support.customer_id = customers.customer_id and
    support.customer_id = ride_transaction.customer_id;
    
--------------------------------------
-- REVENUE BY REGION PER QUARTER
--------------------------------------

create or replace view REVENUE_2021_PER_QUARTER as
select STATE, quarter, SUM(PAYMENT_BILL.BILL_AMOUNT) as BILL
from RIDE_TRANSACTION, PAYMENT_BILL,
(
    select trans_id,
        case
            when TRUNC(TRANSACTION_DATE) >= to_date('01-JAN-2021','DD-MON-YYYY') and TRUNC(TRANSACTION_DATE) <= to_date('31-MAR-2021','DD-MON-YYYY') then 'Q1'
            when TRUNC(TRANSACTION_DATE) >= to_date('01-APR-2021','DD-MON-YYYY') and TRUNC(TRANSACTION_DATE) <= to_date('30-JUN-2021','DD-MON-YYYY') then 'Q2'
            when TRUNC(TRANSACTION_DATE) >= to_date('01-JUL-2021','DD-MON-YYYY') and TRUNC(TRANSACTION_DATE) <= to_date('30-SEP-2021','DD-MON-YYYY') then 'Q3'
            when TRUNC(TRANSACTION_DATE) >= to_date('01-OCT-2021','DD-MON-YYYY') and TRUNC(TRANSACTION_DATE) <= to_date('31-DEC-2021','DD-MON-YYYY') then 'Q4'
        END as quarter
    from ride_transaction
    where extract(year from TRANSACTION_DATE) = 2021
) qt,
(
    select TRANS_ID, STATE
    FROM RIDE_TRANSACTION,
    (
        select CARS_AT_PICKUP.CARS_AT_PICKUP_ID, CARS_AT_PICKUP.PICKUP_POINT_ID, STATE
        from CARS_AT_PICKUP,
        (
            select PICKUP_POINT_ID, STATE FROM PICKUP_POINTS
        ) q
        where CARS_AT_PICKUP.PICKUP_POINT_ID = q.PICKUP_POINT_ID
    ) p
    where RIDE_TRANSACTION.CARS_AT_PICKUP_ID = p.CARS_AT_PICKUP_ID
) STATES_BY_TRANS
where 
    RIDE_TRANSACTION.TRANS_ID = STATES_BY_TRANS.TRANS_ID and
    RIDE_TRANSACTION.TRANS_ID = PAYMENT_BILL.TRANS_ID and
    RIDE_TRANSACTION.TRANS_ID = qt.TRANS_ID and
    extract(year from RIDE_TRANSACTION.END_TIME) = 2021
group by STATE, quarter
order by STATE, quarter;


--------------------------------------------------------
--  DDL for Index VIOLATIONS_RECORDS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX VIOLATIONS_RECORDS_PK   ON VIOLATIONS_RECORDS   (  RECORD_ID  ) 
  ;
--------------------------------------------------------
--  DDL for Index RIDE_TRANSACTION_INDEX
--------------------------------------------------------

  CREATE INDEX RIDE_TRANSACTION_INDEX   ON RIDE_TRANSACTION   (  CARS_AT_PICKUP_ID  , START_TIME  , CAR_ID  , END_TIME  ) 
  ;
--------------------------------------------------------
--  DDL for Index CARS_AT_PICKUP_INDEX
--------------------------------------------------------

  CREATE INDEX CARS_AT_PICKUP_INDEX   ON CARS_AT_PICKUP   (  PICKUP_POINT_ID  , CAR_ID  ) 
  ;
--------------------------------------------------------
--  DDL for Trigger RIDE_TRANS_TRIGG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER RIDE_TRANS_TRIGG   
AFTER INSERT OR UPDATE OR DELETE
ON RIDE_TRANSACTION
FOR EACH ROW
BEGIN
CASE
    WHEN INSERTING THEN
    INSERT INTO audit_data values(AUDIT_ID_SEQ.nextval, user, systimestamp, 'INSERT');
    WHEN UPDATING THEN
    INSERT INTO audit_data values(AUDIT_ID_SEQ.nextval, user, systimestamp, 'UPDATE');
    WHEN DELETING THEN
    INSERT INTO audit_data values(AUDIT_ID_SEQ.nextval, user, systimestamp, 'DELETE');
END CASE;
END;
/
ALTER TRIGGER RIDE_TRANS_TRIGG   ENABLE;
--------------------------------------------------------
--  DDL for Package PCKG_CAR
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE PCKG_CAR   AS 

  /* TODO enter package declarations (types, exceptions, methods etc) here */
    
    FUNCTION PROCESS_CAR(
        vCAR_TYPE IN CAR.CAR_TYPE%type,
        vMAX_PERSON IN CAR.MAX_PERSON%type,
        vRATE_PER_HR IN CAR.RATE_PER_HR %type,
        vMODEL IN CAR.MODEL%type,
        vCAR_MAKE IN CAR.CAR_MAKE%type,
        vCAR_NUMBER IN CAR.CAR_NUMBER%type,
        vCAR_COST IN CAR.CAR_COST%type 
    ) RETURN VARCHAR2;
    
    FUNCTION PROCESS_UPDATE_CAR(
        vCAR_ID IN CAR.CAR_ID%type,
        vCAR_TYPE IN CAR.CAR_TYPE%type,
        vMAX_PERSON IN CAR.MAX_PERSON%type,
        vRATE_PER_HR IN CAR.RATE_PER_HR %type,
        vMODEL IN CAR.MODEL%type,
        vCAR_MAKE IN CAR.CAR_MAKE%type,
        vCAR_NUMBER IN CAR.CAR_NUMBER%type,
        vCAR_COST IN CAR.CAR_COST%type 
    ) RETURN VARCHAR2;
    
    FUNCTION PROCESS_CARS_AT_PICKUP(
        vCARS_AT_PICKUP_ID IN CARS_AT_PICKUP.CARS_AT_PICKUP_ID%type,
        vPICKUP_POINT_ID IN CARS_AT_PICKUP.PICKUP_POINT_ID%type,
        vCAR_ID IN CARS_AT_PICKUP.CAR_ID%type
    ) RETURN VARCHAR2;
    
    FUNCTION PROCESS_MAINTENANCE(
        vSUMMARY IN MAINTENANCE.SUMMARY%TYPE, 
        vMAINTENANCE_DATE IN MAINTENANCE.MAINTENANCE_DATE%TYPE, 
        vMAINTENANCE_COST IN MAINTENANCE.MAINTENANCE_COST%TYPE, 
        vCAR_ID IN MAINTENANCE.CAR_ID%TYPE, 
        vPURCHASE_INSURANCE_ID IN MAINTENANCE.PURCHASE_INSURANCE_ID%TYPE
    ) RETURN VARCHAR2;
    
    FUNCTION PROCESS_PICKUP_POINTS(
        vSTATE IN PICKUP_POINTS.STATE%type,
        vCITY IN PICKUP_POINTS.CITY%type,
        vZIP IN PICKUP_POINTS.ZIP%type,
        vCOST IN PICKUP_POINTS.COST%type,
        vNAME IN PICKUP_POINTS.NAME%type
    ) RETURN VARCHAR2;

    PROCEDURE INSERT_CAR(
        vCAR_ID IN CAR.CAR_ID%type,
        vCAR_TYPE IN CAR.CAR_TYPE%type,
        vMAX_PERSON IN CAR.MAX_PERSON%type,
        vRATE_PER_HR IN CAR.RATE_PER_HR %type,
        vMODEL IN CAR.MODEL%type,
        vCAR_MAKE IN CAR.CAR_MAKE%type,
        vCAR_NUMBER IN CAR.CAR_NUMBER%type,
        vCAR_COST IN CAR.CAR_COST%type
    );
    
    PROCEDURE UPDATE_CAR(
        vCAR_ID IN CAR.CAR_ID%type,
        vCAR_TYPE IN CAR.CAR_TYPE%type,
        vMAX_PERSON IN CAR.MAX_PERSON%type,
        vRATE_PER_HR IN CAR.RATE_PER_HR %type,
        vMODEL IN CAR.MODEL%type,
        vCAR_MAKE IN CAR.CAR_MAKE%type,
        vCAR_NUMBER IN CAR.CAR_NUMBER%type,
        vCAR_COST IN CAR.CAR_COST%type
    );
    
    PROCEDURE INSERT_PICKUP_POINT(
        vPICKUP_POINT_ID IN PICKUP_POINTS.PICKUP_POINT_ID%type,
        vSTATE IN PICKUP_POINTS.STATE%type,
        vCITY IN PICKUP_POINTS.CITY%type,
        vZIP IN PICKUP_POINTS.ZIP%type,
        vCOST IN PICKUP_POINTS.COST%type,
        vNAME IN PICKUP_POINTS.NAME%type
    );

    PROCEDURE UPDATE_PICKUP_POINT(
        vPICKUP_POINT_ID IN PICKUP_POINTS.PICKUP_POINT_ID%TYPE, 
        vSTATE IN PICKUP_POINTS.STATE%TYPE,  
        vCITY IN PICKUP_POINTS.CITY%TYPE, 
        vZIP IN PICKUP_POINTS.ZIP%TYPE, 
        vCOST IN PICKUP_POINTS.COST%TYPE, 
        vNAME IN PICKUP_POINTS.NAME%TYPE
    );
    
    PROCEDURE INSERT_CARS_AT_PICKUP(
        vCARS_AT_PICKUP_ID IN CARS_AT_PICKUP.CARS_AT_PICKUP_ID%type,
        vPICKUP_POINT_ID IN CARS_AT_PICKUP.PICKUP_POINT_ID%type,
        vCAR_ID IN CARS_AT_PICKUP.CAR_ID%type
    );

    PROCEDURE UPDATE_CARS_AT_PICKUP(
        vCARS_AT_PICKUP_ID CARS_AT_PICKUP.CARS_AT_PICKUP_ID%type,
        vPICKUP_POINT_ID PICKUP_POINTS.PICKUP_POINT_ID%type,
        vCAR_ID CAR.CAR_ID%type
    );
    
    PROCEDURE INSERT_MAINTENANCE(
        vMAINTENANCE_ID IN MAINTENANCE.MAINTENANCE_ID%TYPE, 
        vSUMMARY IN MAINTENANCE.SUMMARY%TYPE, 
        vMAINTENANCE_DATE IN MAINTENANCE.MAINTENANCE_DATE%TYPE, 
        vMAINTENANCE_COST IN MAINTENANCE.MAINTENANCE_COST%TYPE, 
        vCAR_ID IN MAINTENANCE.CAR_ID%TYPE, 
        vPURCHASE_INSURANCE_ID IN MAINTENANCE.PURCHASE_INSURANCE_ID%TYPE
    );
    
    PROCEDURE DELETE_CAR (
        vCAR_ID IN CAR.CAR_ID%type
    );
    
END PCKG_CAR;

/
--------------------------------------------------------
--  DDL for Package PCKG_CUSTOMER
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE PCKG_CUSTOMER   AS 

    ex_INVALID EXCEPTION;
    
    FUNCTION PROCESS_ACTIVITY(
        vACTIVITY_ID IN ACTIVITY.ACTIVITY_ID%type,
        vLOGIN_TIME  IN ACTIVITY.LOGIN_TIME%type,
        vLOGOUT_TIME IN ACTIVITY.LOGOUT_TIME%type,
        vCUSTOMER_ID IN ACTIVITY.CUSTOMER_ID%type) 
    RETURN VARCHAR2;

    FUNCTION PROCESS_CUSTOMER(
        vFIRST_NAME IN CUSTOMERS.FIRST_NAME%type, 
        vLAST_NAME IN CUSTOMERS.LAST_NAME%type, 
        vEMAIL_ID IN CUSTOMERS.EMAIL_ID%type,
        vCONTACT IN CUSTOMERS.CONTACT%type, 
        vLICENSE_NUMBER IN CUSTOMERS.LICENSE_NUMBER%type,
        vPASSPORT_NUMBER IN CUSTOMERS.PASSPORT_NUMBER%type, 
        vCUSTOMER_TYPE IN CUSTOMERS.CUSTOMER_TYPE%type, 
        vDATE_OF_BIRTH IN CUSTOMERS.DATE_OF_BIRTH%type) 
    RETURN VARCHAR2;
    
    FUNCTION PROCESS_UPDATE_CUSTOMER(
        vCUSTOMER_ID IN CUSTOMERS.CUSTOMER_ID%type,
        vFIRST_NAME IN CUSTOMERS.FIRST_NAME%type, 
        vLAST_NAME IN CUSTOMERS.LAST_NAME%type, 
        vEMAIL_ID IN CUSTOMERS.EMAIL_ID%type,
        vCONTACT IN CUSTOMERS.CONTACT%type, 
        vLICENSE_NUMBER IN CUSTOMERS.LICENSE_NUMBER%type,
        vPASSPORT_NUMBER IN CUSTOMERS.PASSPORT_NUMBER%type, 
        vCUSTOMER_TYPE IN CUSTOMERS.CUSTOMER_TYPE%type, 
        vDATE_OF_BIRTH IN CUSTOMERS.DATE_OF_BIRTH%type) 
    RETURN VARCHAR2;
    
    FUNCTION PROCESS_CUSTOMER_ADDRESS(
        vADDRESS_LINE1 IN CUSTOMER_ADDRESS.ADDRESS_LINE1%TYPE,
        vADDRESS_LINE2 IN CUSTOMER_ADDRESS.ADDRESS_LINE2%TYPE,
        vCITY_STATE IN CUSTOMER_ADDRESS.CITY_STATE%TYPE,
        vCITY IN CUSTOMER_ADDRESS.CITY%TYPE, 
        vZIP_CODE IN CUSTOMER_ADDRESS.ZIP_CODE%TYPE, 
        vADDRESS_TYPE IN CUSTOMER_ADDRESS.ADDRESS_TYPE%TYPE) 
    RETURN VARCHAR2;


    PROCEDURE INSERT_CUSTOMER(
        vCUSTOMER_ID IN CUSTOMERS.CUSTOMER_ID%type,
        vFIRST_NAME IN CUSTOMERS.FIRST_NAME%type,
        vLAST_NAME IN CUSTOMERS.LAST_NAME%type, 
        vEMAIL_ID IN CUSTOMERS.EMAIL_ID%type,
        vCONTACT IN CUSTOMERS.CONTACT%type, 
        vLICENSE_NUMBER IN CUSTOMERS.LICENSE_NUMBER%type,
        vPASSPORT_NUMBER IN CUSTOMERS.PASSPORT_NUMBER%type, 
        vCUSTOMER_TYPE IN CUSTOMERS.CUSTOMER_TYPE%type, 
        vDATE_OF_BIRTH IN CUSTOMERS.DATE_OF_BIRTH%type);

    PROCEDURE UPDATE_CUSTOMERS(
        vCUSTOMER_ID IN CUSTOMERS.CUSTOMER_ID%type,
        vFIRST_NAME IN CUSTOMERS.FIRST_NAME%type,
        vLAST_NAME IN CUSTOMERS.LAST_NAME%type, 
        vEMAIL_ID IN CUSTOMERS.EMAIL_ID%type,
        vCONTACT IN CUSTOMERS.CONTACT%type, 
        vLICENSE_NUMBER IN CUSTOMERS.LICENSE_NUMBER%type,
        vPASSPORT_NUMBER IN CUSTOMERS.PASSPORT_NUMBER%type, 
        vCUSTOMER_TYPE IN CUSTOMERS.CUSTOMER_TYPE%type, 
        vDATE_OF_BIRTH IN CUSTOMERS.DATE_OF_BIRTH%type);
      
    PROCEDURE INSERT_CUSTOMER_ADDRESS(
        vADDRESS_ID IN CUSTOMER_ADDRESS.ADDRESS_ID%TYPE,
        vADDRESS_LINE1 IN CUSTOMER_ADDRESS.ADDRESS_LINE1%TYPE,
        vADDRESS_LINE2 IN CUSTOMER_ADDRESS.ADDRESS_LINE2%TYPE,
        vCITY_STATE IN CUSTOMER_ADDRESS.CITY_STATE%TYPE,
        vCITY IN CUSTOMER_ADDRESS.CITY%TYPE,
        vCUSTOMER_ID IN CUSTOMER_ADDRESS.CUSTOMER_ID%TYPE,
        vZIP_CODE IN CUSTOMER_ADDRESS.ZIP_CODE%TYPE,
        vADDRESS_TYPE IN CUSTOMER_ADDRESS.ADDRESS_TYPE%TYPE);
    
    PROCEDURE UPDATE_CUSTOMER_ADDRESS(
        vADDRESS_ID IN CUSTOMER_ADDRESS.ADDRESS_ID%TYPE,
        vADDRESS_LINE1 IN CUSTOMER_ADDRESS.ADDRESS_LINE1%TYPE,
        vADDRESS_LINE2 IN CUSTOMER_ADDRESS.ADDRESS_LINE2%TYPE,
        vCITY_STATE IN CUSTOMER_ADDRESS.CITY_STATE%TYPE,
        vCITY IN CUSTOMER_ADDRESS.CITY%TYPE,
        vCUSTOMER_ID IN CUSTOMER_ADDRESS.CUSTOMER_ID%TYPE,
        vZIP_CODE IN CUSTOMER_ADDRESS.ZIP_CODE%TYPE,
        vADDRESS_TYPE IN CUSTOMER_ADDRESS.ADDRESS_TYPE%TYPE);
    
    PROCEDURE INSERT_ACTIVITY(
        vACTIVITY_ID IN ACTIVITY.ACTIVITY_ID%type,
        vLOGIN_TIME  IN ACTIVITY.LOGIN_TIME%type,
        vLOGOUT_TIME IN ACTIVITY.LOGOUT_TIME%type,
        vCUSTOMER_ID IN ACTIVITY.CUSTOMER_ID%type);
    
       
END PCKG_CUSTOMER;

/
--------------------------------------------------------
--  DDL for Package PCKG_INSURANCE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE PCKG_INSURANCE   AS 

  /* TODO enter package declarations (types, exceptions, methods etc) here */ 

    FUNCTION PROCESS_INSURANCE(
        vSUMMARY IN INSURANCE.SUMMARY%TYPE,
        vINSURANCE_TYPE IN INSURANCE.INSURANCE_TYPE%TYPE,
        vINSURANCE_COST IN INSURANCE.INSURANCE_COST%TYPE 
    ) RETURN VARCHAR2;
    
    FUNCTION PROCESS_PURCHASE_INSURANCE(
        vCAR_ID IN PURCHASE_INSURANCE.CAR_ID%TYPE, 
        vINSURANCE_ID IN PURCHASE_INSURANCE.INSURANCE_ID%TYPE, 
        vPURCHASE_DATE IN PURCHASE_INSURANCE.PURCHASE_DATE%TYPE, 
        vEXPIRY_DATE IN PURCHASE_INSURANCE.EXPIRY_DATE%TYPE 
    ) RETURN VARCHAR2;
    
    PROCEDURE INSERT_INSURANCE(
        vINSURANCE_ID IN INSURANCE.INSURANCE_ID%TYPE, 
        vSUMMARY IN INSURANCE.SUMMARY%TYPE, 
        vINSURANCE_TYPE IN INSURANCE.INSURANCE_TYPE%TYPE, 
        vINSURANCE_COST IN INSURANCE.INSURANCE_COST%TYPE 
    );
  
    PROCEDURE UPDATE_INSURANCE(
        vINSURANCE_ID IN INSURANCE.INSURANCE_ID%TYPE, 
        vSUMMARY IN INSURANCE.SUMMARY%TYPE, 
        vINSURANCE_TYPE IN INSURANCE.INSURANCE_TYPE%TYPE, 
        vINSURANCE_COST IN INSURANCE.INSURANCE_COST%TYPE 
    );
  

    PROCEDURE INSERT_PURCHASE_INSURANCE(
        vPURCHASE_INSURANCE_ID IN PURCHASE_INSURANCE.PURCHASE_INSURANCE_ID%TYPE, 
        vCAR_ID IN PURCHASE_INSURANCE.CAR_ID%TYPE, 
        vINSURANCE_ID IN PURCHASE_INSURANCE.INSURANCE_ID%TYPE, 
        vPURCHASE_DATE IN PURCHASE_INSURANCE.PURCHASE_DATE%TYPE, 
        vEXPIRY_DATE IN PURCHASE_INSURANCE.EXPIRY_DATE%TYPE 
    );
    
END PCKG_INSURANCE;

/
--------------------------------------------------------
--  DDL for Package PCKG_SERVICE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE PCKG_SERVICE   AS 
    
    FUNCTION PROCESS_SUPPORT(
        vSUPPORT_ID IN SUPPORT.SUPPORT_ID%type,
        vSTATUS IN SUPPORT.STATUS%type,
        vCUSTOMER_ID IN SUPPORT.CUSTOMER_ID%type,
        vTRANS_ID IN SUPPORT.TRANS_ID%type) 
    RETURN VARCHAR2;
    
    FUNCTION PROCESS_FEEDBACK(
        v_RATINGS IN FEEDBACK.RATINGS%TYPE, 
        v_COMMENTS IN FEEDBACK.COMMENTS%TYPE, 
        v_FEEDBACK_DATE IN FEEDBACK.FEEDBACK_DATE%TYPE, 
        v_TRANS_ID IN FEEDBACK.TRANS_ID%TYPE) 
    RETURN VARCHAR2;

    PROCEDURE INSERT_SUPPORT(
        vSUPPORT_ID IN SUPPORT.SUPPORT_ID%type,
        vSTATUS IN SUPPORT.STATUS%type,
        vCUSTOMER_ID IN SUPPORT.CUSTOMER_ID%type,
        vTRANS_ID IN SUPPORT.TRANS_ID%type);

    PROCEDURE UPDATE_SUPPORT(
        vSUPPORT_ID IN SUPPORT.SUPPORT_ID%type,
        vSTATUS IN SUPPORT.STATUS%type,
        vCUSTOMER_ID IN SUPPORT.CUSTOMER_ID%type,
        vTRANS_ID IN SUPPORT.TRANS_ID%type);

    PROCEDURE INSERT_FEEDBACK(
        v_FEEDBACK_ID IN FEEDBACK.FEEDBACK_ID%TYPE, 
        v_RATINGS IN FEEDBACK.RATINGS%TYPE, 
        v_COMMENTS IN FEEDBACK.COMMENTS%TYPE, 
        v_FEEDBACK_DATE IN FEEDBACK.FEEDBACK_DATE%TYPE, 
        v_TRANS_ID IN FEEDBACK.TRANS_ID%TYPE);
        
END PCKG_SERVICE;

/
--------------------------------------------------------
--  DDL for Package PCKG_TRANSACT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE PCKG_TRANSACT   AS 

  /* TODO enter package declarations (types, exceptions, methods etc) here */ 
    
    FUNCTION PROCESS_DISCOUNTS(
        vDESCRIPTION IN DISCOUNTS.DESCRIPTION%TYPE, 
        vPERCENTAGE IN DISCOUNTS.PERCENTAGE%TYPE 
    )RETURN VARCHAR2;

    FUNCTION PROCESS_PAYMENTS(
        vPAY_DATE IN PAYMENTS.PAY_DATE%TYPE, 
        vCUSTOMER_CARD IN PAYMENTS.CUSTOMER_CARD%TYPE, 
        vSTATUS IN PAYMENTS.STATUS%TYPE, 
        vTRANS_ID IN PAYMENTS.TRANS_ID%TYPE, 
        vDISCOUNT_ID IN PAYMENTS.DISCOUNT_ID%TYPE 
    )RETURN VARCHAR2;

    FUNCTION PROCESS_RIDE_TRANSACTION 
    (
        vTRANS_ID IN RIDE_TRANSACTION.TRANS_ID%type,
        vCUSTOMER_ID IN CUSTOMERS.CUSTOMER_ID%type,
        vCARS_AT_PICKUP_ID IN CARS_AT_PICKUP.CARS_AT_PICKUP_ID%type,
        vSTART_TIME IN RIDE_TRANSACTION.START_TIME%type,
        vEND_TIME IN RIDE_TRANSACTION.END_TIME%type,
        vCAR_ID IN CAR.CAR_ID%type,
        vDISTANCE IN RIDE_TRANSACTION.DISTANCE%type,
        vSTATUS IN RIDE_TRANSACTION.STATUS%type 
    ) RETURN VARCHAR2;
    
    FUNCTION PROCESS_UPDATE_RIDE_TRANSACTION(
        vTRANS_ID IN RIDE_TRANSACTION.TRANS_ID%type,
        vCARS_AT_PICKUP_ID IN CARS_AT_PICKUP.CARS_AT_PICKUP_ID%type,
        vSTART_TIME IN RIDE_TRANSACTION.START_TIME%type,
        vEND_TIME IN RIDE_TRANSACTION.END_TIME%type,
        vCAR_ID IN CAR.CAR_ID%type,
        vDISTANCE IN RIDE_TRANSACTION.DISTANCE%type,
        vSTATUS IN RIDE_TRANSACTION.STATUS%type 
    ) RETURN VARCHAR2;
    
    PROCEDURE INSERT_RIDE_TRANSACTION(
        vTRANS_ID IN RIDE_TRANSACTION.TRANS_ID%type,
        vCUSTOMER_ID IN CUSTOMERS.CUSTOMER_ID%type,
        vCARS_AT_PICKUP_ID IN CARS_AT_PICKUP.CARS_AT_PICKUP_ID%type,
        vSTART_TIME IN RIDE_TRANSACTION.START_TIME%type,
        vEND_TIME IN RIDE_TRANSACTION.END_TIME%type,
        vCAR_ID IN CAR.CAR_ID%type,
        vDISTANCE IN RIDE_TRANSACTION.DISTANCE%type,
        vSTATUS IN RIDE_TRANSACTION.STATUS%type
    );

    PROCEDURE UPDATE_RIDE_TRANSACTION(
        vTRANS_ID IN RIDE_TRANSACTION.TRANS_ID%type,
        vCARS_AT_PICKUP_ID IN CARS_AT_PICKUP.CARS_AT_PICKUP_ID%type,
        vSTART_TIME IN RIDE_TRANSACTION.START_TIME%type,
        vEND_TIME IN RIDE_TRANSACTION.END_TIME%type,
        vCAR_ID IN CAR.CAR_ID%type,
        vDISTANCE IN RIDE_TRANSACTION.DISTANCE%type,
        vSTATUS IN RIDE_TRANSACTION.STATUS%type,
        vCUSTOMER_CARD PAYMENTS.CUSTOMER_CARD %type,
        vDISCOUNT_ID DISCOUNTS.DISCOUNT_ID%type
    );
    
    PROCEDURE INSERT_PAYMENT(
        vPAY_ID IN PAYMENTS.PAY_ID%TYPE, 
        vPAY_DATE IN PAYMENTS.PAY_DATE%TYPE, 
        vCUSTOMER_CARD IN PAYMENTS.CUSTOMER_CARD%TYPE, 
        vSTATUS IN PAYMENTS.STATUS%TYPE, 
        vTRANS_ID IN PAYMENTS.TRANS_ID%TYPE, 
        vDISCOUNT_ID IN PAYMENTS.DISCOUNT_ID%TYPE
    );
    
    PROCEDURE UPDATE_PAYMENT(
        vPAY_ID IN PAYMENTS.PAY_ID%TYPE
    );
    
    PROCEDURE INSERT_DISCOUNT(
        vDISCOUNT_ID IN DISCOUNTS.DISCOUNT_ID%TYPE, 
        vDESCRIPTION IN DISCOUNTS.DESCRIPTION%TYPE, 
        vPERCENTAGE IN DISCOUNTS.PERCENTAGE%TYPE 
    );

    PROCEDURE UPDATE_DISCOUNT(
        vDISCOUNT_ID IN DISCOUNTS.DISCOUNT_ID%TYPE, 
        vDESCRIPTION IN DISCOUNTS.DESCRIPTION%TYPE, 
        vPERCENTAGE IN DISCOUNTS.PERCENTAGE%TYPE
    );


END PCKG_TRANSACT;

/
--------------------------------------------------------
--  DDL for Package PCKG_UTILS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE PCKG_UTILS   AS 

    FUNCTION CHECK_CAR_AT_PICKUP_EXISTS 
    (
    vCARS_ID IN NUMBER 
    ) RETURN NUMBER;

    FUNCTION CHECK_CAR_AT_PICKUP_ID_EXISTS 
    (
    vCARS_AT_PICKUP_ID IN NUMBER 
    ) RETURN NUMBER;

    FUNCTION CHECK_CAR_AVAILABILITY 
    (
    vCAR_ID IN CAR.CAR_ID%type,
    vSTART_TIME IN RIDE_TRANSACTION.START_TIME%type,
    vEND_TIME IN RIDE_TRANSACTION.END_TIME%type 
    ) RETURN NUMBER;

    FUNCTION CHECK_CAR_ID_EXISTS 
    (
    vCAR_ID IN NUMBER 
    ) RETURN NUMBER;

    FUNCTION CHECK_CUSTOMER_ID_EXISTS 
    (
    vCUST_ID IN CUSTOMERS.CUSTOMER_ID%type 
    ) RETURN NUMBER;

    FUNCTION CHECK_PASSSPORT_EXISTS 
    (
    vPASSPORT_NO IN CUSTOMERS.PASSPORT_NUMBER%type
    ) RETURN VARCHAR2;

    FUNCTION CHECK_PICKUP_POINT_EXISTS 
    (
    vPICKUP_POINT_ID IN NUMBER 
    ) RETURN NUMBER;

    FUNCTION CHECK_TRANS_ID_EXISTS 
    (
    vTRANS_ID IN NUMBER 
    ) RETURN NUMBER;

    PROCEDURE SHOW_ALL_AVAILABLE_CARS(
        vSTART_TIME IN RIDE_TRANSACTION.START_TIME%type,
        vEND_TIME IN RIDE_TRANSACTION.END_TIME%type
    );

    PROCEDURE GET_CAR(
        vCAR_ID IN CAR.CAR_ID%type
    );

    FUNCTION CHECK_ADDRESS_ID_EXISTS(
        vADDRESS_ID IN CUSTOMER_ADDRESS.ADDRESS_ID%type  
    ) RETURN NUMBER;

END PCKG_UTILS;

/
--------------------------------------------------------
--  DDL for Package PCKG_VIOLATIONS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE PCKG_VIOLATIONS   AS 

  /* TODO enter package declarations (types, exceptions, methods etc) here */
  
    FUNCTION PROCESS_VIOLATION(
        vDESCRIPTION IN violations.DESCRIPTION%type 
        )
    RETURN VARCHAR2;
  
    PROCEDURE INSERT_VIOLATIONS(
        vVIOLATION_ID IN VIOLATIONS.VIOLATION_ID%type, 
        vDESCRIPTION IN VIOLATIONS.DESCRIPTION%type 
    );
    
    PROCEDURE UPDATE_VIOLATIONS(
        vVIOLATION_ID IN VIOLATIONS.VIOLATION_ID%type,
        vDESCRIPTION IN VIOLATIONS.DESCRIPTION%type 
    );
  
    PROCEDURE INSERT_VIOLATIONS_RECORD(
        vRECORD_ID IN VIOLATIONS_RECORDS.RECORD_ID%type, 
        vCUSTOMER_ID IN CUSTOMERS.CUSTOMER_ID%type,
        vVIOLATION_ID IN VIOLATIONS.VIOLATION_ID%type
    );

END PCKG_VIOLATIONS;

/
--------------------------------------------------------
--  DDL for Package Body PCKG_CAR
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY PCKG_CAR   AS

  FUNCTION PROCESS_CAR(
        vCAR_TYPE IN CAR.CAR_TYPE%type,
        vMAX_PERSON IN CAR.MAX_PERSON%type,
        vRATE_PER_HR IN CAR.RATE_PER_HR %type,
        vMODEL IN CAR.MODEL%type,
        vCAR_MAKE IN CAR.CAR_MAKE%type,
        vCAR_NUMBER IN CAR.CAR_NUMBER%type,
        vCAR_COST IN CAR.CAR_COST%type 
    ) RETURN VARCHAR2 AS

    -- TODO: Implementation required for FUNCTION PCKG_CAR.PROCESS_CAR
        ex_INVALID_CAR_TYPE EXCEPTION;
        ex_MAX_PERSON EXCEPTION;
        ex_RATE_PER_HR EXCEPTION;
        ex_MODEL EXCEPTION;
        ex_CAR_MAKE EXCEPTION;
        ex_CAR_NUMBER EXCEPTION;
        ex_COST EXCEPTION;
        ex_DUPLICATE_CAR_NUMBER EXCEPTION;
        
        db_CAR_NUMBER CAR.CAR_NUMBER%type;
        
    BEGIN
        
        if vCAR_TYPE is NULL or LENGTH(trim(vCAR_TYPE)) IS NULL then
            raise ex_INVALID_CAR_TYPE;
        end if;
        
        if vMAX_PERSON = 0 then
            raise ex_MAX_PERSON;
        end if;
        
        if vRATE_PER_HR = 0 or vRATE_PER_HR is NULL then
            raise ex_RATE_PER_HR;
        end if;
        
        if vMODEL is NULL or LENGTH(trim(vMODEL)) is NULL then
            raise ex_MODEL;
        end if;
        
        if vCAR_MAKE is NULL or LENGTH(trim(vCAR_MAKE)) is NULL then 
            raise ex_CAR_MAKE;
        end if;
        
        if vCAR_NUMBER is NULL or LENGTH(trim(vCAR_NUMBER)) is NULL then 
            raise ex_CAR_NUMBER;
        end if;
        
        if vCAR_COST = 0 then
            raise ex_COST;
        end if;
                
        begin
             select CAR_NUMBER into db_CAR_NUMBER from CAR where CAR_NUMBER = vCAR_NUMBER;
             if db_CAR_NUMBER is NOT NULL then
                raise ex_DUPLICATE_CAR_NUMBER;
            end if;
        exception
            when ex_DUPLICATE_CAR_NUMBER then
                raise ex_DUPLICATE_CAR_NUMBER;
            when NO_DATA_FOUND then
                return 'YES';
        end;
        
        RETURN 'YES';
    EXCEPTION
        when ex_INVALID_CAR_TYPE then
            dbms_output.put_line('Invalid Car Type !!! Car Type Cannot be NULL or Empty');
            RETURN 'NO';
        when ex_MAX_PERSON then
            dbms_output.put_line('Invalid Max Person !!! Max Count Cannot be Zero');
            RETURN 'NO';
        when ex_RATE_PER_HR then
            dbms_output.put_line('Invalid Rate Per Hour !!! Rate Per Hour Cannot be Zero/NULL');
            RETURN 'NO';
        when ex_MODEL then
            dbms_output.put_line('Invalid Car Model !!! Car Model Cannot be NULL or Empty');
            RETURN 'NO';
        when ex_CAR_NUMBER then
            dbms_output.put_line('Invalid Car Number !!! Car Number Cannot be NULL or Empty');
            RETURN 'NO';
        when ex_COST then
            dbms_output.put_line('Invalid Car Cost !!! Car Cost Cannot Be Zero');
            RETURN 'NO';
        when ex_DUPLICATE_CAR_NUMBER then
            dbms_output.put_line('Duplicate Car Number Found !!!!');
            RETURN 'NO';
        when others then
            RETURN 'NO';
  END PROCESS_CAR;

  FUNCTION PROCESS_CARS_AT_PICKUP
    (
        vCARS_AT_PICKUP_ID IN CARS_AT_PICKUP.CARS_AT_PICKUP_ID%type,
        vPICKUP_POINT_ID IN CARS_AT_PICKUP.PICKUP_POINT_ID%type,
        vCAR_ID IN CARS_AT_PICKUP.CAR_ID%type
    ) RETURN VARCHAR2 AS

    -- TODO: Implementation required for FUNCTION PCKG_CAR.PROCESS_CARS_AT_PICKUP
        ex_vCARS_AT_PICKUP_ID EXCEPTION;
        ex_vPICKUP_POINT_ID EXCEPTION;
        ex_vCAR_ID EXCEPTION;
        ex_duplicate_car EXCEPTION;
    BEGIN
     
        if vCAR_ID is not null and vPICKUP_POINT_ID is not null then
            if pckg_utils.CHECK_CAR_ID_EXISTS(vCAR_ID) = 0 or pckg_utils.CHECK_PICKUP_POINT_EXISTS(vPICKUP_POINT_ID) = 0 then
                raise no_data_found;
            end if;
        end if;
            
        if pckg_utils.check_car_at_pickup_exists(vCAR_ID) != 0 then
            raise ex_duplicate_car;
        end if;
        
        if vCARS_AT_PICKUP_ID is null then
            raise ex_vCARS_AT_PICKUP_ID;
        end if;
    
        if vPICKUP_POINT_ID is null then
            raise ex_vPICKUP_POINT_ID;
        end if;
    
        if vCAR_ID is null then
            raise ex_vCAR_ID;
        end if;
    
        RETURN 'YES';
    
    EXCEPTION
        when no_data_found then
        dbms_output.put_line('Either PICKUP_POINT_ID or CAR_ID is not present in the parent table !!!');
        RETURN 'NO';
        when ex_vCARS_AT_PICKUP_ID then
        dbms_output.put_line('Car at Pickup ID cannot be Null or is Invalid !!!');
        RETURN 'NO';
        when ex_vPICKUP_POINT_ID then
        dbms_output.put_line('Pickup Point ID cannot be Null or is Invalid !!!');
        RETURN 'NO';
        when ex_vCAR_ID then
        dbms_output.put_line('Car ID cannot be Null or is Invalid !!!');
        RETURN 'NO';
        when ex_duplicate_car then
        dbms_output.put_line('Car Already Exist At Other Pickup Point !!!');
        RETURN 'NO';
        when others then
        dbms_output.put_line(SQLCODE|| ': ' || SQLERRM);
        RETURN 'NO';        

  END PROCESS_CARS_AT_PICKUP;

  FUNCTION PROCESS_MAINTENANCE(
        vSUMMARY IN MAINTENANCE.SUMMARY%TYPE, 
        vMAINTENANCE_DATE IN MAINTENANCE.MAINTENANCE_DATE%TYPE, 
        vMAINTENANCE_COST IN MAINTENANCE.MAINTENANCE_COST%TYPE, 
        vCAR_ID IN MAINTENANCE.CAR_ID%TYPE, 
        vPURCHASE_INSURANCE_ID IN MAINTENANCE.PURCHASE_INSURANCE_ID%TYPE
    ) RETURN VARCHAR2 AS

    -- TODO: Implementation required for FUNCTION PCKG_CAR.PROCESS_MAINTENANCE

        DB_vPURCHASE_INSURANCE_ID MAINTENANCE.PURCHASE_INSURANCE_ID%TYPE;
    
        ex_INVALID_SUMMARY EXCEPTION;
        ex_INVALID_MAINTENANCE_DATE EXCEPTION;
        ex_INVALID_MAINTENANCE_COST EXCEPTION;
        ex_INVALID_CAR_ID EXCEPTION;
        ex_INVALID_PURCHASE_INSURANCE_ID EXCEPTION;
         
        
    BEGIN
    
        --check if data is null, empty and not appropriate---
        if LENGTH(trim(vSUMMARY)) > 50 then
            raise ex_INVALID_SUMMARY;
        end if;
        
        if vMAINTENANCE_DATE is NULL or to_char(LENGTH(vMAINTENANCE_DATE)) is NULL then
            raise ex_INVALID_MAINTENANCE_DATE;
        end if;
        
        if vMAINTENANCE_COST is NULL or LENGTH(vMAINTENANCE_COST) is NULL then
            raise ex_INVALID_MAINTENANCE_COST;
        end if;
        
        if vCAR_ID is NULL or LENGTH(vCAR_ID) is NULL then
            raise ex_INVALID_CAR_ID;
        end if;
        
        if vPURCHASE_INSURANCE_ID is NULL or LENGTH(vPURCHASE_INSURANCE_ID) is NULL then
            raise ex_INVALID_PURCHASE_INSURANCE_ID;
        end if;
        
        --check if CAR ID exists in the Car table
        if pckg_utils.check_car_id_exists(vCAR_ID) = 0 then
            dbms_output.put_line('CAR ID does not exists in CAR table !!!');
            raise ex_INVALID_CAR_ID;
            return 'NO';
        end if;
        
        --check if PURCHASE_INSURANCE_ID exists in the Purchase Insurance table
            begin
                select PURCHASE_INSURANCE_ID into DB_vPURCHASE_INSURANCE_ID from PURCHASE_INSURANCE where PURCHASE_INSURANCE_ID = vPURCHASE_INSURANCE_ID;
                if DB_vPURCHASE_INSURANCE_ID IS NULL OR LENGTH(DB_vPURCHASE_INSURANCE_ID) IS NULL THEN
                    raise ex_INVALID_PURCHASE_INSURANCE_ID;
                end if;
            exception
                when NO_DATA_FOUND then
                    dbms_output.put_line('Purchase Insurance ID does not exists in Insurance table !!!');
                RETURN 'NO';
            end;
        
        RETURN 'YES';
    
    EXCEPTION
    
        when ex_INVALID_SUMMARY then
            dbms_output.put_line('Please enter valid Summary within 50 characters !!!');
        
        when ex_INVALID_MAINTENANCE_DATE then
            dbms_output.put_line('Please enter the Maintenance Date !!!');
            
        when ex_INVALID_MAINTENANCE_COST then
            dbms_output.put_line('Please enter the Maintenance Cost !!!');
        
        when ex_INVALID_CAR_ID then
            dbms_output.put_line('Please enter the Car ID !!!');
            
        when ex_INVALID_PURCHASE_INSURANCE_ID then
            dbms_output.put_line('Please enter the Purchase Insurance ID !!!');
        
        RETURN 'NO';

  END PROCESS_MAINTENANCE;

  FUNCTION PROCESS_PICKUP_POINTS
    (
        vSTATE IN PICKUP_POINTS.STATE%type,
        vCITY IN PICKUP_POINTS.CITY%type,
        vZIP IN PICKUP_POINTS.ZIP%type,
        vCOST IN PICKUP_POINTS.COST%type,
        vNAME IN PICKUP_POINTS.NAME%type
    ) RETURN VARCHAR2 AS

    -- TODO: Implementation required for FUNCTION PCKG_CAR.PROCESS_PICKUP_POINTS
        ex_STATE EXCEPTION;
        ex_CITY EXCEPTION;
        ex_ZIP EXCEPTION;
        ex_NAME EXCEPTION;
        ex_COST EXCEPTION;
    
    BEGIN
    
        if vSTATE is null then
            raise ex_STATE;
        end if;
    
        if vCITY is null then
            raise ex_CITY;
        end if;
    
        if vZIP is null then
            raise ex_ZIP;
        end if;
        
        if vCOST is null then
            raise ex_COST;
        end if;
        
        if vNAME is null then
            raise ex_NAME;
        end if;
    
        RETURN 'YES';
    
    EXCEPTION
    
        when ex_STATE then
        dbms_output.put_line('State cannot be left blank !!!');
        RETURN 'NO';
        when ex_CITY then
        dbms_output.put_line('City cannot be null !!!');
        RETURN 'NO';
        when ex_ZIP then
        dbms_output.put_line('Zip cannot be null!!!');
        RETURN 'NO';
        when ex_NAME then
        dbms_output.put_line('Name cannot be null !!!');
        RETURN 'NO';
        
        when ex_COST then
        dbms_output.put_line('Cost cannot be null !!!');
        RETURN 'NO';   
        
        when others then
        dbms_output.put_line(SQLCODE|| ': ' || SQLERRM);
        RETURN 'NO';        

  END PROCESS_PICKUP_POINTS;

  PROCEDURE INSERT_CAR(
        vCAR_ID IN CAR.CAR_ID%type,
        vCAR_TYPE IN CAR.CAR_TYPE%type,
        vMAX_PERSON IN CAR.MAX_PERSON%type,
        vRATE_PER_HR IN CAR.RATE_PER_HR %type,
        vMODEL IN CAR.MODEL%type,
        vCAR_MAKE IN CAR.CAR_MAKE%type,
        vCAR_NUMBER IN CAR.CAR_NUMBER%type,
        vCAR_COST IN CAR.CAR_COST%type
    ) AS

    -- TODO: Implementation required for PROCEDURE PCKG_CAR.INSERT_CAR
        ex_INVALID EXCEPTION;
        ex_DUPLICATE_CAR_ID EXCEPTION;
    BEGIN
        if PROCESS_CAR(vCAR_TYPE, vMAX_PERSON, vRATE_PER_HR, vMODEL, vCAR_MAKE, vCAR_NUMBER, vCAR_COST) = 'NO' then
            raise ex_INVALID;
        end if;
        
        if pckg_utils.check_car_id_exists(vCAR_ID) != 0 then 
            raise ex_DUPLICATE_CAR_ID;
        end if;
        
        insert into CAR values(
            vCAR_ID,
            trim(vCAR_TYPE),
            vMAX_PERSON,
            vRATE_PER_HR,
            trim(vMODEL),
            trim(vCAR_MAKE),
            trim(vCAR_NUMBER),
            vCAR_COST
        );
        
        if SQL%ROWCOUNT != 1 then
            raise ex_INVALID;
        else 
            dbms_output.put_line('Car Data Added Successfully');
        end if;
    
        commit;
    EXCEPTION
        when ex_INVALID then
            dbms_output.put_line('Car Data Could Not Be Inserted !!!');
        when ex_DUPLICATE_CAR_ID then
            dbms_output.put_line('Duplicate Car Id !!!');
        when others then
            dbms_output.put_line('Invalid Operation :' || SQLERRM);

  END INSERT_CAR;

  PROCEDURE UPDATE_CAR(
        vCAR_ID IN CAR.CAR_ID%type,
        vCAR_TYPE IN CAR.CAR_TYPE%type,
        vMAX_PERSON IN CAR.MAX_PERSON%type,
        vRATE_PER_HR IN CAR.RATE_PER_HR %type,
        vMODEL IN CAR.MODEL%type,
        vCAR_MAKE IN CAR.CAR_MAKE%type,
        vCAR_NUMBER IN CAR.CAR_NUMBER%type,
        vCAR_COST IN CAR.CAR_COST%type
    ) AS

    -- TODO: Implementation required for PROCEDURE PCKG_CAR.UPDATE_CAR
            ex_INVALID EXCEPTION;
    BEGIN
    
        if PROCESS_UPDATE_CAR(vCAR_ID,vCAR_TYPE, vMAX_PERSON, vRATE_PER_HR, vMODEL, vCAR_MAKE, vCAR_NUMBER, vCAR_COST) = 'NO' then
            raise ex_INVALID;
        end if;
        
        UPDATE CAR SET CAR_TYPE = vCAR_TYPE, MAX_PERSON = vMAX_PERSON, RATE_PER_HR = vRATE_PER_HR,MODEL= vMODEL ,CAR_MAKE=vCAR_MAKE ,CAR_NUMBER=vCAR_NUMBER,CAR_COST=vCAR_COST WHERE CAR_ID = vCAR_ID;
        
        IF SQL%ROWCOUNT !=1 THEN
            dbms_output.put_line('Record not been updated. Please try again !!!');
            rollback;
        ELSE
            dbms_output.put_line('Record has updated successfully !!!');
            commit;
        END IF;
    
    EXCEPTION
    
        WHEN ex_INVALID THEN
            dbms_output.put_line('Car Update has been failed. Please try again with valid constraints !!!');

  END UPDATE_CAR;

  PROCEDURE INSERT_PICKUP_POINT(
        vPICKUP_POINT_ID IN PICKUP_POINTS.PICKUP_POINT_ID%type,
        vSTATE IN PICKUP_POINTS.STATE%type,
        vCITY IN PICKUP_POINTS.CITY%type,
        vZIP IN PICKUP_POINTS.ZIP%type,
        vCOST IN PICKUP_POINTS.COST%type,
        vNAME IN PICKUP_POINTS.NAME%type
    ) AS

    -- TODO: Implementation required for PROCEDURE PCKG_CAR.INSERT_PICKUP_POINT
        ex_INVALID EXCEPTION;
        ex_DUPLICATE_ID EXCEPTION;
    BEGIN
    
        IF PROCESS_PICKUP_POINTS(trim(vSTATE),trim(vCITY),trim(vZIP),vCOST,trim(vNAME)) = 'NO' then
            raise ex_INVALID;
        END IF;
    
        if pckg_utils.check_pickup_point_exists(vPICKUP_POINT_ID) != 0 then
            raise ex_DUPLICATE_ID;
        end if;
        
        INSERT INTO PICKUP_POINTS(PICKUP_POINT_ID, STATE, CITY, ZIP, COST, NAME)
        VALUES(
            vPICKUP_POINT_ID,
            trim(vSTATE),
            trim(vCITY),
            trim(vZIP),
            vCOST,
            trim(vNAME));
    
        IF SQL%ROWCOUNT != 1 then
            dbms_output.put_line('Sorry, Pickup Point could not be added !!!');
            rollback;
        ELSE
            COMMIT;
            dbms_output.put_line('Pickup Point Added Successfully !!!'); 
        END IF;
    
    EXCEPTION
        when ex_INVALID then
            dbms_output.put_line('Inserted Data is not as expected !!!'); 
        when ex_DUPLICATE_ID then
            dbms_output.put_line('Duplicate Pickup Point Id !!!'); 
        when others then
            dbms_output.put_line('Invalid Operation!!!' || SQLERRM); 

  END INSERT_PICKUP_POINT;

  PROCEDURE UPDATE_PICKUP_POINT(
        vPICKUP_POINT_ID IN PICKUP_POINTS.PICKUP_POINT_ID%TYPE, 
        vSTATE IN PICKUP_POINTS.STATE%TYPE,  
        vCITY IN PICKUP_POINTS.CITY%TYPE, 
        vZIP IN PICKUP_POINTS.ZIP%TYPE, 
        vCOST IN PICKUP_POINTS.COST%TYPE, 
        vNAME IN PICKUP_POINTS.NAME%TYPE
    ) AS

    -- TODO: Implementation required for PROCEDURE PCKG_CAR.UPDATE_PICKUP_POINT
        ex_INVALID EXCEPTION;
        ex_INVALID_ID EXCEPTION;
    BEGIN
    
        IF PROCESS_PICKUP_POINTS(vSTATE,vCITY,vZIP,vCOST,vNAME) = 'NO' THEN
            RAISE ex_INVALID;
        END IF;
        
        if pckg_utils.check_pickup_point_exists(vPICKUP_POINT_ID) = 0 then
            raise ex_INVALID_ID;
        end if;
        
        UPDATE PICKUP_POINTS SET STATE = vSTATE, CITY = vCITY, ZIP = vZIP, COST = vCOST, NAME = vNAME WHERE PICKUP_POINT_ID = vPICKUP_POINT_ID;
        
        IF SQL%ROWCOUNT !=1 THEN
            dbms_output.put_line('Record not been updated. Please try again !!!');
            rollback;
        ELSE
            dbms_output.put_line('Record has updated successfully !!!');
            commit;
        END IF;
        
    EXCEPTION
        when ex_INVALID_ID then
            dbms_output.put_line('Invalid Pickup Point Id !!!');
        when ex_INVALID then
            dbms_output.put_line('Record not been updated. Please try again !!!');
        when others then
            dbms_output.put_line('Invalid Operation!!!' || SQLERRM);
  END UPDATE_PICKUP_POINT;

  PROCEDURE INSERT_CARS_AT_PICKUP(
        vCARS_AT_PICKUP_ID IN CARS_AT_PICKUP.CARS_AT_PICKUP_ID%type,
        vPICKUP_POINT_ID IN CARS_AT_PICKUP.PICKUP_POINT_ID%type,
        vCAR_ID IN CARS_AT_PICKUP.CAR_ID%type
    ) AS
        ex_INVALID EXCEPTION;
  BEGIN
    -- TODO: Implementation required for PROCEDURE PCKG_CAR.INSERT_CARS_AT_PICKUP
        IF PROCESS_CARS_AT_PICKUP(vCARS_AT_PICKUP_ID,vPICKUP_POINT_ID,vCAR_ID) = 'NO' then
            raise ex_INVALID;
        END IF;
    
        INSERT INTO CARS_AT_PICKUP(CARS_AT_PICKUP_ID, PICKUP_POINT_ID, CAR_ID)
        VALUES(
            vCARS_AT_PICKUP_ID,
            vPICKUP_POINT_ID,
            vCAR_ID);
    
        IF SQL%ROWCOUNT != 1 then
            dbms_output.put_line('Sorry, Invalid CARS_AT_PICKUP_ID !!!');
            rollback;
        ELSE
            COMMIT;
            dbms_output.put_line('CARS_AT_PICKUP_ID Added Successfully !!!'); 
        END IF;
    
    EXCEPTION
        when ex_INVALID then
            dbms_output.put_line('Inserted Data is not as expected !!!'); 

  END INSERT_CARS_AT_PICKUP;

  PROCEDURE UPDATE_CARS_AT_PICKUP(
        vCARS_AT_PICKUP_ID CARS_AT_PICKUP.CARS_AT_PICKUP_ID%type,
        vPICKUP_POINT_ID PICKUP_POINTS.PICKUP_POINT_ID%type,
        vCAR_ID CAR.CAR_ID%type
    ) AS

    -- TODO: Implementation required for PROCEDURE PCKG_CAR.UPDATE_CARS_AT_PICKUP
        ex_INVALID EXCEPTION;
    
    BEGIN
    
    IF PROCESS_CARS_AT_PICKUP(vCARS_AT_PICKUP_ID,vPICKUP_POINT_ID,vCAR_ID) = 'NO' then
        raise ex_INVALID;
    END IF;

    UPDATE CARS_AT_PICKUP
	SET CAR_ID = vCAR_ID
    WHERE CARS_AT_PICKUP_ID = vCARS_AT_PICKUP_ID;

    IF SQL%ROWCOUNT != 1 then
        rollback;
    ELSE
        COMMIT;
        dbms_output.put_line('CARS_ID updated Successfully !!!'); 
    END IF;

EXCEPTION
    when ex_INVALID then
        dbms_output.put_line('Inserted Data is not as expected !!!'); 

  END UPDATE_CARS_AT_PICKUP;

  PROCEDURE INSERT_MAINTENANCE(
        vMAINTENANCE_ID IN MAINTENANCE.MAINTENANCE_ID%TYPE, 
        vSUMMARY IN MAINTENANCE.SUMMARY%TYPE, 
        vMAINTENANCE_DATE IN MAINTENANCE.MAINTENANCE_DATE%TYPE, 
        vMAINTENANCE_COST IN MAINTENANCE.MAINTENANCE_COST%TYPE, 
        vCAR_ID IN MAINTENANCE.CAR_ID%TYPE, 
        vPURCHASE_INSURANCE_ID IN MAINTENANCE.PURCHASE_INSURANCE_ID%TYPE
    ) AS

    -- TODO: Implementation required for PROCEDURE PCKG_CAR.INSERT_MAINTENANCE
        ex_INVALID EXCEPTION;
            
    BEGIN
    
        IF PROCESS_MAINTENANCE(vSUMMARY, vMAINTENANCE_DATE, vMAINTENANCE_COST, vCAR_ID, vPURCHASE_INSURANCE_ID) = 'NO' THEN
            raise ex_INVALID;
        END IF;
        
        INSERT INTO MAINTENANCE VALUES(
            vMAINTENANCE_ID,
            vSUMMARY,
            vMAINTENANCE_DATE,
            vMAINTENANCE_COST,
            vCAR_ID,
            vPURCHASE_INSURANCE_ID);
            
        IF SQL%ROWCOUNT != 1 then
            dbms_output.put_line('Sorry, Maintenance record could not be inserted !!!');
            rollback;
        ELSE
            COMMIT;
            dbms_output.put_line('Maintenance Inserted Successfully !!!'); 
        END IF;
    
    EXCEPTION
    
        when ex_INVALID then
            dbms_output.put_line('Please retry inserting the valid Maintenance !!!');

  END INSERT_MAINTENANCE;

PROCEDURE DELETE_CAR (
    vCAR_ID IN CAR.CAR_ID%type) 
    AS
    ex_null_car_id exception;
    ex_NO_CAR_FOUND EXCEPTION;
    ex_INVALID EXCEPTION;
    
    BEGIN
        
        if pckg_utils.check_car_id_exists(vCAR_ID) = 0 then
            raise ex_NO_CAR_FOUND;
        end if;
        if vCAR_ID is null then
            raise ex_null_car_id;
        else
            delete from car where car_id = vCAR_ID;
            if SQL%ROWCOUNT !=1 then
                rollback;
                raise ex_INVALID;
            else
                dbms_output.put_line('CAR_ID: '|| vCAR_ID || ' deleted sucessfully!');
                commit;
            end if;
        end if;
    
    
    EXCEPTION
        when ex_null_car_id then
            dbms_output.put_line('Car_Id cannot be null');
        when ex_NO_CAR_FOUND then
            dbms_output.put_line('Car Id Do Not Exists');
        when others then
            dbms_output.put_line('Error Message: ' || SQLERRM);

END DELETE_CAR;

FUNCTION PROCESS_UPDATE_CAR(
        vCAR_ID IN CAR.CAR_ID%type,
        vCAR_TYPE IN CAR.CAR_TYPE%type,
        vMAX_PERSON IN CAR.MAX_PERSON%type,
        vRATE_PER_HR IN CAR.RATE_PER_HR %type,
        vMODEL IN CAR.MODEL%type,
        vCAR_MAKE IN CAR.CAR_MAKE%type,
        vCAR_NUMBER IN CAR.CAR_NUMBER%type,
        vCAR_COST IN CAR.CAR_COST%type 
    ) RETURN VARCHAR2 AS

    -- TODO: Implementation required for FUNCTION PCKG_CAR.PROCESS_CAR
        ex_INVALID_CAR_TYPE EXCEPTION;
        ex_MAX_PERSON EXCEPTION;
        ex_RATE_PER_HR EXCEPTION;
        ex_MODEL EXCEPTION;
        ex_CAR_MAKE EXCEPTION;
        ex_CAR_NUMBER EXCEPTION;
        ex_COST EXCEPTION;
        ex_DUPLICATE_CAR_NUMBER EXCEPTION;
        ex_NO_CAR_ID_FOUND EXCEPTION;
        
        db_CAR_NUMBER CAR.CAR_NUMBER%type;
        DB_CAR_ID CAR.CAR_ID%type;
    BEGIN
        
        if vCAR_TYPE is NULL or LENGTH(trim(vCAR_TYPE)) IS NULL then
            raise ex_INVALID_CAR_TYPE;
        end if;
        
        if vMAX_PERSON = 0 then
            raise ex_MAX_PERSON;
        end if;
        
        if vRATE_PER_HR = 0 or vRATE_PER_HR is NULL then
            raise ex_RATE_PER_HR;
        end if;
        
        if vMODEL is NULL or LENGTH(trim(vMODEL)) is NULL then
            raise ex_MODEL;
        end if;
        
        if vCAR_MAKE is NULL or LENGTH(trim(vCAR_MAKE)) is NULL then 
            raise ex_CAR_MAKE;
        end if;
        
        if vCAR_NUMBER is NULL or LENGTH(trim(vCAR_NUMBER)) is NULL then 
            raise ex_CAR_NUMBER;
        end if;
        
        if vCAR_COST = 0 then
            raise ex_COST;
        end if;
        
        if pckg_utils.check_car_id_exists(vCAR_ID) =0 then
            raise ex_NO_CAR_ID_FOUND;
        end if;
        
        begin
             select CAR_NUMBER, CAR_ID into db_CAR_NUMBER, DB_CAR_ID from CAR where CAR_NUMBER = vCAR_NUMBER;
             if db_CAR_NUMBER is NOT NULL and DB_CAR_ID != vCAR_ID then
                raise ex_DUPLICATE_CAR_NUMBER;
            end if;
        exception
            when ex_DUPLICATE_CAR_NUMBER then
                raise ex_DUPLICATE_CAR_NUMBER;
            when NO_DATA_FOUND then
                return 'YES';
        end;
        
        RETURN 'YES';
    EXCEPTION
        when ex_INVALID_CAR_TYPE then
            dbms_output.put_line('Invalid Car Type !!! Car Type Cannot be NULL or Empty');
            RETURN 'NO';
        when ex_MAX_PERSON then
            dbms_output.put_line('Invalid Max Person !!! Max Count Cannot be Zero');
            RETURN 'NO';
        when ex_RATE_PER_HR then
            dbms_output.put_line('Invalid Rate Per Hour !!! Rate Per Hour Cannot be Zero/NULL');
            RETURN 'NO';
        when ex_MODEL then
            dbms_output.put_line('Invalid Car Model !!! Car Model Cannot be NULL or Empty');
            RETURN 'NO';
        when ex_CAR_NUMBER then
            dbms_output.put_line('Invalid Car Number !!! Car Number Cannot be NULL or Empty');
            RETURN 'NO';
        when ex_COST then
            dbms_output.put_line('Invalid Car Cost !!! Car Cost Cannot Be Zero');
            RETURN 'NO';
        when ex_DUPLICATE_CAR_NUMBER then
            dbms_output.put_line('Duplicate Car Number Found !!!!');
            RETURN 'NO';
        when ex_NO_CAR_ID_FOUND then
            dbms_output.put_line('Invalid Car Id !!!!');
            RETURN 'NO';
        when others then
            RETURN 'NO';
  END PROCESS_UPDATE_CAR;

END PCKG_CAR;

/
--------------------------------------------------------
--  DDL for Package Body PCKG_CUSTOMER
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY PCKG_CUSTOMER   AS

    FUNCTION PROCESS_ACTIVITY(
        vACTIVITY_ID IN ACTIVITY.ACTIVITY_ID%type,
        vLOGIN_TIME  IN ACTIVITY.LOGIN_TIME%type,
        vLOGOUT_TIME IN ACTIVITY.LOGOUT_TIME%type,
        vCUSTOMER_ID IN ACTIVITY.CUSTOMER_ID%type) 
    RETURN VARCHAR2 AS
    
        ex_ACTIVITY_ID EXCEPTION;
        ex_LOGIN_TIME EXCEPTION;
        ex_LOGOUT_TIME EXCEPTION;
        ex_CUSTOMER_ID EXCEPTION;
    
    BEGIN
    
        if vCUSTOMER_ID is not null then
            if pckg_utils.CHECK_CUSTOMER_ID_EXISTS(vCUSTOMER_ID) = 0 then
                raise no_data_found;
            end if;
        end if;
    
        if vACTIVITY_ID is null then
            raise ex_ACTIVITY_ID;
        end if;
    
        if vLOGIN_TIME is null or vLOGIN_TIME < sysdate then
            raise ex_LOGIN_TIME;
        end if;
    
        if vLOGOUT_TIME < vLOGIN_TIME then
            raise ex_LOGOUT_TIME;
        end if;
    
        if vCUSTOMER_ID is null then
            raise ex_CUSTOMER_ID;
        end if;
    
        RETURN 'YES';
    
    EXCEPTION
        when no_data_found then
        dbms_output.put_line('Customer Id not present in the parent table !!!');
        RETURN 'NO';
        when ex_ACTIVITY_ID then
        dbms_output.put_line('Activity Id cannot be Null !!!');
        RETURN 'NO';
        when ex_LOGIN_TIME then
        dbms_output.put_line('LOGIN_TIME cannot be less than Sysdate or can be left blank !!!');
        RETURN 'NO';
        when ex_LOGOUT_TIME then
        dbms_output.put_line('LOGOUT_TIME should be greater than LOGIN Time !!!');
        RETURN 'NO';
        when ex_CUSTOMER_ID then
        dbms_output.put_line('Customer Id cannot be null !!!');
        RETURN 'NO';
        when others then
        dbms_output.put_line(SQLCODE|| ': ' || SQLERRM);
        RETURN 'NO';        
    
    END PROCESS_ACTIVITY;

    FUNCTION PROCESS_CUSTOMER(
        vFIRST_NAME IN CUSTOMERS.FIRST_NAME%type, 
        vLAST_NAME IN CUSTOMERS.LAST_NAME%type, 
        vEMAIL_ID IN CUSTOMERS.EMAIL_ID%type,
        vCONTACT IN CUSTOMERS.CONTACT%type, 
        vLICENSE_NUMBER IN CUSTOMERS.LICENSE_NUMBER%type,
        vPASSPORT_NUMBER IN CUSTOMERS.PASSPORT_NUMBER%type, 
        vCUSTOMER_TYPE IN CUSTOMERS.CUSTOMER_TYPE%type, 
        vDATE_OF_BIRTH IN CUSTOMERS.DATE_OF_BIRTH%type) 
    RETURN VARCHAR2 AS
    
        DB_EMAIL_ID CUSTOMERS.EMAIL_ID%type;
        DB_CONTACT CUSTOMERS.CONTACT%type;
        DB_LICENSE_NUMBER CUSTOMERS.LICENSE_NUMBER%type;
        DB_PASSPORT_NUMBER CUSTOMERS.PASSPORT_NUMBER%type;
        
        INVALID_NAME EXCEPTION;
        INVALID_EMAIL EXCEPTION;
        INVALID_CONTACT EXCEPTION;
        INVALID_LICENSE_NUMBER EXCEPTION;
        INVALID_PASSPORT_NUMBER EXCEPTION;
        INVALID_CUSTOMER_TYPE EXCEPTION;
        INVALID_DATE_OF_BIRTH EXCEPTION;
    
    BEGIN
            
        -- check data is null, empty and appropriate
        if vFIRST_NAME is NULL or REGEXP_LIKE(TRIM(vFIRST_NAME) , '^[0-9]*$') or LENGTH(TRIM(vFIRST_NAME)) is NULL or
        vLAST_NAME is NULL or REGEXP_LIKE(TRIM(vLAST_NAME) , '^[0-9]*$') or LENGTH(TRIM(vLAST_NAME)) is NULL then
            raise INVALID_NAME;
        end if;
        
        if vEMAIL_ID is NULL or LENGTH(TRIM(vEMAIL_ID)) is NULL or NOT (TRIM(vEMAIL_ID)) LIKE '%@_%._%' then
            raise INVALID_EMAIL;
        end if;
        
        if vCONTACT is NULL or  LENGTH(vCONTACT) != 10  then
            raise INVALID_CONTACT;
        end if;
        
        if vLICENSE_NUMBER is NULL or LENGTH(TRIM(vLICENSE_NUMBER)) is NULL then
            raise INVALID_LICENSE_NUMBER;
        end if;
        
        if vPASSPORT_NUMBER is NULL or LENGTH(TRIM(vPASSPORT_NUMBER)) is NULL then
            raise INVALID_PASSPORT_NUMBER;
        end if;
           
        if vCUSTOMER_TYPE is NULL or LENGTH(TRIM(vCUSTOMER_TYPE)) is NULL or vCUSTOMER_TYPE not in ('STUDENT','EMPLOYEE','OTHERS') then
            raise INVALID_CUSTOMER_TYPE;
        end if;
        
        if vDATE_OF_BIRTH is NULL or ((sysdate - vDATE_OF_BIRTH)/365) < 18  then
            raise INVALID_DATE_OF_BIRTH;
        end if;
        
            -- check if customer data already exists
            begin
                select EMAIL_ID into DB_EMAIL_ID from CUSTOMERS where EMAIL_ID = vEMAIL_ID;
                if DB_EMAIL_ID IS NOT NULL then
                    raise INVALID_EMAIL;
                end if;
            exception
                when NO_DATA_FOUND then
                     NULL;
                when INVALID_EMAIL then
                    dbms_output.put_line('Duplicate Email Address!!!');
                    RETURN 'NO';
            end;
        
            begin
                select CONTACT into DB_CONTACT from CUSTOMERS where CONTACT = vCONTACT;
                if DB_CONTACT IS NOT NULL then
                    raise INVALID_CONTACT;
                end if;
            exception
                when NO_DATA_FOUND then
                     NULL;
                when INVALID_CONTACT then
                    dbms_output.put_line('Duplicate Contact!!!');
                    RETURN 'NO';
            end;
        
            begin
                select LICENSE_NUMBER into DB_LICENSE_NUMBER from CUSTOMERS where LICENSE_NUMBER = vLICENSE_NUMBER;
                if DB_LICENSE_NUMBER IS NOT NULL then
                    raise INVALID_LICENSE_NUMBER;
                end if;
            exception
                when NO_DATA_FOUND then
                     NULL;
                when INVALID_LICENSE_NUMBER then
                    dbms_output.put_line('Duplicate License Number!!!');
                    RETURN 'NO';
            end;
        
        if pckg_utils.CHECK_PASSSPORT_EXISTS(vPASSPORT_NUMBER) != '0'  then
            raise INVALID_PASSPORT_NUMBER;
        end if;
        
        RETURN 'YES';
    
    EXCEPTION
        when INVALID_NAME then
            dbms_output.put_line('Invalid Name !!!');
            RETURN 'NO';
        when INVALID_EMAIL then
            dbms_output.put_line('Invalid Email !!!');
            RETURN 'NO';
        when INVALID_CONTACT then
            dbms_output.put_line('Invalid Contact !!!');
            RETURN 'NO';
        when INVALID_LICENSE_NUMBER then
            dbms_output.put_line('Invalid License Number !!!');
            RETURN 'NO';
        when INVALID_PASSPORT_NUMBER then
            dbms_output.put_line('Invalid Passport Number !!!');
            RETURN 'NO';
        when INVALID_CUSTOMER_TYPE then
            dbms_output.put_line('Invalid Customer Type !!!');
            RETURN 'NO';
        when INVALID_DATE_OF_BIRTH then
            dbms_output.put_line('Invalid Date of Birth OR Age Less Than 18 !!!');
            RETURN 'NO';
        when others then
            RETURN 'NO';
        
    END PROCESS_CUSTOMER;

    FUNCTION PROCESS_CUSTOMER_ADDRESS(
        vADDRESS_LINE1 IN CUSTOMER_ADDRESS.ADDRESS_LINE1%TYPE,
        vADDRESS_LINE2 IN CUSTOMER_ADDRESS.ADDRESS_LINE2%TYPE,
        vCITY_STATE IN CUSTOMER_ADDRESS.CITY_STATE%TYPE,
        vCITY IN CUSTOMER_ADDRESS.CITY%TYPE, 
        vZIP_CODE IN CUSTOMER_ADDRESS.ZIP_CODE%TYPE, 
        vADDRESS_TYPE IN CUSTOMER_ADDRESS.ADDRESS_TYPE%TYPE) 
    RETURN VARCHAR2 AS
    
        ex_INVALID_ADDRESS EXCEPTION;
        ex_INVALID_CITY EXCEPTION;
        ex_INVALID_CITY_STATE EXCEPTION;
        ex_INVALID_ZIP_CODE EXCEPTION;
        ex_INVALID_ADDRESS_TYPE EXCEPTION;
    BEGIN
    
      --check if data is null, empty and not appropriate---
        if vADDRESS_LINE1 is NULL or LENGTH(trim(vADDRESS_LINE1)) is NULL or LENGTH(trim(vADDRESS_LINE1)) > 50 then
            raise ex_INVALID_ADDRESS;
        end if;
        
        if LENGTH(trim(vADDRESS_LINE1)) > 50 then
            raise ex_INVALID_ADDRESS;
        end if; 
    
        if vCITY is NULL or LENGTH(trim(vCITY)) is NULL then
            raise ex_INVALID_CITY;
        end if;
    
        if vCITY_STATE is NULL or LENGTH(trim(vCITY_STATE)) is NULL then
            raise ex_INVALID_CITY_STATE;
        end if;
        
        if vZIP_CODE is NULL or LENGTH(trim(vZIP_CODE)) is NULL then
            raise ex_INVALID_ZIP_CODE;
        end if;
    
        if vADDRESS_TYPE is NULL or LENGTH(trim(vADDRESS_TYPE)) is NULL or vADDRESS_TYPE NOT IN ('HOME','OFFICE','OTHER') then
            raise ex_INVALID_ADDRESS_TYPE;
        end if;
    
        RETURN 'YES';
    
    EXCEPTION
        when ex_INVALID_ADDRESS then
        dbms_output.put_line('Invalid Address !!!');
        RETURN 'NO';
        
        when ex_INVALID_CITY then
        dbms_output.put_line('Invalid City !!!');
        RETURN 'NO';
            
        when ex_INVALID_CITY_STATE then
        dbms_output.put_line('Invalid State !!!');
        RETURN 'NO';
      
        when ex_INVALID_ZIP_CODE then
        dbms_output.put_line('Invalid Zip Code !!!');
        RETURN 'NO';
        
        when ex_INVALID_ADDRESS_TYPE then
        dbms_output.put_line('Invalid Address Type !!!');
        RETURN 'NO';
        
        RETURN 'NO';
    
    END PROCESS_CUSTOMER_ADDRESS;

    PROCEDURE INSERT_CUSTOMER(
        vCUSTOMER_ID IN CUSTOMERS.CUSTOMER_ID%type,
        vFIRST_NAME IN CUSTOMERS.FIRST_NAME%type,
        vLAST_NAME IN CUSTOMERS.LAST_NAME%type, 
        vEMAIL_ID IN CUSTOMERS.EMAIL_ID%type,
        vCONTACT IN CUSTOMERS.CONTACT%type, 
        vLICENSE_NUMBER IN CUSTOMERS.LICENSE_NUMBER%type,
        vPASSPORT_NUMBER IN CUSTOMERS.PASSPORT_NUMBER%type, 
        vCUSTOMER_TYPE IN CUSTOMERS.CUSTOMER_TYPE%type, 
        vDATE_OF_BIRTH IN CUSTOMERS.DATE_OF_BIRTH%type) 
        AS        
        ex_INVALID EXCEPTION;
        ex_DUPLICATE_CUSTOMER_ID EXCEPTION;
        
        BEGIN
        
        if PROCESS_CUSTOMER(trim(vFIRST_NAME),trim(vLAST_NAME),trim(vEMAIL_ID),vCONTACT,trim(vLICENSE_NUMBER),
        trim(vPASSPORT_NUMBER),trim(vCUSTOMER_TYPE),vDATE_OF_BIRTH) = 'NO' then
            raise ex_INVALID;
        end if;
        
        if pckg_utils.CHECK_CUSTOMER_ID_EXISTS(vCUSTOMER_ID) != 0 then
            raise  ex_DUPLICATE_CUSTOMER_ID;
        end if;
        
        
        insert into customers values (
           vCUSTOMER_ID,
           trim(vFIRST_NAME),
           trim(vLAST_NAME),
           trim(vEMAIL_ID),
           vCONTACT,
           trim(vLICENSE_NUMBER),
           trim(vPASSPORT_NUMBER),
           trim(vCUSTOMER_TYPE),
           vDATE_OF_BIRTH
        );
        
        if SQL%ROWCOUNT !=1 then
            rollback; 
            raise ex_INVALID;
        else
            dbms_output.put_line('Customer Inserted Successfully !!!');
            commit;
        end if;
        
        EXCEPTION
        when ex_INVALID then
            dbms_output.put_line('Invalid Customer !!!');  
            
        when ex_DUPLICATE_CUSTOMER_ID then
            dbms_output.put_line('Duplicate Customer Id Found !!! Cannot Add Customer');
        rollback;    
        
    END INSERT_CUSTOMER;

    PROCEDURE UPDATE_CUSTOMERS(
        vCUSTOMER_ID IN CUSTOMERS.CUSTOMER_ID%type,
        vFIRST_NAME IN CUSTOMERS.FIRST_NAME%type,
        vLAST_NAME IN CUSTOMERS.LAST_NAME%type, 
        vEMAIL_ID IN CUSTOMERS.EMAIL_ID%type,
        vCONTACT IN CUSTOMERS.CONTACT%type, 
        vLICENSE_NUMBER IN CUSTOMERS.LICENSE_NUMBER%type,
        vPASSPORT_NUMBER IN CUSTOMERS.PASSPORT_NUMBER%type, 
        vCUSTOMER_TYPE IN CUSTOMERS.CUSTOMER_TYPE%type, 
        vDATE_OF_BIRTH IN CUSTOMERS.DATE_OF_BIRTH%type) 
        AS
        ex_INVALID EXCEPTION;
        ex_DUPLICATE_CUSTOMER_ID EXCEPTION;
        ex_INVALID_CUSTOMER_TYPE EXCEPTION;
        ex_INVALID_CUST_ID EXCEPTION;
    BEGIN

        if PROCESS_UPDATE_CUSTOMER(vCUSTOMER_ID,trim(vFIRST_NAME),trim(vLAST_NAME),trim(vEMAIL_ID),vCONTACT,trim(vLICENSE_NUMBER),
        trim(vPASSPORT_NUMBER),trim(vCUSTOMER_TYPE),vDATE_OF_BIRTH) = 'NO' then
            raise ex_INVALID;
        end if;
       
        if pckg_utils.check_customer_id_exists(vCUSTOMER_ID) = 0 then
            raise ex_INVALID_CUST_ID;
        end if;
                
         if vCUSTOMER_TYPE NOT IN ('STUDENT', 'EMPLOYEE' ,'OTHER')  then
            raise ex_INVALID_CUSTOMER_TYPE;
        END IF;
        
        UPDATE CUSTOMERS SET FIRST_NAME = vFIRST_NAME, LAST_NAME = vLAST_NAME, EMAIL_ID = vEMAIL_ID,CONTACT = vCONTACT ,CUSTOMER_TYPE = vCUSTOMER_TYPE WHERE CUSTOMER_ID = vCUSTOMER_ID;
        
        IF SQL%ROWCOUNT !=1 THEN
            dbms_output.put_line('Record not been updated. Please try again !!!');
            rollback;
        ELSE
            dbms_output.put_line('Record has updated successfully !!!');
            commit;
        END IF;

    EXCEPTION

        when ex_INVALID then
            dbms_output.put_line('Invalid Customer !!!');  
        when ex_INVALID_CUST_ID then
            dbms_output.put_line(' Invalid Customer Id !!!');        
        WHEN ex_INVALID_CUSTOMER_TYPE THEN
            dbms_output.put_line('Invalid Customer type!!!');
        
    END UPDATE_CUSTOMERS;

    PROCEDURE INSERT_CUSTOMER_ADDRESS(
        vADDRESS_ID IN CUSTOMER_ADDRESS.ADDRESS_ID%TYPE,
        vADDRESS_LINE1 IN CUSTOMER_ADDRESS.ADDRESS_LINE1%TYPE,
        vADDRESS_LINE2 IN CUSTOMER_ADDRESS.ADDRESS_LINE2%TYPE,
        vCITY_STATE IN CUSTOMER_ADDRESS.CITY_STATE%TYPE,
        vCITY IN CUSTOMER_ADDRESS.CITY%TYPE,
        vCUSTOMER_ID IN CUSTOMER_ADDRESS.CUSTOMER_ID%TYPE,
        vZIP_CODE IN CUSTOMER_ADDRESS.ZIP_CODE%TYPE,
        vADDRESS_TYPE IN CUSTOMER_ADDRESS.ADDRESS_TYPE%TYPE)
        AS
        ex_INVALID EXCEPTION;
        ex_DUPLICATE_ADDR_ID EXCEPTION;
        ex_INVALID_CUST_ID EXCEPTION;
        BEGIN
        
        IF PROCESS_CUSTOMER_ADDRESS(trim(vADDRESS_LINE1),trim(vADDRESS_LINE2),trim(vCITY_STATE),trim(vCITY),
        trim(vZIP_CODE), trim(vADDRESS_TYPE)) = 'NO' then
            raise ex_INVALID;
        END IF;
        
        if pckg_utils.check_customer_id_exists(vCUSTOMER_ID) = 0 then
            raise ex_INVALID_CUST_ID;
        end if;
        
        if pckg_utils.check_address_id_exists(vADDRESS_ID) != 0 then
            raise ex_DUPLICATE_ADDR_ID;
        end if;
        
        INSERT INTO CUSTOMER_ADDRESS(ADDRESS_ID, ADDRESS_LINE1, CITY_STATE, CITY, CUSTOMER_ID, ZIP_CODE, ADDRESS_TYPE)
        VALUES(
            vADDRESS_ID,
            trim(vADDRESS_LINE1),
            trim(vCITY_STATE),
            trim(vCITY),
            vCUSTOMER_ID,
            trim(vZIP_CODE),
            trim(vADDRESS_TYPE));
            
        IF SQL%ROWCOUNT != 1 then
            dbms_output.put_line('Sorry, Customer Address could not be inserted !!!');
            rollback;
        ELSE
            COMMIT;
            dbms_output.put_line('Customer Address Inserted Successfully !!!'); 
        END IF;
        
        EXCEPTION
        when ex_INVALID then
            dbms_output.put_line('Please insert the valid Customer Address !!!');
        when ex_DUPLICATE_ADDR_ID then
            dbms_output.put_line('Duplicate Address Id !!!');
        when ex_INVALID_CUST_ID then
            dbms_output.put_line(' Invalid Customer Id !!!');
        when others then
            dbms_output.put_line('Invalid Operation: '|| SQLERRM);
    
    END INSERT_CUSTOMER_ADDRESS;

    PROCEDURE UPDATE_CUSTOMER_ADDRESS(
        vADDRESS_ID IN CUSTOMER_ADDRESS.ADDRESS_ID%TYPE,
        vADDRESS_LINE1 IN CUSTOMER_ADDRESS.ADDRESS_LINE1%TYPE,
        vADDRESS_LINE2 IN CUSTOMER_ADDRESS.ADDRESS_LINE2%TYPE,
        vCITY_STATE IN CUSTOMER_ADDRESS.CITY_STATE%TYPE,
        vCITY IN CUSTOMER_ADDRESS.CITY%TYPE,
        vCUSTOMER_ID IN CUSTOMER_ADDRESS.CUSTOMER_ID%TYPE,
        vZIP_CODE IN CUSTOMER_ADDRESS.ZIP_CODE%TYPE,
        vADDRESS_TYPE IN CUSTOMER_ADDRESS.ADDRESS_TYPE%TYPE) 
        AS
        ex_INVALID EXCEPTION;
        ex_INVALID_ADDR_ID EXCEPTION;
    BEGIN

        IF PROCESS_CUSTOMER_ADDRESS(trim(vADDRESS_LINE1),trim(vADDRESS_LINE2),trim(vCITY_STATE),trim(vCITY),
        trim(vZIP_CODE), trim(vADDRESS_TYPE)) = 'NO' then
            raise ex_INVALID;
        END IF;
        
        if pckg_utils.check_address_id_exists(vADDRESS_ID) = 0 then
            raise ex_INVALID_ADDR_ID;
        end if;
        
        UPDATE CUSTOMER_ADDRESS SET ADDRESS_LINE1 = vADDRESS_LINE1, ADDRESS_LINE2 = vADDRESS_LINE2,
        CITY_STATE = vCITY_STATE,CITY=vCITY ,ZIP_CODE=vZIP_CODE ,ADDRESS_TYPE=vADDRESS_TYPE WHERE ADDRESS_ID = vADDRESS_ID;
        
        IF SQL%ROWCOUNT !=1 THEN
            dbms_output.put_line('Record not been updated. Please try again !!!');
            rollback;
        ELSE
            dbms_output.put_line('Record has updated successfully !!!');
            commit;
        END IF;

    EXCEPTION
        WHEN ex_INVALID THEN
            dbms_output.put_line('Customer address Update has failed. Please try again with valid constraints !!!');
        when ex_INVALID_ADDR_ID then
            dbms_output.put_line('No Address Id Found !!!');
        when others then
            dbms_output.put_line('Invalid Operation' || SQLERRM);
    END UPDATE_CUSTOMER_ADDRESS;

    PROCEDURE INSERT_ACTIVITY(
        vACTIVITY_ID IN ACTIVITY.ACTIVITY_ID%type,
        vLOGIN_TIME  IN ACTIVITY.LOGIN_TIME%type,
        vLOGOUT_TIME IN ACTIVITY.LOGOUT_TIME%type,
        vCUSTOMER_ID IN ACTIVITY.CUSTOMER_ID%type) 
        AS
            ex_INVALID EXCEPTION;
    
    BEGIN
    
        IF PROCESS_ACTIVITY(vACTIVITY_ID, vLOGIN_TIME, vLOGOUT_TIME, vCUSTOMER_ID) = 'NO' then
            raise ex_INVALID;
        END IF;
        
        INSERT INTO ACTIVITY(ACTIVITY_ID, LOGIN_TIME, LOGOUT_TIME, CUSTOMER_ID)
        VALUES(vACTIVITY_ID, vLOGIN_TIME, vLOGOUT_TIME, vCUSTOMER_ID);
        
        IF SQL%ROWCOUNT != 1 then
            dbms_output.put_line('Sorry, Cannot record customers activity !!!');
            rollback;
        ELSE
            COMMIT;
            dbms_output.put_line('Customers activity recorded Added Successfully !!!'); 
        END IF;
    
    EXCEPTION
        when ex_INVALID then
            dbms_output.put_line('Inserted Data is not as expected !!!');   
    
    END INSERT_ACTIVITY;

FUNCTION PROCESS_UPDATE_CUSTOMER(
        vCUSTOMER_ID IN CUSTOMERS.CUSTOMER_ID%type,
        vFIRST_NAME IN CUSTOMERS.FIRST_NAME%type, 
        vLAST_NAME IN CUSTOMERS.LAST_NAME%type, 
        vEMAIL_ID IN CUSTOMERS.EMAIL_ID%type,
        vCONTACT IN CUSTOMERS.CONTACT%type, 
        vLICENSE_NUMBER IN CUSTOMERS.LICENSE_NUMBER%type,
        vPASSPORT_NUMBER IN CUSTOMERS.PASSPORT_NUMBER%type, 
        vCUSTOMER_TYPE IN CUSTOMERS.CUSTOMER_TYPE%type, 
        vDATE_OF_BIRTH IN CUSTOMERS.DATE_OF_BIRTH%type) 
    RETURN VARCHAR2 AS
    
        DB_EMAIL_ID CUSTOMERS.EMAIL_ID%type;
        DB_CONTACT CUSTOMERS.CONTACT%type;
        DB_LICENSE_NUMBER CUSTOMERS.LICENSE_NUMBER%type;
        DB_PASSPORT_NUMBER CUSTOMERS.PASSPORT_NUMBER%type;
        DB_CUST_ID CUSTOMERS.CUSTOMER_ID%type;
        
        INVALID_NAME EXCEPTION;
        INVALID_EMAIL EXCEPTION;
        INVALID_CONTACT EXCEPTION;
        INVALID_LICENSE_NUMBER EXCEPTION;
        INVALID_PASSPORT_NUMBER EXCEPTION;
        INVALID_CUSTOMER_TYPE EXCEPTION;
        INVALID_DATE_OF_BIRTH EXCEPTION;
    
    BEGIN
            
        -- check data is null, empty and appropriate
        if vFIRST_NAME is NULL or REGEXP_LIKE(TRIM(vFIRST_NAME) , '^[0-9]*$') or LENGTH(TRIM(vFIRST_NAME)) is NULL or
        vLAST_NAME is NULL or REGEXP_LIKE(TRIM(vLAST_NAME) , '^[0-9]*$') or LENGTH(TRIM(vLAST_NAME)) is NULL then
            raise INVALID_NAME;
        end if;
        
        if vEMAIL_ID is NULL or LENGTH(TRIM(vEMAIL_ID)) is NULL or NOT (TRIM(vEMAIL_ID)) LIKE '%@_%._%' then
            raise INVALID_EMAIL;
        end if;
        
        if vCONTACT is NULL or  LENGTH(vCONTACT) != 10  then
            raise INVALID_CONTACT;
        end if;
        
        if vLICENSE_NUMBER is NULL or LENGTH(TRIM(vLICENSE_NUMBER)) is NULL then
            raise INVALID_LICENSE_NUMBER;
        end if;
        
        if vPASSPORT_NUMBER is NULL or LENGTH(TRIM(vPASSPORT_NUMBER)) is NULL then
            raise INVALID_PASSPORT_NUMBER;
        end if;
           
        if vCUSTOMER_TYPE is NULL or LENGTH(TRIM(vCUSTOMER_TYPE)) is NULL or vCUSTOMER_TYPE not in ('STUDENT','EMPLOYEE','OTHERS') then
            raise INVALID_CUSTOMER_TYPE;
        end if;
        
        if vDATE_OF_BIRTH is NULL or ((sysdate - vDATE_OF_BIRTH)/365) < 18  then
            raise INVALID_DATE_OF_BIRTH;
        end if;
        
            -- check if customer data already exists
            begin
                select EMAIL_ID, CUSTOMER_ID into DB_EMAIL_ID, DB_CUST_ID from CUSTOMERS where EMAIL_ID = vEMAIL_ID;
                if DB_EMAIL_ID IS NOT NULL and DB_CUST_ID != vCUSTOMER_ID then
                    raise INVALID_EMAIL;
                end if;
            exception
                when NO_DATA_FOUND then
                     NULL;
                when INVALID_EMAIL then
                    dbms_output.put_line('Duplicate Email Address!!!');
                    RETURN 'NO';
            end;
        
            begin
                select CONTACT, CUSTOMER_ID into DB_CONTACT, DB_CUST_ID  from CUSTOMERS where CONTACT = vCONTACT;
                if DB_CONTACT IS NOT NULL and DB_CUST_ID != vCUSTOMER_ID then
                    raise INVALID_CONTACT;
                end if;
            exception
                when NO_DATA_FOUND then
                     NULL;
                when INVALID_CONTACT then
                    dbms_output.put_line('Duplicate Contact!!!');
                    RETURN 'NO';
            end;
        
            begin
                select LICENSE_NUMBER, CUSTOMER_ID into DB_LICENSE_NUMBER, DB_CUST_ID from CUSTOMERS where LICENSE_NUMBER = vLICENSE_NUMBER;
                if DB_LICENSE_NUMBER IS NOT NULL and DB_CUST_ID != vCUSTOMER_ID then
                    raise INVALID_LICENSE_NUMBER;
                end if;
            exception
                when NO_DATA_FOUND then
                     NULL;
                when INVALID_LICENSE_NUMBER then
                    dbms_output.put_line('Duplicate License Number!!!');
                    RETURN 'NO';
            end;
                
        RETURN 'YES';
    
    EXCEPTION
        when INVALID_NAME then
            dbms_output.put_line('Invalid Name !!!');
            RETURN 'NO';
        when INVALID_EMAIL then
            dbms_output.put_line('Invalid Email !!!');
            RETURN 'NO';
        when INVALID_CONTACT then
            dbms_output.put_line('Invalid Contact !!!');
            RETURN 'NO';
        when INVALID_LICENSE_NUMBER then
            dbms_output.put_line('Invalid License Number !!!');
            RETURN 'NO';
        when INVALID_PASSPORT_NUMBER then
            dbms_output.put_line('Invalid Passport Number !!!');
            RETURN 'NO';
        when INVALID_CUSTOMER_TYPE then
            dbms_output.put_line('Invalid Customer Type !!!');
            RETURN 'NO';
        when INVALID_DATE_OF_BIRTH then
            dbms_output.put_line('Invalid Date of Birth OR Age Less Than 18 !!!');
            RETURN 'NO';
        when others then
            RETURN 'NO';
        
    END PROCESS_UPDATE_CUSTOMER;
END PCKG_CUSTOMER;

/
--------------------------------------------------------
--  DDL for Package Body PCKG_INSURANCE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY PCKG_INSURANCE   AS

FUNCTION PROCESS_INSURANCE 
(
    vSUMMARY IN INSURANCE.SUMMARY%TYPE,
    vINSURANCE_TYPE IN INSURANCE.INSURANCE_TYPE%TYPE,
    vINSURANCE_COST IN INSURANCE.INSURANCE_COST%TYPE 
) RETURN VARCHAR2 AS 

    ex_INVALID_INSURANCE_COST EXCEPTION;
    ex_INVALID_SUMMARY EXCEPTION;
    ex_INVALID_INSURANCE_TYPE EXCEPTION;
BEGIN

    if vINSURANCE_COST is NULL then
        raise ex_INVALID_INSURANCE_COST;
    end if;  
    
    if LENGTH(trim(vINSURANCE_TYPE)) > 50 then
        raise ex_INVALID_INSURANCE_TYPE;
    end if; 
    
    if LENGTH(trim(vSUMMARY)) > 50 then
        raise ex_INVALID_SUMMARY;
    end if; 
    
    RETURN 'YES';

EXCEPTION

    when ex_INVALID_INSURANCE_COST then
        dbms_output.put_line('Please enter the cost of Insurance !!!');
        RETURN 'NO';
    
    when ex_INVALID_INSURANCE_TYPE then
        dbms_output.put_line('Please enter the Insurance Type value within 50 characters !!!');
        RETURN 'NO';
        
    when ex_INVALID_SUMMARY then
        dbms_output.put_line('Please enter the Summary within 50 characters !!!');
        RETURN 'NO';
        
    RETURN 'NO';    
END PROCESS_INSURANCE;

PROCEDURE INSERT_INSURANCE 
(
    vINSURANCE_ID IN INSURANCE.INSURANCE_ID%TYPE, 
    vSUMMARY IN INSURANCE.SUMMARY%TYPE, 
    vINSURANCE_TYPE IN INSURANCE.INSURANCE_TYPE%TYPE, 
    vINSURANCE_COST IN INSURANCE.INSURANCE_COST%TYPE 
) AS 
    ex_INVALID EXCEPTION;
    
BEGIN

    if PROCESS_INSURANCE(vSUMMARY,vINSURANCE_TYPE,vINSURANCE_COST) = 'NO' then
        raise ex_INVALID;
    end if;
    
    INSERT INTO INSURANCE VALUES(
        vINSURANCE_ID,
        trim(vSUMMARY),
        trim(vINSURANCE_TYPE),
        vINSURANCE_COST);
        
    IF SQL%ROWCOUNT != 1 then
        dbms_output.put_line('Sorry, Insurance could not be inserted. Please retry again with valid constraints !!!');
        rollback;
    ELSE
        COMMIT;
        dbms_output.put_line('Insurance Inserted Successfully !!!'); 
    END IF;

EXCEPTION
    when ex_INVALID then
        dbms_output.put_line('Insurance has not inserted. Please retry again with valid constraints  !!!'); 
    rollback;
        
END INSERT_INSURANCE;

PROCEDURE UPDATE_INSURANCE 
(
    vINSURANCE_ID IN INSURANCE.INSURANCE_ID%TYPE, 
    vSUMMARY IN INSURANCE.SUMMARY%TYPE, 
    vINSURANCE_TYPE IN INSURANCE.INSURANCE_TYPE%TYPE, 
    vINSURANCE_COST IN INSURANCE.INSURANCE_COST%TYPE 
) AS 
    
    ex_INVALID EXCEPTION;

BEGIN

    IF PROCESS_INSURANCE(vSUMMARY,vINSURANCE_TYPE, vINSURANCE_COST) = 'NO' THEN
        raise ex_INVALID;
    END IF;
    
    UPDATE INSURANCE SET SUMMARY = vSUMMARY, INSURANCE_TYPE = vINSURANCE_TYPE, INSURANCE_COST = vINSURANCE_COST WHERE INSURANCE_ID = vINSURANCE_ID;
    
    IF SQL%ROWCOUNT !=1 THEN
        dbms_output.put_line('Record not been updated. Please try again !!!');
        rollback;
    ELSE
        dbms_output.put_line('Record has updated successfully !!!');
        commit;
    END IF;

EXCEPTION

    WHEN ex_INVALID THEN
        dbms_output.put_line('Insurance Update has been failed. Please try again with valid constraints !!!');
    
END UPDATE_INSURANCE;

PROCEDURE INSERT_PURCHASE_INSURANCE 
(
    vPURCHASE_INSURANCE_ID IN PURCHASE_INSURANCE.PURCHASE_INSURANCE_ID%TYPE, 
    vCAR_ID IN PURCHASE_INSURANCE.CAR_ID%TYPE, 
    vINSURANCE_ID IN PURCHASE_INSURANCE.INSURANCE_ID%TYPE, 
    vPURCHASE_DATE IN PURCHASE_INSURANCE.PURCHASE_DATE%TYPE, 
    vEXPIRY_DATE IN PURCHASE_INSURANCE.EXPIRY_DATE%TYPE 
) AS 

    ex_INVALID EXCEPTION;
    
BEGIN

    IF PROCESS_PURCHASE_INSURANCE(vCAR_ID,vINSURANCE_ID,vPURCHASE_DATE,vEXPIRY_DATE) = 'NO' then
        raise ex_INVALID;
    END IF;
    
    INSERT INTO PURCHASE_INSURANCE(PURCHASE_INSURANCE_ID, CAR_ID, INSURANCE_ID, PURCHASE_DATE, EXPIRY_DATE)
    VALUES(
        vPURCHASE_INSURANCE_ID,
        vCAR_ID,
        vINSURANCE_ID,
        vPURCHASE_DATE,
        vEXPIRY_DATE);
        
    IF SQL%ROWCOUNT != 1 then
        dbms_output.put_line('Sorry, Purchase Insurance could not be inserted !!!');
        rollback;
    ELSE
        COMMIT;
        dbms_output.put_line('Purchase Insurance Inserted Successfully !!!'); 
    END IF;
    
EXCEPTION
    when ex_INVALID then
        dbms_output.put_line('Please retry inserting the valid Purchase Insurance !!!'); 
  
END INSERT_PURCHASE_INSURANCE;

FUNCTION PROCESS_PURCHASE_INSURANCE(
    vCAR_ID IN PURCHASE_INSURANCE.CAR_ID%TYPE, 
    vINSURANCE_ID IN PURCHASE_INSURANCE.INSURANCE_ID%TYPE, 
    vPURCHASE_DATE IN PURCHASE_INSURANCE.PURCHASE_DATE%TYPE, 
    vEXPIRY_DATE IN PURCHASE_INSURANCE.EXPIRY_DATE%TYPE 
) RETURN VARCHAR2 AS 

    DB_vCAR_ID PURCHASE_INSURANCE.CAR_ID%TYPE;
    DB_vINSURANCE_ID PURCHASE_INSURANCE.INSURANCE_ID%TYPE;
    
    ex_INVALID_CAR_ID EXCEPTION;
    ex_INVALID_INSURANCE_ID EXCEPTION;
    ex_INVALID_PURCHASE_DATE EXCEPTION;
    ex_INVALID_EXPIRY_DATE EXCEPTION;

BEGIN
    
    --check if data is null, empty and not appropriate---
    
    if vCAR_ID is NULL or LENGTH(vCAR_ID) is NULL then
        raise ex_INVALID_CAR_ID;
    end if;
    
    if vINSURANCE_ID is NULL or LENGTH(vINSURANCE_ID) is NULL then
        raise ex_INVALID_INSURANCE_ID;
    end if;
    
    if vPURCHASE_DATE is NULL or to_char(LENGTH(vPURCHASE_DATE)) is NULL then
        raise ex_INVALID_PURCHASE_DATE;
    end if;
    
    if vEXPIRY_DATE is NULL or to_char(LENGTH(vEXPIRY_DATE)) is NULL then
        raise ex_INVALID_EXPIRY_DATE;
    end if;
    
    -- check if Car ID, Customer ID exists in CAR table
    begin
    select CAR_ID into DB_vCAR_ID from CAR where CAR_ID = vCAR_ID;
        if DB_vCAR_ID IS NULL OR LENGTH(DB_vCAR_ID) IS NULL THEN
            raise ex_INVALID_CAR_ID;
        end if;
    exception
        when NO_DATA_FOUND then
            dbms_output.put_line('Car ID does not exists in Car table !!!');
            RETURN 'NO';
        when ex_INVALID_CAR_ID then
            dbms_output.put_line('Car ID does not exists in Car table !!!');
            RETURN 'NO';
    end;
    
    begin
        select INSURANCE_ID into DB_vINSURANCE_ID from INSURANCE where INSURANCE_ID = vINSURANCE_ID;
        if DB_vINSURANCE_ID IS NULL OR LENGTH(DB_vINSURANCE_ID) IS NULL THEN
            raise ex_INVALID_INSURANCE_ID;
        end if;
    exception
        when NO_DATA_FOUND then
            dbms_output.put_line('Insurance ID does not exists in Insurance table !!!');
            RETURN 'NO';
        when ex_INVALID_INSURANCE_ID then
            dbms_output.put_line('Insurance ID does not exists in Insurance table !!!');
            RETURN 'NO';
    end;
    
    RETURN 'YES';
    
EXCEPTION

    when ex_INVALID_CAR_ID then
        dbms_output.put_line('Please enter the valid Car ID !!!');
        RETURN 'NO';
        
    when ex_INVALID_INSURANCE_ID then
        dbms_output.put_line('Please enter the valid Insurance ID !!!');
        RETURN 'NO';
        
    when ex_INVALID_PURCHASE_DATE then
        dbms_output.put_line('Please enter the Purchase Date !!!');
        RETURN 'NO';
        
    when ex_INVALID_EXPIRY_DATE then
        dbms_output.put_line('Please enter the Expiry Date !!!');
        RETURN 'NO';
    
    RETURN 'NO';
        
END PROCESS_PURCHASE_INSURANCE;

END PCKG_INSURANCE;

/
--------------------------------------------------------
--  DDL for Package Body PCKG_SERVICE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY PCKG_SERVICE   AS

    FUNCTION PROCESS_SUPPORT(
        vSUPPORT_ID IN SUPPORT.SUPPORT_ID%type,
        vSTATUS IN SUPPORT.STATUS%type,
        vCUSTOMER_ID IN SUPPORT.CUSTOMER_ID%type,
        vTRANS_ID IN SUPPORT.TRANS_ID%type) 
        
    RETURN VARCHAR2 AS
    
        ex_SUPPORT_ID EXCEPTION;
        ex_STATUS EXCEPTION;
        ex_TRANS_ID EXCEPTION;
        ex_CUSTOMER_ID EXCEPTION;
    
    BEGIN
    
        if vCUSTOMER_ID is not null and vTRANS_ID is not null then
            if pckg_utils.CHECK_CUSTOMER_ID_EXISTS(vCUSTOMER_ID) = 0 or pckg_utils.CHECK_TRANS_ID_EXISTS(vTRANS_ID) = 0 then
                raise no_data_found;
            end if;
        end if;
    
        if vSUPPORT_ID is null then
            raise ex_SUPPORT_ID;
        end if;
    
        if vSTATUS is null or vSTATUS not in ('IN PROGRESS', 'COMPLETED', 'PENDING') then
            raise ex_STATUS;
        end if;
    
        if vTRANS_ID is null then
            raise ex_TRANS_ID;
        end if;
    
        if vCUSTOMER_ID is null then
            raise ex_CUSTOMER_ID;
        end if;
    
        RETURN 'YES';
    
    EXCEPTION
    
        when no_data_found then
        dbms_output.put_line('Customer Id or Transaction Id not present in the parent table !!!');
        RETURN 'NO';
        when ex_SUPPORT_ID then
        dbms_output.put_line('Support Id cannot be Null !!!');
        RETURN 'NO';
        when ex_STATUS then
        dbms_output.put_line('Invalid Status !!!');
        RETURN 'NO';
        when ex_TRANS_ID then
        dbms_output.put_line('Transaction Id cannot be null !!!');
        RETURN 'NO';
        when ex_CUSTOMER_ID then
        dbms_output.put_line('Customer Id cannot be null !!!');
        RETURN 'NO';
        when others then
        dbms_output.put_line(SQLCODE|| ': ' || SQLERRM);
        RETURN 'NO';      
    
    END PROCESS_SUPPORT;

    FUNCTION PROCESS_FEEDBACK(
        v_RATINGS IN FEEDBACK.RATINGS%TYPE, 
        v_COMMENTS IN FEEDBACK.COMMENTS%TYPE, 
        v_FEEDBACK_DATE IN FEEDBACK.FEEDBACK_DATE%TYPE, 
        v_TRANS_ID IN FEEDBACK.TRANS_ID%TYPE) 
    RETURN VARCHAR2 AS
    
        ex_INVALID_RATINGS EXCEPTION;
        ex_COMMENTS EXCEPTION;
        ex_INVALID_FEEDBACK_DATE EXCEPTION;
        ex_INVALID_TRANS_ID EXCEPTION;
        DB_TRANSACTION_DATE ride_transaction.transaction_date%type;
        INVALID_TRANS_DATE EXCEPTION;
    
    BEGIN
    
        if V_RATINGS is NULL then
            raise ex_INVALID_RATINGS;
        end if;
        
        
        if V_COMMENTS is NULL or LENGTH(trim(V_COMMENTS)) is NULL then
            raise ex_COMMENTS;
        end if;
        
            BEGIN
              SELECT TRANSACTION_DATE INTO DB_TRANSACTION_DATE FROM RIDE_TRANSACTION WHERE TRANS_ID=V_TRANS_ID;
              IF DB_TRANSACTION_DATE IS NULL THEN
                RAISE INVALID_TRANS_DATE;
              END IF;
            
            EXCEPTION
                WHEN NO_DATA_FOUND THEN
                    RAISE ex_INVALID_TRANS_ID;
                WHEN INVALID_TRANS_DATE THEN
                    RAISE INVALID_TRANS_DATE;
            END;
        
        if V_FEEDBACK_DATE > SYSDATE OR  V_FEEDBACK_DATE > DB_TRANSACTION_DATE then
            raise ex_INVALID_FEEDBACK_DATE;
        end if;
        
        if V_TRANS_ID is null then
            raise ex_INVALID_TRANS_ID;
        end if;
        
        RETURN 'YES';
        
    EXCEPTION
    
        when ex_INVALID_RATINGS then
            dbms_output.put_line('Invalid Ratings !!! Ratings Cannot be NULL ');
            RETURN 'NO';
        when ex_COMMENTS then
            dbms_output.put_line('Invalid Comments !!! Comments Cannot be Empty');
            RETURN 'NO';
        when ex_INVALID_FEEDBACK_DATE then
            dbms_output.put_line('Invalid Feedback date !!! Feedback date cannot be greater than sysdate or transaction date');
            RETURN 'NO';
        when ex_INVALID_TRANS_ID then
            dbms_output.put_line('Invalid Trans ID!!! Trans ID Cannot be NULL ');
            RETURN 'NO';
        WHEN INVALID_TRANS_DATE THEN
            dbms_output.put_line('Invalid Trans date!!! Trans date invalid ');
            RETURN 'NO';
        when others then
            RETURN 'NO';
        
    END PROCESS_FEEDBACK;

    PROCEDURE INSERT_SUPPORT(
        vSUPPORT_ID IN SUPPORT.SUPPORT_ID%type,
        vSTATUS IN SUPPORT.STATUS%type,
        vCUSTOMER_ID IN SUPPORT.CUSTOMER_ID%type,
        vTRANS_ID IN SUPPORT.TRANS_ID%type) 
        AS
        ex_INVALID EXCEPTION;
        ex_INVALID_STATUS EXCEPTION;
        
    BEGIN
    
        IF PROCESS_SUPPORT(vSUPPORT_ID, vSTATUS, vCUSTOMER_ID, vTRANS_ID) = 'NO' then
            raise ex_INVALID;
        END IF;
        
        if vSTATUS NOT IN ('COMPLETED', 'IN PROCESS')  then
          raise ex_INVALID_STATUS;
        END IF;
        
        INSERT INTO SUPPORT(SUPPORT_ID, STATUS, CUSTOMER_ID, TRANS_ID)
        VALUES(vSUPPORT_ID, vSTATUS, vCUSTOMER_ID, vTRANS_ID);
        
        IF SQL%ROWCOUNT != 1 then
            dbms_output.put_line('Sorry, Cannot record customers support id !!!');
            rollback;
        ELSE
            COMMIT;
            dbms_output.put_line('Customers Support recorded Added Successfully !!!'); 
        END IF;
    
    EXCEPTION
    
        when ex_INVALID then
            dbms_output.put_line('Inserted Data is not as expected !!!'); 
        WHEN ex_INVALID_STATUS THEN
            dbms_output.put_line('Invalid Status!!!');
        
    END INSERT_SUPPORT;

    PROCEDURE UPDATE_SUPPORT(
        vSUPPORT_ID IN SUPPORT.SUPPORT_ID%type,
        vSTATUS IN SUPPORT.STATUS%type,
        vCUSTOMER_ID IN SUPPORT.CUSTOMER_ID%type,
        vTRANS_ID IN SUPPORT.TRANS_ID%type) 
        AS
        ex_INVALID EXCEPTION;
        ex_INVALID_STATUS EXCEPTION;
            
    BEGIN
    
        IF PROCESS_SUPPORT(vSUPPORT_ID, vSTATUS, vCUSTOMER_ID, vTRANS_ID) = 'NO' then
          raise ex_INVALID;
        END IF;
        
        if vSTATUS NOT IN ('COMPLETED', 'IN PROCESS')  then
          raise ex_INVALID_STATUS;
        END IF;
        
        UPDATE SUPPORT SET STATUS = vSTATUS WHERE SUPPORT_ID = vSUPPORT_ID;
        
        IF SQL%ROWCOUNT !=1 THEN
            dbms_output.put_line('Record not been updated. Please try again !!!');
            rollback;
        ELSE
            dbms_output.put_line('Record has updated successfully !!!');
            commit;
        END IF;
    
    EXCEPTION
    
        WHEN ex_INVALID THEN
            dbms_output.put_line('Status Update has failed. Please try again with valid constraints !!!');        
        WHEN ex_INVALID_STATUS THEN
            dbms_output.put_line('Invalid Status!!!');
        
    END UPDATE_SUPPORT;

    PROCEDURE INSERT_FEEDBACK(
        v_FEEDBACK_ID IN FEEDBACK.FEEDBACK_ID%TYPE, 
        v_RATINGS IN FEEDBACK.RATINGS%TYPE, 
        v_COMMENTS IN FEEDBACK.COMMENTS%TYPE, 
        v_FEEDBACK_DATE IN FEEDBACK.FEEDBACK_DATE%TYPE, 
        v_TRANS_ID IN FEEDBACK.TRANS_ID%TYPE) 
        AS
        ex_INVALID EXCEPTION;
    
    BEGIN
    
        if PROCESS_FEEDBACK( v_RATINGS, v_COMMENTS, v_FEEDBACK_DATE, v_TRANS_ID ) = 'NO' then
            raise ex_INVALID;
        end if;
        
        insert into FEEDBACK values(
            v_FEEDBACK_ID,
            v_RATINGS,
            trim(v_COMMENTS),
            v_FEEDBACK_DATE,
            v_TRANS_ID
        );
        
        if SQL%ROWCOUNT != 1 then
            rollback;
            raise ex_INVALID;
        else 
            dbms_output.put_line('Feedback Data Added Successfully');
            commit;
        end if;
    
    
    EXCEPTION
        when ex_INVALID then
            dbms_output.put_line('Feedback Data Could Not Be Inserted !!!');
        
    END INSERT_FEEDBACK;
    
END PCKG_SERVICE;

/
--------------------------------------------------------
--  DDL for Package Body PCKG_TRANSACT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY PCKG_TRANSACT   AS

  FUNCTION PROCESS_DISCOUNTS(
        vDESCRIPTION IN DISCOUNTS.DESCRIPTION%TYPE, 
        vPERCENTAGE IN DISCOUNTS.PERCENTAGE%TYPE 
    )RETURN VARCHAR2 AS

    -- TODO: Implementation required for FUNCTION PCKG_TRANSACT.PROCESS_DISCOUNTS
        ex_INVALID_DESCRIPTION EXCEPTION;
        ex_INVALID_PERCENTAGE EXCEPTION;
    
    BEGIN
    
        IF LENGTH(TRIM(vDESCRIPTION)) > 100 THEN
            RAISE ex_INVALID_DESCRIPTION;
        END IF;
        
        IF vPERCENTAGE > 100 OR vPERCENTAGE < 0 THEN
            RAISE ex_INVALID_PERCENTAGE;
        END IF;
        
        RETURN 'YES';
    
    EXCEPTION
        when ex_INVALID_DESCRIPTION then
            dbms_output.put_line('Please enter the Description within 100 characters !!!');
            RETURN 'NO';

        when ex_INVALID_PERCENTAGE then
            dbms_output.put_line('Please enter the Percentage value between 0 and 100 !!!');
            RETURN 'NO';
            
        RETURN 'NO';
  END PROCESS_DISCOUNTS;

  FUNCTION PROCESS_PAYMENTS(
        vPAY_DATE IN PAYMENTS.PAY_DATE%TYPE, 
        vCUSTOMER_CARD IN PAYMENTS.CUSTOMER_CARD%TYPE, 
        vSTATUS IN PAYMENTS.STATUS%TYPE, 
        vTRANS_ID IN PAYMENTS.TRANS_ID%TYPE, 
        vDISCOUNT_ID IN PAYMENTS.DISCOUNT_ID%TYPE 
    )RETURN VARCHAR2 AS

    -- TODO: Implementation required for FUNCTION PCKG_TRANSACT.PROCESS_PAYMENTS
        DB_vDISCOUNT_ID PAYMENTS.DISCOUNT_ID%TYPE;
        DB_vTRANS_ID PAYMENTS.TRANS_ID%TYPE;
        DB_vPAY_DATE PAYMENTS.PAY_DATE%TYPE; 
        DB_vRIDE_STATUS  RIDE_TRANSACTION.STATUS%type;
        
        ex_INVALID_TRANSACTIONS EXCEPTION;
        ex_INVALID_PAY_DATE EXCEPTION;
        ex_INVALID_CUSTOMER_CARD EXCEPTION;
        ex_INVALID_STATUS EXCEPTION;
        ex_INVALID_TRANS_ID EXCEPTION;
        ex_INVALID_DISCOUNT_ID EXCEPTION;
        ex_INVALID_TRANSACTION EXCEPTION;
        
    BEGIN
        
        IF vTRANS_ID IS NULL OR LENGTH(TRIM(vTRANS_ID)) IS NULL THEN
            raise ex_INVALID_TRANS_ID;
        END IF;
        
        IF PCKG_UTILS.CHECK_TRANS_ID_EXISTS(vTRANS_ID) = 0 THEN
            raise ex_INVALID_TRANS_ID;
        END IF;
        
        begin
            select end_time, status into DB_vPAY_DATE, DB_vRIDE_STATUS  from ride_transaction where trans_id = vTRANS_ID;
            if DB_vPAY_DATE > vPAY_DATE and DB_vRIDE_STATUS != 'COMPLETED' then
                raise ex_INVALID_PAY_DATE;
            end if;
        exception
            when no_data_found then
                raise ex_INVALID_TRANSACTION; 
            when others then
                raise ex_INVALID_TRANSACTION;
        end;
        
        IF LENGTH(TRIM(vCUSTOMER_CARD)) != 19 or vCUSTOMER_CARD IS NULL then
            raise ex_INVALID_CUSTOMER_CARD;
        END IF;
        
        IF vSTATUS != 'IN PROCESS' THEN
            raise ex_INVALID_STATUS;
        END IF;
        
    
        begin
            IF LENGTH(TRIM(vDISCOUNT_ID)) > 0 and vDISCOUNT_ID IS NOT NULL then
                select DISCOUNT_ID into DB_vDISCOUNT_ID from DISCOUNTS where DISCOUNT_ID = vDISCOUNT_ID;
                if DB_vDISCOUNT_ID IS NULL then
                    raise ex_INVALID_DISCOUNT_ID;
                end if;
            end if;
        exception
            when NO_DATA_FOUND then
                dbms_output.put_line('DISCOUNT_ID does not exists in DISCOUNTS table !!!');
                raise ex_INVALID_DISCOUNT_ID;
        end;
        
       
        RETURN 'YES';
        
    EXCEPTION
        
        when ex_INVALID_TRANSACTIONS then
            dbms_output.put_line('Duplicate Transaction occured. Transaction ID should unique !!!');
            RETURN 'NO';
            
        when ex_INVALID_PAY_DATE then
            dbms_output.put_line('Pay Date is not valid. It should not be less than the Ride completed time !!!');
            RETURN 'NO';
        
        when ex_INVALID_CUSTOMER_CARD then
            dbms_output.put_line('Customer Card is not valid. Please check valid 16 digit card number !!!');
            RETURN 'NO';
            
        when ex_INVALID_STATUS then
            dbms_output.put_line('Transaction Status is not yet completed, Payment status cannot be changed !!!');
            RETURN 'NO';
            
        when ex_INVALID_TRANS_ID then
            dbms_output.put_line('Trans_ID is not valid. Please check !!!');
            RETURN 'NO';
        
        when ex_INVALID_TRANSACTION then
            dbms_output.put_line('Invalid Transaction ID !!!');
            RETURN 'NO';       
            
        when ex_INVALID_DISCOUNT_ID then
            dbms_output.put_line('Discount_ID is not valid. Please check !!!');
            RETURN 'NO';
        
        when others then
            return 'NO';
    
        RETURN 'NO';

  END PROCESS_PAYMENTS;

  FUNCTION PROCESS_RIDE_TRANSACTION 
    (
        vTRANS_ID IN RIDE_TRANSACTION.TRANS_ID%type,
        vCUSTOMER_ID IN CUSTOMERS.CUSTOMER_ID%type,
        vCARS_AT_PICKUP_ID IN CARS_AT_PICKUP.CARS_AT_PICKUP_ID%type,
        vSTART_TIME IN RIDE_TRANSACTION.START_TIME%type,
        vEND_TIME IN RIDE_TRANSACTION.END_TIME%type,
        vCAR_ID IN CAR.CAR_ID%type,
        vDISTANCE IN RIDE_TRANSACTION.DISTANCE%type,
        vSTATUS IN RIDE_TRANSACTION.STATUS%type 
    ) RETURN VARCHAR2 AS

    -- TODO: Implementation required for FUNCTION PCKG_TRANSACT.PROCESS_RIDE_TRANSACTION
        ex_TRANS_ID_EXISTS EXCEPTION;
        ex_CUSTOMER_ID_NOT_EXISTS EXCEPTION;
        ex_CARS_AT_PICKUP_ID_NOT_EXISTS EXCEPTION;
        ex_INVALID_START_DATE EXCEPTION;
        ex_CAR_ID_NOT_EXISTS EXCEPTION;
        ex_INVALID_DISTANCE EXCEPTION;
        ex_INVALID_STATUS EXCEPTION;
        ex_CAR_ID_NULL EXCEPTION;
    BEGIN
    
        if PCKG_UTILS.CHECK_trans_id_exists(vTRANS_ID) != 0  then
            raise ex_TRANS_ID_EXISTS;
        end if;
        
        if PCKG_UTILS.CHECK_customer_id_exists(vCUSTOMER_ID) = 0 then
            raise ex_CUSTOMER_ID_NOT_EXISTS;
        end if;
    
        if PCKG_UTILS.CHECK_car_at_pickup_id_exists(vCARS_AT_PICKUP_ID) = 0 then
            raise ex_CARS_AT_PICKUP_ID_NOT_EXISTS;
        end if;
        
        if vCAR_ID is NULL then
            raise ex_CAR_ID_NULL;
        end if;
        
        if PCKG_UTILS.CHECK_car_id_exists(vCAR_ID) = 0 then
            raise ex_CAR_ID_NOT_EXISTS;
        end if;
        
        if vSTART_TIME is NULL or vEND_TIME is NULL then
            raise ex_INVALID_START_DATE;
        end if;
        
        if (vSTART_TIME < (sysdate)) or 
        (vEND_TIME < (sysdate)) or 
        (vSTART_TIME > vEND_TIME) then
            raise ex_INVALID_START_DATE;
        end if;
                
        if vDISTANCE != 0 or vDISTANCE is NULL then
            raise ex_INVALID_DISTANCE;
        end if;
        
        if vSTATUS IN ('COMPLETED', 'CANCELLED', 'UPDATED') or vSTATUS != 'IN PROCESS' then
            raise ex_INVALID_STATUS;
        end if;
        
        RETURN 'YES';    
    EXCEPTION
        when ex_CUSTOMER_ID_NOT_EXISTS then
            dbms_output.put_line('Customer Id Not Found!!! Cant Process Transaction');
            RETURN 'NO';
        when ex_CARS_AT_PICKUP_ID_NOT_EXISTS then
            dbms_output.put_line('Car At Pickup Id Not Found!!! Cant Process Transaction');
            RETURN 'NO';
        when ex_TRANS_ID_EXISTS then
            dbms_output.put_line('Duplicate Transaction Id Found!!! Cant Process Transaction');
            RETURN 'NO';
        when ex_INVALID_START_DATE then
            dbms_output.put_line('Invalid Start / End DateTime!!! Cant Process Transaction');
            RETURN 'NO';
        when ex_CAR_ID_NOT_EXISTS then
            dbms_output.put_line('Car Id Not Found!!! Cant Process Transaction');
            RETURN 'NO';
        when ex_INVALID_DISTANCE then
            dbms_output.put_line('Invalid Distance !!! Distance Must Be Zero Before Ride Ends');
            RETURN 'NO';
        when ex_INVALID_STATUS then
            dbms_output.put_line('Invalid Status !!! Status Should Be IN PROCESS   Only');
            RETURN 'NO';
        when ex_CAR_ID_NULL then
            dbms_output.put_line('Car Id Cannot Be NULL!!! Cant Process Transaction');
            RETURN 'NO';
        when others then
            dbms_output.put_line('otehrs');
            RETURN 'NO';

  END PROCESS_RIDE_TRANSACTION;

  FUNCTION PROCESS_UPDATE_RIDE_TRANSACTION(
        vTRANS_ID IN RIDE_TRANSACTION.TRANS_ID%type,
        vCARS_AT_PICKUP_ID IN CARS_AT_PICKUP.CARS_AT_PICKUP_ID%type,
        vSTART_TIME IN RIDE_TRANSACTION.START_TIME%type,
        vEND_TIME IN RIDE_TRANSACTION.END_TIME%type,
        vCAR_ID IN CAR.CAR_ID%type,
        vDISTANCE IN RIDE_TRANSACTION.DISTANCE%type,
        vSTATUS IN RIDE_TRANSACTION.STATUS%type 
    ) RETURN VARCHAR2 AS
    -- TODO: Implementation required for FUNCTION PCKG_TRANSACT.PROCESS_UPDATE_RIDE_TRANSACTION
        ex_NO_TRANS_ID_FOUND EXCEPTION;
        ex_NO_CARS_AT_PICKUP_ID_FOUND EXCEPTION;
        ex_INVALID_START_DATE EXCEPTION;
        ex_CAR_ID_NOT_EXISTS EXCEPTION;
        ex_INVALID_DISTANCE EXCEPTION;
        ex_INVALID_STATUS EXCEPTION;
        ex_CAR_ID_NULL EXCEPTION;
    BEGIN
        
        if PCKG_UTILS.CHECK_trans_id_exists(vTRANS_ID) = 0 then
            raise ex_NO_TRANS_ID_FOUND;
        end if;
        
        if PCKG_UTILS.CHECK_car_at_pickup_id_exists(vCARS_AT_PICKUP_ID) = 0 then
            raise ex_NO_CARS_AT_PICKUP_ID_FOUND;
        end if;
        
        if vCAR_ID is NULL then
            raise ex_CAR_ID_NULL;
        end if;
        if PCKG_UTILS.CHECK_car_id_exists(vCAR_ID) = 0 then
            raise ex_CAR_ID_NOT_EXISTS;
        end if;
            
        if vSTATUS NOT IN ('COMPLETED', 'CANCELLED', 'UPDATED') or vSTATUS = 'IN PROCESS' then
            raise ex_INVALID_STATUS;
        else
            if vSTATUS != 'COMPLETED' and (vDISTANCE != 0 or vDISTANCE is NULL) then
                raise ex_INVALID_DISTANCE;
            end if;
        end if;
            
        if (vSTART_TIME < sysdate) or 
        (vEND_TIME < sysdate) or 
        (vSTART_TIME > vEND_TIME) then
            raise ex_INVALID_START_DATE;
        end if;
        
        RETURN 'YES';
    EXCEPTION
    
        when ex_NO_TRANS_ID_FOUND then
            dbms_output.put_line('No Transaction Found!!! Update Failed');
            RETURN 'NO';
        when ex_NO_CARS_AT_PICKUP_ID_FOUND then
            dbms_output.put_line('No CARS AT PICKUP ID Found!!! Update Failed');
            RETURN 'NO';
        when ex_INVALID_START_DATE then
            dbms_output.put_line('Invalid Start / End DateTime!!! Update Failed');
            RETURN 'NO';
        when ex_CAR_ID_NOT_EXISTS then
            dbms_output.put_line('Car Id Not Found!!! Update Failed');
            RETURN 'NO';
        when ex_INVALID_DISTANCE then
            dbms_output.put_line('Invalid Distance !!! Distance Must Be Zero Before Ride Ends');
            RETURN 'NO';
        when ex_INVALID_STATUS then
            dbms_output.put_line('Invalid Status!!!');
            RETURN 'NO';
        when ex_CAR_ID_NULL then
            dbms_output.put_line('Car Id Cannot Be NULL!!! Cant Process Transaction');
            RETURN 'NO';
        when others then
            RETURN 'NO';

  END PROCESS_UPDATE_RIDE_TRANSACTION;

  PROCEDURE INSERT_RIDE_TRANSACTION(
        vTRANS_ID IN RIDE_TRANSACTION.TRANS_ID%type,
        vCUSTOMER_ID IN CUSTOMERS.CUSTOMER_ID%type,
        vCARS_AT_PICKUP_ID IN CARS_AT_PICKUP.CARS_AT_PICKUP_ID%type,
        vSTART_TIME IN RIDE_TRANSACTION.START_TIME%type,
        vEND_TIME IN RIDE_TRANSACTION.END_TIME%type,
        vCAR_ID IN CAR.CAR_ID%type,
        vDISTANCE IN RIDE_TRANSACTION.DISTANCE%type,
        vSTATUS IN RIDE_TRANSACTION.STATUS%type
    ) AS

    -- TODO: Implementation required for PROCEDURE PCKG_TRANSACT.INSERT_RIDE_TRANSACTION
        ex_INVALID EXCEPTION;
        ex_CAR_NOT_AVAILABLE EXCEPTION;
    BEGIN
        if process_ride_transaction(vTRANS_ID, vCUSTOMER_ID, vCARS_AT_PICKUP_ID,
        vSTART_TIME, vEND_TIME, vCAR_ID, vDISTANCE, vSTATUS) = 'NO' then
            raise ex_INVALID;
        end if;
    
        if PCKG_UTILS.CHECK_CAR_AVAILABILITY(vCAR_ID, vSTART_TIME, vEND_TIME) != 0 then
            raise ex_CAR_NOT_AVAILABLE;
        end if;
        
        insert into RIDE_TRANSACTION values(
            vTRANS_ID,
            vCUSTOMER_ID,
            vCARS_AT_PICKUP_ID,
            sysdate,
            vSTART_TIME,
            vEND_TIME,
            vCAR_ID,
            vDISTANCE,
            vSTATUS
        );
        
        if SQL%ROWCOUNT != 1 then
            rollback;
            raise ex_INVALID;
        else
            dbms_output.put_line('Ride Scheduled Successfuly !!!');
        end if;
        
        commit;
    EXCEPTION
        when ex_INVALID then
            dbms_output.put_line('Ride Transaction Failed !!!');
        when ex_CAR_NOT_AVAILABLE then
            dbms_output.put_line('This Car Is Not Available For Ride For Given Date/Timeslot !!!');
        when others then
            dbms_output.put_line('Ride Transaction Failed !!!');
        
  END INSERT_RIDE_TRANSACTION;

  PROCEDURE UPDATE_RIDE_TRANSACTION(
        vTRANS_ID IN RIDE_TRANSACTION.TRANS_ID%type,
        vCARS_AT_PICKUP_ID IN CARS_AT_PICKUP.CARS_AT_PICKUP_ID%type,
        vSTART_TIME IN RIDE_TRANSACTION.START_TIME%type,
        vEND_TIME IN RIDE_TRANSACTION.END_TIME%type,
        vCAR_ID IN CAR.CAR_ID%type,
        vDISTANCE IN RIDE_TRANSACTION.DISTANCE%type,
        vSTATUS IN RIDE_TRANSACTION.STATUS%type,
        vCUSTOMER_CARD PAYMENTS.CUSTOMER_CARD %type,
        vDISCOUNT_ID DISCOUNTS.DISCOUNT_ID%type
    ) AS

    -- TODO: Implementation required for PROCEDURE PCKG_TRANSACT.UPDATE_RIDE_TRANSACTION
        ex_INVALID EXCEPTION;
        ex_TRANS_ALREADY_COMPLETED EXCEPTION;
        ex_TRANS_ALREADY_CANCELLED EXCEPTION;
        ex_CAR_NOT_AVAILABLE EXCEPTION;
        ex_TRANS_CANCELLED EXCEPTION;
        ex_INVALID_CUSTOMER_CARD EXCEPTION;
        ex_INVALID_DISCOUNT_ID EXCEPTION;
        
        DB_CARS_AT_PICKUP_ID CARS_AT_PICKUP.CARS_AT_PICKUP_ID%type;
        DB_CAR_ID CAR.CAR_ID%type;
        DB_STATUS RIDE_TRANSACTION.STATUS%type;
        DB_START_TIME RIDE_TRANSACTION.START_TIME%type;
        DB_END_TIME RIDE_TRANSACTION.END_TIME%type;
        DB_vDISCOUNT_ID PAYMENTS.DISCOUNT_ID%TYPE;
        
        PAYMENT_IN_PROCESS PAYMENTS.STATUS%type:= 'IN PROCESS';
    BEGIN
        
        if process_update_ride_transaction(vTRANS_ID, vCARS_AT_PICKUP_ID, vSTART_TIME, vEND_TIME, vCAR_ID, vDISTANCE, vSTATUS) = 'NO' then
            raise ex_INVALID;
        end if;
        
        begin
            select CAR_ID, CARS_AT_PICKUP_ID, STATUS, START_TIME, END_TIME into 
            DB_CAR_ID, DB_CARS_AT_PICKUP_ID, DB_STATUS, DB_START_TIME, DB_END_TIME from RIDE_TRANSACTION where TRANS_ID = vTRANS_ID;
        exception
            when NO_DATA_FOUND then
                raise ex_INVALID;
            when TOO_MANY_ROWS then
                raise ex_INVALID;
            when others then
                raise ex_INVALID;
        end;
        
        -- id trans is completed then dont update
        if DB_STATUS IS NOT NULL and DB_STATUS = 'COMPLETED' then
            raise ex_TRANS_ALREADY_COMPLETED;
        end if;
        
        if DB_STATUS IS NOT NULL and DB_STATUS = 'CANCELLED' then
            raise ex_TRANS_ALREADY_CANCELLED;
        end if;
        
        if vSTATUS = 'CANCELLED' then
            update RIDE_TRANSACTION SET 
                STATUS = vSTATUS
                where TRANS_ID = vTRANS_ID;
            if SQL%ROWCOUNT !=1 then
                rollback;
                raise ex_INVALID;
            end if;
            raise ex_TRANS_CANCELLED;
        elsif vSTATUS = 'UPDATED' then     
            if DB_START_TIME != vSTART_TIME or DB_END_TIME != vEND_TIME or DB_CAR_ID != vCAR_ID or 
                DB_CARS_AT_PICKUP_ID!= vCARS_AT_PICKUP_ID then
                if PCKG_UTILS.CHECK_car_availability(vCAR_ID, vSTART_TIME, vEND_TIME) NOT IN ( vTRANS_ID, 0) then
                    raise ex_CAR_NOT_AVAILABLE;
                else  
                    update RIDE_TRANSACTION SET 
                        CARS_AT_PICKUP_ID = vCARS_AT_PICKUP_ID,
                        TRANSACTION_DATE = sysdate,
                        START_TIME = vSTART_TIME,
                        END_TIME = vEND_TIME,
                        CAR_ID = vCAR_ID,
                        STATUS = vSTATUS
                        where TRANS_ID = vTRANS_ID;
                    
                    if SQL%ROWCOUNT !=1 then
                        rollback;
                        raise ex_INVALID;
                    else
                        dbms_output.put_line('Ride Updated Successfuly');
                    end if;
                end if;
            end if;
        elsif vSTATUS = 'COMPLETED' then
        
            -- First check card details and discount ID then proceed with update
            IF LENGTH(TRIM(vCUSTOMER_CARD)) != 19 or vCUSTOMER_CARD IS NULL then
                raise ex_INVALID_CUSTOMER_CARD;
            END IF;
    
                begin
                    IF LENGTH(TRIM(vDISCOUNT_ID)) > 0 and vDISCOUNT_ID IS NOT NULL then
                        select DISCOUNT_ID into DB_vDISCOUNT_ID from DISCOUNTS where DISCOUNT_ID = vDISCOUNT_ID;
                        if DB_vDISCOUNT_ID IS NULL then
                            raise ex_INVALID_DISCOUNT_ID;
                        end if;
                    end if;
                exception
                    when NO_DATA_FOUND then
                        raise ex_INVALID_DISCOUNT_ID;
                end;
            
            update RIDE_TRANSACTION SET
                STATUS = vSTATUS,
                DISTANCE = vDISTANCE
                where TRANS_ID = vTRANS_ID;
                
            if SQL%ROWCOUNT !=1 then
                rollback;
                raise ex_INVALID;
            else
                dbms_output.put_line('Ride Updated Successfuly');
                dbms_output.put_line('Payment Initiated For Ride ...');
                commit;
            end if;
            
            INSERT_PAYMENT(PAY_ID_SEQ.NEXTVAL, sysdate, vCUSTOMER_CARD, PAYMENT_IN_PROCESS, vTRANS_ID, vDISCOUNT_ID);
        
        end if;
    
        commit;
    EXCEPTION
        when ex_INVALID then
            dbms_output.put_line('Update Failed !!!');
        when ex_TRANS_ALREADY_COMPLETED then
            dbms_output.put_line('Transaction Already Completed!!! Update Not Allowed');
        when ex_TRANS_ALREADY_CANCELLED then
            dbms_output.put_line('Transaction Already Cancelled!!! Update Not Allowed');
        when ex_CAR_NOT_AVAILABLE then
            dbms_output.put_line('This Car Not Available For Ride For Given Date/Time !!! Choose Differnet Timeslot');
        when ex_TRANS_CANCELLED then
            dbms_output.put_line('Ride Cancelled Successfuly !!!');
        when ex_INVALID_CUSTOMER_CARD then
            dbms_output.put_line('Customer Card is not valid. Please check valid 16 digit card number !!!');
        when ex_INVALID_DISCOUNT_ID then
            dbms_output.put_line('Discount_ID is not valid. Please check !!!');
        when others then
            dbms_output.put_line('Update Failed !!! Something went wrong');

  END UPDATE_RIDE_TRANSACTION;

  PROCEDURE INSERT_PAYMENT(
        vPAY_ID IN PAYMENTS.PAY_ID%TYPE, 
        vPAY_DATE IN PAYMENTS.PAY_DATE%TYPE, 
        vCUSTOMER_CARD IN PAYMENTS.CUSTOMER_CARD%TYPE, 
        vSTATUS IN PAYMENTS.STATUS%TYPE, 
        vTRANS_ID IN PAYMENTS.TRANS_ID%TYPE, 
        vDISCOUNT_ID IN PAYMENTS.DISCOUNT_ID%TYPE
    ) AS

    -- TODO: Implementation required for PROCEDURE PCKG_TRANSACT.INSERT_PAYMENT
        DB_vRIDE_STATUS RIDE_TRANSACTION.STATUS%TYPE;   
        ex_INVALID_PAYMENT EXCEPTION;
        ex_RIDE_NOT_COMPLETED EXCEPTION;
            
    BEGIN
        
      
        IF PROCESS_PAYMENTS(vPAY_DATE, vCUSTOMER_CARD, vSTATUS, vTRANS_ID, vDISCOUNT_ID) = 'NO' THEN
            raise ex_INVALID_PAYMENT;
        END IF;
        
        begin
            select status into DB_vRIDE_STATUS from ride_transaction where trans_id = vTRANS_ID;
            IF DB_vRIDE_STATUS IS NOT NULL and DB_vRIDE_STATUS != 'COMPLETED' THEN
            raise ex_RIDE_NOT_COMPLETED;
        END IF;
            exception
            when no_data_found then
            raise ex_RIDE_NOT_COMPLETED;
            when others then
            raise ex_RIDE_NOT_COMPLETED;
        end; 
        
        INSERT INTO PAYMENTS VALUES(
            vPAY_ID,
            vPAY_DATE,
            vCUSTOMER_CARD,
            vSTATUS,
            vTRANS_ID,
            vDISCOUNT_ID);
        
        IF SQL%ROWCOUNT !=1 THEN
            dbms_output.put_line('Payment record is not inserted. Please retry with valid constraints !!!');
            ROLLBACK;
        ELSE
            -- change stataus of payment as complete
            UPDATE_PAYMENT(vPAY_ID);
        END IF;
        
    EXCEPTION
    
        when ex_INVALID_PAYMENT then
            dbms_output.put_line('Payment transaction has not completed. Please retry  !!!');
        when ex_RIDE_NOT_COMPLETED then
            dbms_output.put_line('Ride transaction has not completed. Cannot be initiated with payments  !!!');
        when others then
            dbms_output.put_line('Payment Failed !!!');

  END INSERT_PAYMENT;

  PROCEDURE UPDATE_PAYMENT(
        vPAY_ID IN PAYMENTS.PAY_ID%TYPE
    ) AS

    -- TODO: Implementation required for PROCEDURE PCKG_TRANSACT.UPDATE_PAYMENT
        ex_UPDATE_FAILED EXCEPTION;
    BEGIN
    
        UPDATE PAYMENTS SET STATUS = 'COMPLETED' WHERE PAY_ID = vPAY_ID;
        IF SQL%ROWCOUNT !=1 THEN
            ROLLBACK;
            raise ex_UPDATE_FAILED;
        ELSE        
            COMMIT;
            dbms_output.put_line('Payment transaction has been completed successfully !!!');
        END IF;
    EXCEPTION
        when ex_UPDATE_FAILED then
            dbms_output.put_line('Payment transaction has not completed. Please retry  !!!');
        when others then
            dbms_output.put_line('Payment Update Failed !!!');

  END UPDATE_PAYMENT;

  PROCEDURE INSERT_DISCOUNT(
        vDISCOUNT_ID IN DISCOUNTS.DISCOUNT_ID%TYPE, 
        vDESCRIPTION IN DISCOUNTS.DESCRIPTION%TYPE, 
        vPERCENTAGE IN DISCOUNTS.PERCENTAGE%TYPE 
    ) AS

    -- TODO: Implementation required for PROCEDURE PCKG_TRANSACT.INSERT_DISCOUNT
        ex_INVALID_DISCOUNT EXCEPTION;
        
    BEGIN
    
        IF PROCESS_DISCOUNTS(vDESCRIPTION, vPERCENTAGE) = 'NO' THEN
            RAISE ex_INVALID_DISCOUNT;
        END IF;
        
        INSERT INTO DISCOUNTS VALUES(
            vDISCOUNT_ID,
            vDESCRIPTION,
            vPERCENTAGE);
        
        IF SQL%ROWCOUNT !=1 THEN
            dbms_output.put_line('Discount record is not inserted. Please retry with valid constraints !!!');
            ROLLBACK;
        ELSE
            dbms_output.put_line('Discount record has been inserted successfully !!!');
            COMMIT;
        END IF;
        
    EXCEPTION
    
        when ex_INVALID_DISCOUNT then
            dbms_output.put_line('Discount record is not inserted. Please retry inserting the Discounts  !!!');
        when others then
            dbms_output.put_line('Discount Failed !!!');

  END INSERT_DISCOUNT;

  PROCEDURE UPDATE_DISCOUNT(
        vDISCOUNT_ID IN DISCOUNTS.DISCOUNT_ID%TYPE, 
        vDESCRIPTION IN DISCOUNTS.DESCRIPTION%TYPE, 
        vPERCENTAGE IN DISCOUNTS.PERCENTAGE%TYPE
    ) AS

    -- TODO: Implementation required for PROCEDURE PCKG_TRANSACT.UPDATE_DISCOUNT
         ex_INVALID_DISCOUNT EXCEPTION;
    
    BEGIN
    
        IF PROCESS_DISCOUNTS(vDESCRIPTION, vPERCENTAGE) = 'NO' THEN
            RAISE ex_INVALID_DISCOUNT;
        END IF;
    
        UPDATE DISCOUNTS 
        SET DESCRIPTION = vDESCRIPTION, PERCENTAGE =  vPERCENTAGE
        WHERE DISCOUNT_ID = vDISCOUNT_ID;
    
        IF SQL%ROWCOUNT !=1 THEN
            dbms_output.put_line('Discount record is not uodated. Please retry with valid constraints !!!');
            ROLLBACK;
        ELSE
            dbms_output.put_line('Discount record has been updated successfully !!!');
            COMMIT;
        END IF;
    
    EXCEPTION
    
        when ex_INVALID_DISCOUNT then
            dbms_output.put_line('Discount record is not updated. Please retry inserting the Discounts  !!!');
        when others then
            dbms_output.put_line('Discount record is not updated');
 
  END UPDATE_DISCOUNT;

END PCKG_TRANSACT;

/
--------------------------------------------------------
--  DDL for Package Body PCKG_UTILS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY PCKG_UTILS   AS

    FUNCTION CHECK_CAR_AT_PICKUP_EXISTS 
    (
      vCARS_ID IN NUMBER 
    ) RETURN NUMBER AS 
        DB_CAR_ID CARS_AT_PICKUP.CAR_ID%type;
    BEGIN
    
        select CAR_ID into DB_CAR_ID from CARS_AT_PICKUP where CAR_ID = vCARS_ID;
        if DB_CAR_ID IS NOT NULL then
            return DB_CAR_ID;
        end if;
    EXCEPTION
        when NO_DATA_FOUND then
             return 0;
        when others then
            RETURN 0;
    END CHECK_CAR_AT_PICKUP_EXISTS;

    FUNCTION CHECK_CAR_AT_PICKUP_ID_EXISTS 
    (
      vCARS_AT_PICKUP_ID IN NUMBER 
    ) RETURN NUMBER AS 
        DB_CARS_AT_PICKUP_ID CARS_AT_PICKUP.CARS_AT_PICKUP_ID%type;
    BEGIN
    
        select CARS_AT_PICKUP_ID into DB_CARS_AT_PICKUP_ID from CARS_AT_PICKUP where CARS_AT_PICKUP_ID = vCARS_AT_PICKUP_ID;
        if DB_CARS_AT_PICKUP_ID IS NOT NULL then
            return DB_CARS_AT_PICKUP_ID;
        end if;
    EXCEPTION
        when NO_DATA_FOUND then
             return 0;
        RETURN 0;
    END CHECK_CAR_AT_PICKUP_ID_EXISTS;
    
    
    FUNCTION CHECK_CAR_AVAILABILITY 
    (
        vCAR_ID IN CAR.CAR_ID%type,
        vSTART_TIME IN RIDE_TRANSACTION.START_TIME%type,
        vEND_TIME IN RIDE_TRANSACTION.END_TIME%type 
    ) RETURN NUMBER AS
        
        DB_CAR_ID CAR.CAR_ID%type;
        ex_INVALID_CAR EXCEPTION;
        DB_TRANS_ID RIDE_TRANSACTION.TRANS_ID%type;
    BEGIN
        
        if check_car_id_exists(vCAR_ID) = 0 then 
            raise ex_INVALID_CAR;
        end if;
        
        begin
            select TRANS_ID into DB_TRANS_ID 
            from RIDE_TRANSACTION 
            where ((START_TIME >= vSTART_TIME or END_TIME >= vSTART_TIME)   and 
            (START_TIME <= vEND_TIME or END_TIME <= vEND_TIME))  and 
            CAR_ID = vCAR_ID and STATUS in ('IN PROCESS', 'UPDATED');
            
            if DB_TRANS_ID IS NOT NULL then
                return DB_TRANS_ID;
            end if;
            
        exception
            when NO_DATA_FOUND then
                return 0;
            when TOO_MANY_ROWS then
                return 1;
            when others then
                dbms_output.put_line('Something went wrong while checking car availability!!!');
                return 1;
        end;
        
        return 0;
    EXCEPTION
    
        when ex_INVALID_CAR then
            dbms_output.put_line('Invalid Car!!! Car Do Not Exists');
            return 1;
        when others then
            dbms_output.put_line('Something went wrong while checking Car Availability!!!');
            RETURN 1;
    END CHECK_CAR_AVAILABILITY;
    
    
    FUNCTION CHECK_CAR_ID_EXISTS 
    (
      vCAR_ID IN NUMBER 
    ) RETURN NUMBER AS 
        DB_CAR_ID CAR.CAR_ID%type;
    BEGIN
    
        select CAR_ID into DB_CAR_ID from CAR where CAR_ID = vCAR_ID;
        if DB_CAR_ID IS NOT NULL then
            return DB_CAR_ID;
        end if;
    EXCEPTION
        when NO_DATA_FOUND then
             return 0;
        RETURN 0;
    END CHECK_CAR_ID_EXISTS;
    

    FUNCTION CHECK_CUSTOMER_ID_EXISTS 
    (
      vCUST_ID IN CUSTOMERS.CUSTOMER_ID%type 
    ) RETURN NUMBER AS
    
        DB_CUSTOMER_ID CUSTOMERS.CUSTOMER_ID%type;
    BEGIN
    
        select CUSTOMER_ID into DB_CUSTOMER_ID from CUSTOMERS where CUSTOMER_ID = vCUST_ID;
        if DB_CUSTOMER_ID IS NOT NULL then
            return DB_CUSTOMER_ID;
        end if;
    EXCEPTION
        when NO_DATA_FOUND then
             return 0;
        RETURN 0;
    END CHECK_CUSTOMER_ID_EXISTS;
    
    
    FUNCTION CHECK_PASSSPORT_EXISTS 
    (
      vPASSPORT_NO IN CUSTOMERS.PASSPORT_NUMBER%type
    ) RETURN VARCHAR2 AS 
    
        DB_PASSPORT_NO CUSTOMERS.PASSPORT_NUMBER%type;
    BEGIN
    
        select PASSPORT_NUMBER into DB_PASSPORT_NO from CUSTOMERS where PASSPORT_NUMBER = vPASSPORT_NO;
        if DB_PASSPORT_NO IS NOT NULL then
            return DB_PASSPORT_NO;
        end if;
    EXCEPTION
        when NO_DATA_FOUND then
            return '0';
        when others then
            RETURN '0';
    END CHECK_PASSSPORT_EXISTS;
    
    
    FUNCTION CHECK_PICKUP_POINT_EXISTS 
    (
      vPICKUP_POINT_ID IN NUMBER 
    ) RETURN NUMBER AS 
        DB_PICKUP_POINT_ID PICKUP_POINTS.PICKUP_POINT_ID%type;
    BEGIN
    
        select PICKUP_POINT_ID into DB_PICKUP_POINT_ID from PICKUP_POINTS where PICKUP_POINT_ID = vPICKUP_POINT_ID;
        if DB_PICKUP_POINT_ID IS NOT NULL then
            return DB_PICKUP_POINT_ID;
        end if;
    EXCEPTION
        when NO_DATA_FOUND then
             return 0;
        RETURN 0;
    END CHECK_PICKUP_POINT_EXISTS;
    
    
    FUNCTION CHECK_TRANS_ID_EXISTS 
    (
      vTRANS_ID IN NUMBER 
    ) RETURN NUMBER AS 
        DB_TRANS_ID RIDE_TRANSACTION.TRANS_ID%type;
    BEGIN
    
        select TRANS_ID into DB_TRANS_ID from RIDE_TRANSACTION where TRANS_ID = vTRANS_ID;
        if DB_TRANS_ID IS NOT NULL then
            return DB_TRANS_ID;
        end if;
        
    EXCEPTION
        when NO_DATA_FOUND then
             return 0;
        when others then
            RETURN 0;
            
        RETURN 0;
        
    END CHECK_TRANS_ID_EXISTS;
    
  PROCEDURE SHOW_ALL_AVAILABLE_CARS(
        vSTART_TIME IN RIDE_TRANSACTION.START_TIME%type,
        vEND_TIME IN RIDE_TRANSACTION.END_TIME%type
    ) AS
    
    CURSOR CAR_LIST IS SELECT CAR_ID FROM CAR;
    TYPE CARS IS VARRAY(20500) OF CUSTOMERS.CUSTOMER_ID%TYPE;
    AVAILABLE_CARS_ARR CARS := CARS();
    CAR_INDEX NUMBER := 1;
    
    DB_CARID CAR.CAR_ID%type;
    DB_MAKE CAR.CAR_MAKE%type;
    DB_MODEL CAR.MODEL%type;
    DB_TYPE CAR.CAR_TYPE%type;
    DB_RATE CAR.RATE_PER_HR%type;
    DB_CAR_NUM CAR.CAR_NUMBER%type;
    DB_SEATS CAR.MAX_PERSON%type;
    
    ex_No_CARS_AVAILABLE EXCEPTION;
  BEGIN
    -- TODO: Implementation required for PROCEDURE PCKG_UTILS.SHOW_ALL_AVAILABLE_CARS
    FOR i IN CAR_LIST LOOP
        AVAILABLE_CARS_ARR.EXTEND;
        if pckg_utils.check_car_availability(i.CAR_ID,vSTART_TIME,vEND_TIME) = 0 then
            AVAILABLE_CARS_ARR(CAR_INDEX) := i.CAR_ID;
            CAR_INDEX := CAR_INDEX +1;
        end if;
    END LOOP;
    
    dbms_output.put_line('Car Id     Make           Model           Type        Rate Per Hr     Reg. Number      Seats Capacity');
    FOR i in AVAILABLE_CARS_ARR.FIRST .. AVAILABLE_CARS_ARR.LAST LOOP
        select CAR_ID, CAR_MAKE, MODEL, CAR_TYPE, 
        RATE_PER_HR, CAR_NUMBER, MAX_PERSON INTO
        DB_CARID, DB_MAKE, DB_MODEL, DB_TYPE, DB_RATE, DB_CAR_NUM, DB_SEATS
        from CAR WHERE CAR_ID = AVAILABLE_CARS_ARR(i);
        
        dbms_output.put_line(DB_CARID||'      '||DB_MAKE||'         '||DB_MODEL||'             '||DB_TYPE||'           '||DB_RATE||'        '||DB_CAR_NUM||'            '||DB_SEATS);
        
    END LOOP;
   
   EXCEPTION
    when NO_DATA_FOUND then
        dbms_output.put_line('No Car Available...');
    when others then
        dbms_output.put_line('Invalid Operation '|| SQLERRM);
        
  END SHOW_ALL_AVAILABLE_CARS;


  PROCEDURE GET_CAR(
        vCAR_ID IN CAR.CAR_ID%type
    ) AS
    
    DB_CARS_AT_PICKUP_ID CARS_AT_PICKUP.CARS_AT_PICKUP_ID%type;
    DB_PICKUP_POINT_ID PICKUP_POINTS.PICKUP_POINT_ID%type;
    DB_NAME PICKUP_POINTS.name%type;
    DB_CITY PICKUP_POINTS.city%type;
    DB_ZIP PICKUP_POINTS.zip%type;
    DB_STATE PICKUP_POINTS.STATE%type;

  BEGIN
    -- TODO: Implementation required for PROCEDURE PCKG_UTILS.GET_CAR
        dbms_output.put_line('Cars At Pickup Id       Pickup Point Id     Name          City           Zip          State');
        
        select cars_at_pickup_id, p.PICKUP_POINT_ID, NAME, CITY, ZIP, STATE INTO
        DB_CARS_AT_PICKUP_ID, DB_PICKUP_POINT_ID, DB_NAME, DB_CITY, DB_ZIP, DB_STATE
        from pickup_points,
        (
            select cars_at_pickup_id, pickup_point_id, car_id  from cars_at_pickup
        ) p
        where p.car_id = vCAR_ID and
        pickup_points.pickup_point_id=p.pickup_point_id;
        
        dbms_output.put_line(DB_CARS_AT_PICKUP_ID||'                       '||DB_PICKUP_POINT_ID||'             '||
        DB_NAME||'       '||DB_CITY||'       '||DB_ZIP||'       '||DB_STATE);
  END GET_CAR;

    FUNCTION CHECK_ADDRESS_ID_EXISTS(
        vADDRESS_ID IN CUSTOMER_ADDRESS.ADDRESS_ID%type  
    ) RETURN NUMBER AS
        DB_ADDRESS_ID CUSTOMER_ADDRESS.ADDRESS_ID%type;
    BEGIN
        select ADDRESS_ID into DB_ADDRESS_ID from CUSTOMER_ADDRESS where ADDRESS_ID = vADDRESS_ID;
        if DB_ADDRESS_ID IS NOT NULL then
            return DB_ADDRESS_ID;
        end if;
    EXCEPTION
        when NO_DATA_FOUND then
             return 0;
        when others then
            RETURN 0;
    END CHECK_ADDRESS_ID_EXISTS;

END PCKG_UTILS;

/
--------------------------------------------------------
--  DDL for Package Body PCKG_VIOLATIONS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY PCKG_VIOLATIONS   AS

FUNCTION PROCESS_VIOLATION 
(
  vDESCRIPTION IN violations.DESCRIPTION%type 
) RETURN VARCHAR2 AS 

    ex_INVALID_DESCRIPTION EXCEPTION;
BEGIN
    if (length(trim(vDESCRIPTION)) IS NULL) then
        raise ex_INVALID_DESCRIPTION;
    end if;
    RETURN 'YES';
EXCEPTION
    when ex_INVALID_DESCRIPTION then
        RETURN 'NO';
    when others then
        RETURN 'NO';
END PROCESS_VIOLATION;

PROCEDURE INSERT_VIOLATIONS 
(
  vVIOLATION_ID IN VIOLATIONS.VIOLATION_ID%type 
, vDESCRIPTION IN VIOLATIONS.DESCRIPTION%type 
) AS 
    
    ex_INVALID_DESCRIPTION EXCEPTION;
    ex_FAILURE EXCEPTION;
BEGIN
    if  PROCESS_VIOLATION(trim(vDESCRIPTION)) = 'NO' then
        raise ex_INVALID_DESCRIPTION;
    end if;
    
    insert into VIOLATIONS values (
        vVIOLATION_ID,
        vDESCRIPTION
    );
    
    if SQL%ROWCOUNT != 1 then
        rollback;
        raise ex_FAILURE;
    else 
        dbms_output.put_line('Violation Record Inserted Successfully !!!');
    end if;
    
    commit;
EXCEPTION
    when ex_INVALID_DESCRIPTION then
        dbms_output.put_line('Invalid Description!!! Description cannot be Empty or Null');
    when ex_FAILURE then
        dbms_output.put_line('Violations Record Could Not Be Inserted !!!');
END INSERT_VIOLATIONS;

PROCEDURE UPDATE_VIOLATIONS 
(
   vVIOLATION_ID IN VIOLATIONS.VIOLATION_ID%type,
   vDESCRIPTION IN VIOLATIONS.DESCRIPTION%type 
) AS 
        ex_INVALID_DESCRIPTION EXCEPTION;
BEGIN
      if  PROCESS_VIOLATION(trim(vDESCRIPTION)) = 'NO' then
        raise ex_INVALID_DESCRIPTION;
    end if;
    
    UPDATE VIOLATIONS SET DESCRIPTION = vDESCRIPTION WHERE VIOLATION_ID = vVIOLATION_ID;
    
    IF SQL%ROWCOUNT !=1 THEN
        dbms_output.put_line('Record not been updated. Please try again !!!');
        rollback;
    ELSE
        dbms_output.put_line('Record has Updated successfully !!!');
        commit;
    END IF;

EXCEPTION

    WHEN ex_INVALID_DESCRIPTION THEN
        dbms_output.put_line('Violations Update failed. Please try again with valid constraints !!!');
    when others then
        dbms_output.put_line('Invalid Operation !!!' || SQLERRM);
    
END UPDATE_VIOLATIONS;

PROCEDURE INSERT_VIOLATIONS_RECORD 
(
  vRECORD_ID IN VIOLATIONS_RECORDS.RECORD_ID%type,
  vCUSTOMER_ID IN CUSTOMERS.CUSTOMER_ID%type,
  vVIOLATION_ID IN VIOLATIONS.VIOLATION_ID%type
) AS

    ex_NO_CUSTOMER_FOUND EXCEPTION;
    ex_NO_VIOLATION_FOUND EXCEPTION;
    ex_FAILURE EXCEPTION;
    db_CUSTOMER_ID CUSTOMERS.CUSTOMER_ID%type;
    db_VIOLATION_ID VIOLATIONS.VIOLATION_ID%type;
BEGIN
    
    begin
        select CUSTOMER_ID into db_CUSTOMER_ID from CUSTOMERS where CUSTOMER_ID = vCUSTOMER_ID;
        if db_CUSTOMER_ID is NULL then
             raise NO_DATA_FOUND;
        end if;
    exception
        when NO_DATA_FOUND then
            raise ex_NO_CUSTOMER_FOUND;
    end;
    
    begin
        select VIOLATION_ID into db_VIOLATION_ID from VIOLATIONS where VIOLATION_ID = vVIOLATION_ID;
        if db_VIOLATION_ID is NULL then
             raise NO_DATA_FOUND;
        end if;
    exception
        when NO_DATA_FOUND then
            raise ex_NO_VIOLATION_FOUND;
    end;
    
    insert into VIOLATIONS_RECORDS values(
        vRECORD_ID,
        sysdate,
        vCUSTOMER_ID,
        vVIOLATION_ID
    );
    
    if SQL%ROWCOUNT != 1 then
        rollback;
        raise ex_FAILURE;
    else 
        dbms_output.put_line('Violations Data Inserted Successfully !!!');
    end if;
    
EXCEPTION

    when ex_NO_CUSTOMER_FOUND then
        dbms_output.put_line('No Customer Id Found To Insert Violation Record!!!');
    when ex_NO_VIOLATION_FOUND then
        dbms_output.put_line('No Violation Id Found To Insert Violation Record!!!');
    when ex_FAILURE then
        dbms_output.put_line('Violations Data Inserted Successfully !!!');

END INSERT_VIOLATIONS_RECORD;

END PCKG_VIOLATIONS;

/
--------------------------------------------------------
--  Constraints for Table MAINTENANCE
--------------------------------------------------------

  ALTER TABLE MAINTENANCE   MODIFY (  PURCHASE_INSURANCE_ID   CONSTRAINT PURCHASE_INSURANCE_ID_NOT_NULL   NOT NULL ENABLE);
  ALTER TABLE MAINTENANCE   ADD CONSTRAINT MAINTENANCE_PK   PRIMARY KEY (  MAINTENANCE_ID  )
  USING INDEX  ENABLE;
  ALTER TABLE MAINTENANCE   MODIFY (  MAINTENANCE_DATE   CONSTRAINT MAINTENANCE_DATE_NOT_NULL   NOT NULL ENABLE);
  ALTER TABLE MAINTENANCE   MODIFY (  MAINTENANCE_COST   CONSTRAINT MAINTENANCE_COST_NOT_NULL   NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SUPPORT
--------------------------------------------------------

  ALTER TABLE SUPPORT   MODIFY (  TRANS_ID   CONSTRAINT TRANS_ID_NOT_NULL   NOT NULL ENABLE);
  ALTER TABLE SUPPORT   ADD CONSTRAINT SUPPORT_PK   PRIMARY KEY (  SUPPORT_ID  )
  USING INDEX  ENABLE;
  ALTER TABLE SUPPORT   ADD CONSTRAINT STATUS_CHECK   CHECK (status in ('IN PROGRESS', 'COMPLETED', 'PENDING')) ENABLE;
  ALTER TABLE SUPPORT   MODIFY (  CUSTOMER_ID   CONSTRAINT CUSTOMER_ID_NOT_NULL1   NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FEEDBACK
--------------------------------------------------------

  ALTER TABLE FEEDBACK   MODIFY (  TRANS_ID   CONSTRAINT TRANS_ID_NOT_NULL3   NOT NULL ENABLE);
  ALTER TABLE FEEDBACK   ADD CONSTRAINT FEEDBACK_PK   PRIMARY KEY (  FEEDBACK_ID  )
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table INSURANCE
--------------------------------------------------------

  ALTER TABLE INSURANCE   ADD CONSTRAINT INSURANCE_PK   PRIMARY KEY (  INSURANCE_ID  )
  USING INDEX  ENABLE;
  ALTER TABLE INSURANCE   MODIFY (  INSURANCE_COST   CONSTRAINT INSURANCE_COST_NOT_NULL   NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PICKUP_POINTS
--------------------------------------------------------

  ALTER TABLE PICKUP_POINTS   ADD CONSTRAINT PICKUP_POINTS_PK   PRIMARY KEY (  PICKUP_POINT_ID  )
  USING INDEX  ENABLE;
  ALTER TABLE PICKUP_POINTS   MODIFY (  STATE   CONSTRAINT STATE_NOT_NULL   NOT NULL ENABLE);
  ALTER TABLE PICKUP_POINTS   MODIFY (  CITY   CONSTRAINT CITY_NOT_NULL1   NOT NULL ENABLE);
  ALTER TABLE PICKUP_POINTS   MODIFY (  ZIP   CONSTRAINT ZIP_NOT_NULL   NOT NULL ENABLE);
  ALTER TABLE PICKUP_POINTS   MODIFY (  NAME   CONSTRAINT NAME_NOT_NULL   NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CUSTOMER_ADDRESS
--------------------------------------------------------

  ALTER TABLE CUSTOMER_ADDRESS   MODIFY (  CUSTOMER_ID   CONSTRAINT CUSTOMER_ID_NOT_NULL2   NOT NULL ENABLE);
  ALTER TABLE CUSTOMER_ADDRESS   ADD CONSTRAINT CUSTOMER_ADDRESS_PK   PRIMARY KEY (  ADDRESS_ID  )
  USING INDEX  ENABLE;
  ALTER TABLE CUSTOMER_ADDRESS   MODIFY (  ADDRESS_LINE1   CONSTRAINT ADDRESS_LINE1_NOT_NULL   NOT NULL ENABLE);
  ALTER TABLE CUSTOMER_ADDRESS   MODIFY (  CITY_STATE   CONSTRAINT CITY_STATE_NOT_NULL   NOT NULL ENABLE);
  ALTER TABLE CUSTOMER_ADDRESS   MODIFY (  CITY   CONSTRAINT CITY_NOT_NULL   NOT NULL ENABLE);
  ALTER TABLE CUSTOMER_ADDRESS   MODIFY (  ZIP_CODE   CONSTRAINT ZIP_CODE_NOT_NULL   NOT NULL ENABLE);
  ALTER TABLE CUSTOMER_ADDRESS   ADD CONSTRAINT ADDRESS_TYPE_CHECK   CHECK (ADDRESS_TYPE in ('HOME', 'OFFICE', 'OTHER')) ENABLE;
--------------------------------------------------------
--  Constraints for Table PAYMENTS
--------------------------------------------------------

  ALTER TABLE PAYMENTS   ADD CONSTRAINT PAYMENTS_PK   PRIMARY KEY (  PAY_ID  )
  USING INDEX  ENABLE;
  ALTER TABLE PAYMENTS   MODIFY (  CUSTOMER_CARD   CONSTRAINT CUSTOMER_CARD_NOT_NULL   NOT NULL ENABLE);
  ALTER TABLE PAYMENTS   MODIFY (  TRANS_ID   CONSTRAINT TRANS_ID_NOT_NULL2   NOT NULL ENABLE);
  ALTER TABLE PAYMENTS   ADD CONSTRAINT STATUS_CHECK1   CHECK (status in ('IN PROCESS', 'COMPLETED', 'PENDING')) ENABLE;
--------------------------------------------------------
--  Constraints for Table DISCOUNTS
--------------------------------------------------------

  ALTER TABLE DISCOUNTS   ADD CONSTRAINT DISCOUNTS_PK   PRIMARY KEY (  DISCOUNT_ID  )
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table CAR
--------------------------------------------------------

  ALTER TABLE CAR   ADD CONSTRAINT CAR_PK   PRIMARY KEY (  CAR_ID  )
  USING INDEX  ENABLE;
  ALTER TABLE CAR   ADD CONSTRAINT CAR_NUMBER_UN   UNIQUE (  CAR_NUMBER  )
  USING INDEX  ENABLE;
  ALTER TABLE CAR   MODIFY (  CAR_TYPE   CONSTRAINT CAR_TYPE_NOT_NULL   NOT NULL ENABLE);
  ALTER TABLE CAR   MODIFY (  MODEL   CONSTRAINT MODEL_NOT_NULL   NOT NULL ENABLE);
  ALTER TABLE CAR   MODIFY (  CAR_MAKE   CONSTRAINT CAR_MAKE_NOT_NULL   NOT NULL ENABLE);
  ALTER TABLE CAR   MODIFY (  CAR_NUMBER   CONSTRAINT CAR_NUMBER_NOT_NULL   NOT NULL ENABLE);
  ALTER TABLE CAR   MODIFY (  RATE_PER_HR   NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table VIOLATIONS_RECORDS
--------------------------------------------------------

  ALTER TABLE VIOLATIONS_RECORDS   ADD CONSTRAINT VIOLATIONS_RECORDS_PK   PRIMARY KEY (  RECORD_ID  )
  USING INDEX  ENABLE;
  ALTER TABLE VIOLATIONS_RECORDS   MODIFY (  VIOLATION_ID   CONSTRAINT VIOLATION_ID_NOT_NULL   NOT NULL ENABLE);
  ALTER TABLE VIOLATIONS_RECORDS   MODIFY (  RECORD_DATE   CONSTRAINT RECORD_DATE_NOT_NULL   NOT NULL ENABLE);
  ALTER TABLE VIOLATIONS_RECORDS   MODIFY (  CUSTOMER_ID   CONSTRAINT CUSTOMER_ID_NOT_NULL   NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ACTIVITY
--------------------------------------------------------

  ALTER TABLE ACTIVITY   ADD CONSTRAINT ACTIVITY_PK   PRIMARY KEY (  ACTIVITY_ID  )
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table CUSTOMERS
--------------------------------------------------------

  ALTER TABLE CUSTOMERS   MODIFY (  FIRST_NAME   CONSTRAINT FIRST_NAME_NOT_NULL   NOT NULL ENABLE);
  ALTER TABLE CUSTOMERS   ADD CONSTRAINT CUSTOMERS_PK   PRIMARY KEY (  CUSTOMER_ID  )
  USING INDEX  ENABLE;
  ALTER TABLE CUSTOMERS   MODIFY (  EMAIL_ID   CONSTRAINT EMAIL_ID_NOT_NULL   NOT NULL ENABLE);
  ALTER TABLE CUSTOMERS   MODIFY (  CONTACT   CONSTRAINT CONTACT_NOT_NULL   NOT NULL ENABLE);
  ALTER TABLE CUSTOMERS   MODIFY (  LICENSE_NUMBER   CONSTRAINT LICENSE_NUMBER_NOT_NULL   NOT NULL ENABLE);
  ALTER TABLE CUSTOMERS   MODIFY (  PASSPORT_NUMBER   CONSTRAINT PASSPORT_NUMBER_NOT_NULL   NOT NULL ENABLE);
  ALTER TABLE CUSTOMERS   ADD CONSTRAINT CUSTOMERS_EMAIL_ID_UN   UNIQUE (  EMAIL_ID  )
  USING INDEX  ENABLE;
  ALTER TABLE CUSTOMERS   ADD CONSTRAINT CUSTOMERS_CONTACT_UN   UNIQUE (  CONTACT  )
  USING INDEX  ENABLE;
  ALTER TABLE CUSTOMERS   ADD CONSTRAINT CUSTOMERS_LICENSE_NUMBER_UN   UNIQUE (  LICENSE_NUMBER  )
  USING INDEX  ENABLE;
  ALTER TABLE CUSTOMERS   ADD CONSTRAINT CUSTOMERS_PASSPORT_NUMBER_UN   UNIQUE (  PASSPORT_NUMBER  )
  USING INDEX  ENABLE;
  ALTER TABLE CUSTOMERS   ADD CONSTRAINT CUSTOMER_TYPE_CHECK   CHECK (customer_type in ('STUDENT','EMPLOYEE','OTHERS')) ENABLE;
--------------------------------------------------------
--  Constraints for Table VIOLATIONS
--------------------------------------------------------

  ALTER TABLE VIOLATIONS   MODIFY (  DESCRIPTION   CONSTRAINT DESCRIPTION_NOT_NULL   NOT NULL ENABLE);
  ALTER TABLE VIOLATIONS   ADD CONSTRAINT VIOLATIONS_PK   PRIMARY KEY (  VIOLATION_ID  )
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table CARS_AT_PICKUP
--------------------------------------------------------

  ALTER TABLE CARS_AT_PICKUP   ADD CONSTRAINT CARS_AT_PICKUP_PK   PRIMARY KEY (  CARS_AT_PICKUP_ID  )
  USING INDEX  ENABLE;
  ALTER TABLE CARS_AT_PICKUP   MODIFY (  PICKUP_POINT_ID   CONSTRAINT PICKUP_POINT_ID_NOT_NULL   NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table AUDIT_DATA
--------------------------------------------------------

  ALTER TABLE AUDIT_DATA   MODIFY (  AUDIT_DATE   NOT NULL ENABLE);
  ALTER TABLE AUDIT_DATA   MODIFY (  ACTION   NOT NULL ENABLE);
  ALTER TABLE AUDIT_DATA   ADD PRIMARY KEY (  AUDIT_ID  )
  USING INDEX  ENABLE;
  ALTER TABLE AUDIT_DATA   MODIFY (  USERNAME   NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table RIDE_TRANSACTION
--------------------------------------------------------

  ALTER TABLE RIDE_TRANSACTION   MODIFY (  CARS_AT_PICKUP_ID   CONSTRAINT CARS_AT_PICKUP_ID_NOT_NULL   NOT NULL ENABLE);
  ALTER TABLE RIDE_TRANSACTION   MODIFY (  END_TIME   CONSTRAINT END_TIME_NOT_NULL   NOT NULL ENABLE);
  ALTER TABLE RIDE_TRANSACTION   MODIFY (  CUSTOMER_ID   CONSTRAINT CUSTOMER_ID_NOT_NULL3   NOT NULL ENABLE);
  ALTER TABLE RIDE_TRANSACTION   ADD CONSTRAINT RIDE_TRANSACTION_PK   PRIMARY KEY (  TRANS_ID  )
  USING INDEX  ENABLE;
  ALTER TABLE RIDE_TRANSACTION   MODIFY (  STATUS   CONSTRAINT STATUS_NOT_NULL   NOT NULL ENABLE);
  ALTER TABLE RIDE_TRANSACTION   MODIFY (  START_TIME   CONSTRAINT START_TIME_NOT_NULL   NOT NULL ENABLE);
  ALTER TABLE RIDE_TRANSACTION   ADD CONSTRAINT STATUS_CHECK2   CHECK (STATUS in ('IN PROCESS', 'COMPLETED', 'CANCELLED', 'UPDATED')) ENABLE;
--------------------------------------------------------
--  Constraints for Table PURCHASE_INSURANCE
--------------------------------------------------------

  ALTER TABLE PURCHASE_INSURANCE   ADD CONSTRAINT PURCHASE_INSURANCE_PK   PRIMARY KEY (  PURCHASE_INSURANCE_ID  )
  USING INDEX  ENABLE;
  ALTER TABLE PURCHASE_INSURANCE   MODIFY (  EXPIRY_DATE   CONSTRAINT EXPIRY_DATE_NOT_NULL   NOT NULL ENABLE);
  ALTER TABLE PURCHASE_INSURANCE   MODIFY (  INSURANCE_ID   CONSTRAINT INSURANCE_ID_NOT_NULL   NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table ACTIVITY
--------------------------------------------------------

  ALTER TABLE ACTIVITY   ADD CONSTRAINT CUSTOMER_ID_FK1   FOREIGN KEY (  CUSTOMER_ID  )
	  REFERENCES CUSTOMERS   (  CUSTOMER_ID  ) ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CARS_AT_PICKUP
--------------------------------------------------------

  ALTER TABLE CARS_AT_PICKUP   ADD CONSTRAINT PICKUP_POINT_ID_FK1   FOREIGN KEY (  PICKUP_POINT_ID  )
	  REFERENCES PICKUP_POINTS   (  PICKUP_POINT_ID  ) ENABLE;
  ALTER TABLE CARS_AT_PICKUP   ADD CONSTRAINT CAR_ID_FK4   FOREIGN KEY (  CAR_ID  )
	  REFERENCES CAR   (  CAR_ID  ) ON DELETE SET NULL ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CUSTOMER_ADDRESS
--------------------------------------------------------

  ALTER TABLE CUSTOMER_ADDRESS   ADD CONSTRAINT CUSTOMER_ID_FK4   FOREIGN KEY (  CUSTOMER_ID  )
	  REFERENCES CUSTOMERS   (  CUSTOMER_ID  ) ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table FEEDBACK
--------------------------------------------------------

  ALTER TABLE FEEDBACK   ADD CONSTRAINT TRANS_ID_FK3   FOREIGN KEY (  TRANS_ID  )
	  REFERENCES RIDE_TRANSACTION   (  TRANS_ID  ) ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MAINTENANCE
--------------------------------------------------------

  ALTER TABLE MAINTENANCE   ADD CONSTRAINT PURCHASE_INSUARANCE_ID_FK1   FOREIGN KEY (  PURCHASE_INSURANCE_ID  )
	  REFERENCES PURCHASE_INSURANCE   (  PURCHASE_INSURANCE_ID  ) ENABLE;
  ALTER TABLE MAINTENANCE   ADD CONSTRAINT CAR_ID_FK2   FOREIGN KEY (  CAR_ID  )
	  REFERENCES CAR   (  CAR_ID  ) ON DELETE SET NULL ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PAYMENTS
--------------------------------------------------------

  ALTER TABLE PAYMENTS   ADD CONSTRAINT TRANS_ID_FK2   FOREIGN KEY (  TRANS_ID  )
	  REFERENCES RIDE_TRANSACTION   (  TRANS_ID  ) ENABLE;
  ALTER TABLE PAYMENTS   ADD CONSTRAINT DISCOUNT_ID_FK1   FOREIGN KEY (  DISCOUNT_ID  )
	  REFERENCES DISCOUNTS   (  DISCOUNT_ID  ) ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PURCHASE_INSURANCE
--------------------------------------------------------

  ALTER TABLE PURCHASE_INSURANCE   ADD CONSTRAINT INSURANCE_ID_FK1   FOREIGN KEY (  INSURANCE_ID  )
	  REFERENCES INSURANCE   (  INSURANCE_ID  ) ENABLE;
  ALTER TABLE PURCHASE_INSURANCE   ADD CONSTRAINT CAR_ID_FK3   FOREIGN KEY (  CAR_ID  )
	  REFERENCES CAR   (  CAR_ID  ) ON DELETE SET NULL ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RIDE_TRANSACTION
--------------------------------------------------------

  ALTER TABLE RIDE_TRANSACTION   ADD CONSTRAINT CARS_AT_PICKUP_ID_FK1   FOREIGN KEY (  CARS_AT_PICKUP_ID  )
	  REFERENCES CARS_AT_PICKUP   (  CARS_AT_PICKUP_ID  ) ENABLE;
  ALTER TABLE RIDE_TRANSACTION   ADD CONSTRAINT CUSTOMER_ID_FK5   FOREIGN KEY (  CUSTOMER_ID  )
	  REFERENCES CUSTOMERS   (  CUSTOMER_ID  ) ON DELETE SET NULL ENABLE;
  ALTER TABLE RIDE_TRANSACTION   ADD CONSTRAINT CAR_ID_FK1   FOREIGN KEY (  CAR_ID  )
	  REFERENCES CAR   (  CAR_ID  ) ON DELETE SET NULL ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SUPPORT
--------------------------------------------------------

  ALTER TABLE SUPPORT   ADD CONSTRAINT TRANS_ID_FK1   FOREIGN KEY (  TRANS_ID  )
	  REFERENCES RIDE_TRANSACTION   (  TRANS_ID  ) ENABLE;
  ALTER TABLE SUPPORT   ADD CONSTRAINT CUSTOMER_ID_FK3   FOREIGN KEY (  CUSTOMER_ID  )
	  REFERENCES CUSTOMERS   (  CUSTOMER_ID  ) ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table VIOLATIONS_RECORDS
--------------------------------------------------------

  ALTER TABLE VIOLATIONS_RECORDS   ADD CONSTRAINT VIOLATION_ID_FK   FOREIGN KEY (  VIOLATION_ID  )
	  REFERENCES VIOLATIONS   (  VIOLATION_ID  ) ENABLE;
  ALTER TABLE VIOLATIONS_RECORDS   ADD CONSTRAINT CUSTOMER_ID_FK2   FOREIGN KEY (  CUSTOMER_ID  )
	  REFERENCES CUSTOMERS   (  CUSTOMER_ID  ) ON DELETE CASCADE ENABLE;
