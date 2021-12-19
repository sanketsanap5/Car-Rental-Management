-- DML OPERATIONS USING SEQUENCE

SET SERVEROUTPUT ON;

BEGIN
    --INSERT CUSTOMER
    --customer_id, first_name, last_name, email, contact, license, passport,cust type, DOB
    --pckg_customer.insert_customer(cust_id_seq.nextval,'Beemla','Nayak','beemla.n@northeastern.edu',5671187098,'AXCRB542','PLMHGMN678','EMPLOYEE','01-JUL-1997');
    
    --UPDATE CUSTOMER
    --pckg_customer.update_customers(cust_id_seq.currval,'Beemla','Nayak','beemla.n@gmail.com',5671187098,'AXCRB542','PLMHGMN678','EMPLOYEE','01-JUL-1997');
    
    
    
    --INSERT CUSTOMER ADDRESS
    --address id, line1, line2, state, city, cust_id, zip, addr type
    --pckg_customer.insert_customer_address(address_id_seq.nextval,'ANDREW COLONY',NULL,'ARIZONA','TEMPE',cust_id_seq.currval, '12561','HOME');
    
    --UPADTE CUSTOMER ADDRESS
    --pckg_customer.update_customer_address(address_id_seq.currval,'HENNY PARK VIEW','APT NO 34','TEXAS','DALLAS',cust_id_seq.currval,'34579','HOME');
    
    
    
    --INSERT ACTIVITY activity id, login time, logout time, cust id
      --pckg_customer.insert_activity(activity_id_seq.nextval, sysdate, sysdate+1/24, cust_id_seq.currval);
    
    
    
    --INSERT CAR car id, type, seat capacity, rate, model, make,reg num, cost
        --pckg_car.insert_car(car_id_seq.nextval, 'SEDAN', 4, 16, 'AMAZE', 'HONDA','QRR D78', 16000);
        
    --UPDATE CAR
        --pckg_car.update_car(car_id_seq.currval, 'SEDAN', 4, 17, 'AMAZE', 'HONDA','QJR D78', 15500);
        
        
        
    --INSERT PICKUP POINT pickup point id, state, city, zip, cost, name
        --pckg_car.insert_pickup_point(pickup_point_id_seq.nextval, 'TEXAS','AUSTIN','92115', 50000, 'AUSTIN_A1');
    
    --UPDATE PICKUP POINT
        --pckg_car.update_pickup_point(pickup_point_id_seq.currval, 'TEXAS','AUSTIN','92220', 50000, 'AUSTIN_TX');
    
    
    
    --INSERT CARS AT PICK UP 
        --pckg_car.insert_cars_at_pickup(cars_at_pickup_id_seq.nextval,pickup_point_id_seq.currval,car_id_seq.currval);
             

    -- DELETE CAR
        --pckg_car.insert_car(car_id_seq.nextval, 'SEDAN', 4, 16, 'CITY', 'HONDA','QPZ D21', 15800);
        ----pckg_car.delete_car(car_id_seq.currval);
        
    
    --INSERT RIDE Transaction -  Trans id, cust id, car at pickup id, start, end, car id, distance, status
        --pckg_transact.insert_ride_transaction(trans_id_seq.nextval, cust_id_seq.currval, cars_at_pickup_id_seq.currval, to_timestamp((sysdate)), to_timestamp((sysdate+1/24)),car_id_seq.currval, 0, 'IN PROCESS');
    
    --UPDATE  Ride Transaction- Trans id, car at pickup id, start, end, car id, distance, status, customer card, discount id
       --pckg_transact.update_ride_transaction(trans_id_seq.currval, cars_at_pickup_id_seq.currval, to_timestamp((sysdate+1/24)), to_timestamp((sysdate+2/24)), car_id_seq.currval, 0,'UPDATED',NULL, NULL);
       
    --COMPLETE RIDE TRANSACTION- Trans id, car at pickup id, start, end, car id, distance, status, customer card, discount id
       --pckg_transact.update_ride_transaction(trans_id_seq.currval, cars_at_pickup_id_seq.currval, to_timestamp((sysdate+1/24)), to_timestamp((sysdate+2/24)), car_id_seq.currval, 26,'COMPLETED','1234-1234-1234-1234',NULL);
    
    
    
    --INSERT violations- violation id description
        --pckg_violations.insert_violations(violation_id_seq.nextval,'Traffic Signal Jump');
        --pckg_violations.update_violations(violation_id_seq.currval,'Signal Jump');
    
    
    --INSERT VIOLATIONS records - record id,  cust id, violation id
      --pckg_violations.insert_violations_record(record_id_seq.nextval,cust_id_seq.currval,violation_id_seq.currval);
        
        
        
    --SHOW ALL AVAILABLE CARS - start time, end time    
       ----pckg_utils.show_all_available_cars(to_timestamp((sysdate)), to_timestamp((sysdate+2/24)));
    
    
    --GET CAR - car id
       ----pckg_utils.get_car(500);
END;



