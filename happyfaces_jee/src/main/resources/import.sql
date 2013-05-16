insert into APP_USER (ID, VERSION, FIRST_NAME, LAST_NAME, EMAIL, USER_NAME, PASSWORD) values (101, 0, 'Incognito', 'Incognito', 'admin@happyfaces.com', 'admin', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918');
insert into APP_USER (ID, VERSION, FIRST_NAME, LAST_NAME, EMAIL, USER_NAME, PASSWORD) values (102, 0, 'no name', 'no name', 'test@happyfaces.com', 'test', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918');

insert into CITY (ID, VERSION, NAME, COUNTRY) values (1, 1, "Vilnius", "Lithuania");
insert into CITY (ID, VERSION, NAME, COUNTRY) values (2, 1, "London", "England");
insert into CITY (ID, VERSION, NAME, COUNTRY) values (3, 1, "Paris", "France");
insert into CITY (ID, VERSION, NAME, COUNTRY) values (4, 1, "New York", "USA");
insert into CITY (ID, VERSION, NAME, COUNTRY) values (5, 1, "Tokyo", "Japan");
insert into CITY (ID, VERSION, NAME, COUNTRY) values (6, 1, "Hong Kong", "China");

insert into CUSTOMER (ID, VERSION, CUSTOMER_NAME, ADDRESS, EMAIL, PHONE, CITY_ID, AGE) values (1, 1, "John Smith", "Antakalnio 24", "john@gmail.com", "8652112234", 1, 26);
insert into ACCOUNT (ID, VERSION, CUSTOMER_ID, ACCOUNT_NUMBER, ACCOUNT_ACTIVE, OPENING_DATE) values (101, 1, 1, "LT1144667", 1, "2012-11-20");
insert into OPERATION (ID, VERSION, ACCOUNT_ID, OPERATION_NAME, AMOUNT, OPERATION_TYPE, OPERATION_DATE, COMMENT) values (1001, 1, 101, "Salary transfer", 400, "CREDIT", "2012-10-21 13:45:10", "Operation was successfull");
insert into OPERATION (ID, VERSION, ACCOUNT_ID, OPERATION_NAME, AMOUNT, OPERATION_TYPE, OPERATION_DATE, COMMENT) values (1002, 1, 101, "ATM debit", 325, "DEBIT", "2012-10-21 14:27:13", "Operation was successfull");
insert into OPERATION (ID, VERSION, ACCOUNT_ID, OPERATION_NAME, AMOUNT, OPERATION_TYPE, OPERATION_DATE, COMMENT) values (1003, 1, 101, "Loan", 215.98, "CREDIT", "2012-10-24 00:41:21", "Operation was successfull");
insert into ACCOUNT (ID, VERSION, CUSTOMER_ID, ACCOUNT_NUMBER, ACCOUNT_ACTIVE, OPENING_DATE) values (102, 1, 1, "LT1141113", 0, "2012-08-12");
insert into OPERATION (ID, VERSION, ACCOUNT_ID, OPERATION_NAME, AMOUNT, OPERATION_TYPE, OPERATION_DATE, COMMENT) values (1101, 1, 102, "Interest", 12.77, "CREDIT", "2012-09-21 11:15:10", "Operation was successfull");
insert into OPERATION (ID, VERSION, ACCOUNT_ID, OPERATION_NAME, AMOUNT, OPERATION_TYPE, OPERATION_DATE, COMMENT) values (1102, 1, 102, "Bank fees", 2.21, "DEBIT", "2012-10-01 12:21:10", "Operation was successfull");

insert into CUSTOMER (ID, VERSION, CUSTOMER_NAME, ADDRESS, EMAIL, PHONE, CITY_ID, AGE) values (2, 1, "Michael Williams", "Victoria st 11", "michael@yahoo.com", "112345456", 2, 41);
insert into ACCOUNT (ID, VERSION, CUSTOMER_ID, ACCOUNT_NUMBER, ACCOUNT_ACTIVE, OPENING_DATE) values (201, 1, 2, "EN999886434", 1, "2011-11-15");
insert into OPERATION (ID, VERSION, ACCOUNT_ID, OPERATION_NAME, AMOUNT, OPERATION_TYPE, OPERATION_DATE, COMMENT) values (2101, 1, 201, "Salary transfer", 1466, "CREDIT", "2012-11-20 12:11:10", "Operation was successfull");
insert into OPERATION (ID, VERSION, ACCOUNT_ID, OPERATION_NAME, AMOUNT, OPERATION_TYPE, OPERATION_DATE, COMMENT) values (2102, 1, 201, "Lidl debit", 112, "DEBIT", "2012-11-11 14:41:22", "Operation was successfull");
insert into OPERATION (ID, VERSION, ACCOUNT_ID, OPERATION_NAME, AMOUNT, OPERATION_TYPE, OPERATION_DATE, COMMENT) values (2103, 1, 201, "iDeal debit", 1124, "DEBIT", "2012-11-12 09:41:10", "Operation was successfull");
insert into ACCOUNT (ID, VERSION, CUSTOMER_ID, ACCOUNT_NUMBER, ACCOUNT_ACTIVE, OPENING_DATE) values (202, 1, 2, "EN454688888", 1, "2012-01-02");
insert into OPERATION (ID, VERSION, ACCOUNT_ID, OPERATION_NAME, AMOUNT, OPERATION_TYPE, OPERATION_DATE, COMMENT) values (2201, 1, 202, "Interest", 14.25, "CREDIT", "2012-01-01 00:00:00", "Operation was successfull");
insert into OPERATION (ID, VERSION, ACCOUNT_ID, OPERATION_NAME, AMOUNT, OPERATION_TYPE, OPERATION_DATE, COMMENT) values (2202, 1, 202, "Bank fees", 5.12, "DEBIT", "2012-11-11 11:11:11", "Operation was successfull");
insert into ACCOUNT (ID, VERSION, CUSTOMER_ID, ACCOUNT_NUMBER, ACCOUNT_ACTIVE, OPENING_DATE) values (203, 1, 2, "EN547898877", 0, "2012-09-12");
insert into OPERATION (ID, VERSION, ACCOUNT_ID, OPERATION_NAME, AMOUNT, OPERATION_TYPE, OPERATION_DATE, COMMENT) values (2301, 1, 203, "Savings credit", 2000, "CREDIT", "2011-12-22 01:44:11", "Operation was successfull");

insert into CUSTOMER_PERK (ID, VERSION, NAME) values (1, 1, "Free lunch");
insert into CUSTOMER_PERK (ID, VERSION, NAME) values (2, 1, "Birthday gift");
insert into CUSTOMER_PERK (ID, VERSION, NAME) values (3, 1, "Parking lot");
insert into CUSTOMER_PERK (ID, VERSION, NAME) values (4, 1, "Plane tickets");
insert into CUSTOMER_CUSTOMERPERK (CUSTOMER_ID, PERK_ID) values (1, 1);
insert into CUSTOMER_CUSTOMERPERK (CUSTOMER_ID, PERK_ID) values (1, 2);
insert into CUSTOMER_CUSTOMERPERK (CUSTOMER_ID, PERK_ID) values (1, 4);