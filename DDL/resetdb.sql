/*
select user from dual;
select * from customers;

select * from analyst_view;

select * from support_view;

select * from audit_view;

select 'drop table ', table_name, 'cascade constraints;' from user_tables;
*/
-------------------------------------------
-- Dropping Users
--------------------------------------------
drop user harry;
drop user tom;
drop user root;
drop user jessy;
drop user peter;
drop user jarvis;

---------------------------------------------
-- Dropping Roles
---------------------------------------------

drop role analyst;
drop role developer;
drop role tester;
drop role service;
drop role security;
drop role app_owner;

---------------------------------------------
--  Dropping Views
---------------------------------------------

drop view analyst_view;
drop view audit_view;
drop view car_bookings_by_distance;
drop view feedback_report;
drop view inactive_customers;
drop view payment_bill;
drop view prevalent_car_types;
drop view support_view;
drop view usage_pattern;
drop view revenue_2021_per_quarter;
----------------------------------------------
-- Drooping Packages
----------------------------------------------

drop package pckg_car;

drop package pckg_customer;

drop package pckg_insurance;

drop package pckg_service;

drop package pckg_transact;

drop package pckg_violations;

drop package pckg_utils;


----------------------------------------------
-- Dropping Triggers
----------------------------------------------

drop trigger ride_trans_trigg;

----------------------------------------------
-- Dropping Sequence
----------------------------------------------

drop sequence activity_id_Seq;
drop sequence address_id_seq;
drop sequence audit_id_seq;
drop sequence car_id_seq;
drop sequence cars_at_pickup_id_seq;
drop sequence cust_id_seq;
drop sequence discount_id_seq;
drop sequence feedback_id_seq;
drop sequence insurance_id_seq;
drop sequence maintenance_id_seq;
drop sequence pay_id_seq;
drop sequence pickup_point_id_seq;
drop sequence purchase_insurance_id_seq;
drop sequence record_id_seq;
drop sequence support_id_seq;
drop sequence trans_id_seq;
drop sequence violation_id_seq;

---------------------------------------------
-- Drop Index
---------------------------------------------
drop index CARS_AT_PICKUP_INDEX;
drop index RIDE_TRANSACTION_INDEX;

----------------------------------------------
-- Dropping Tables
----------------------------------------------
drop table 	ACTIVITY	cascade constraints;
drop table 	CAR	cascade constraints;
drop table 	CARS_AT_PICKUP	cascade constraints;
drop table 	CUSTOMERS	cascade constraints;
drop table 	CUSTOMER_ADDRESS	cascade constraints;
drop table 	DISCOUNTS	cascade constraints;
drop table 	FEEDBACK	cascade constraints;
drop table 	INSURANCE	cascade constraints;
drop table 	MAINTENANCE	cascade constraints;
drop table 	PAYMENTS	cascade constraints;
drop table 	PICKUP_POINTS	cascade constraints;
drop table 	PURCHASE_INSURANCE	cascade constraints;
drop table 	RIDE_TRANSACTION	cascade constraints;
drop table 	SUPPORT	cascade constraints;
drop table 	VIOLATIONS	cascade constraints;
drop table 	VIOLATIONS_RECORDS	cascade constraints;
drop table 	AUDIT_DATA	cascade constraints;

