-- AccountMaster Table
	-- Drop if such table already exists
	DROP TABLE AccountMaster;
	-- Create table 
	CREATE TABLE AccountMaster(
		Account_ID NUMBER(10) NOT NULL,
		Account_Type VARCHAR2(25),
		Account_Balance NUMBER(15),
		Open_Date Date
	);

-- Customer Table
	-- Drop if such table already exists
	DROP TABLE Customer;
	-- Create table 
	CREATE TABLE Customer(
		Account_ID NUMBER(10),
		customer_name VARCHAR2(50),
		Email VARCHAR2(30),
		Address VARCHAR2(100),
		Pancard VARCHAR2(15)
	);

-- Transactions Table
	-- Drop if such table already exists
	DROP TABLE Transactions;
	-- Create table 
	CREATE TABLE Transactions(
		Transaction_ID NUMBER,
		Tran_description VARCHAR2(100),
		Date_of_Transaction DATE,
		Transaction_Type VARCHAR2(1),
		Tran_Amount NUMBER(15),
		Account_No NUMBER(10)
	);

-- ServiceTracker Table
	-- Drop if such table already exists
	DROP TABLE ServiceTracker;
	-- Create table 
	CREATE TABLE ServiceTracker(
		Service_ID NUMBER, 
		Service_Description VARCHAR2(100),
		Account_ID NUMBER, 
		Service_Raised_Date DATE,
		Service_status VARCHAR2(20)
	);
	
-- UserTable Table
	-- Drop if such table already exists
	DROP TABLE UserTable;
	-- Create table 
	CREATE TABLE UserTable(
		Account_ID NUMBER,
		user_id NUMBER,
		login_password VARCHAR2(15),
		secret_question VARCHAR2(50),
		Transaction_password VARCHAR2(15),
		lock_status VARCHAR2(1)
	);
	
-- Fund_Transfer Table
	-- Drop if such table already exists
	DROP TABLE Fund_Transfer;
	-- Create table 
	CREATE TABLE Fund_Transfer(
		FundTransfer_ID NUMBER,
		Account_ID NUMBER(10),
		Payee_Account_ID NUMBER(10), 
		Date_Of_Transfer DATE, 
		Transfer_Amount NUMBER(15)
	);

-- PayeeTable Table
	-- Drop if such table already exists
	DROP TABLE PayeeTable;
	-- Create table 
	CREATE TABLE PayeeTable(
		Account_Id NUMBER,
		Payee_Account_Id NUMBER, 
		NickName VARCHAR2(40)
	);	


-- Constraits (Primary and key are to be added)
-- Add them after this line.

