show databases;
create database sept_final_project_retail;
use sept_final_project_retail;
show tables;
select * from cust_details;
CREATE TABLE cust_details (
    sl_no INT AUTO_INCREMENT PRIMARY KEY,
    cust_id VARCHAR(50) NOT NULL,
    cust_full_name VARCHAR(100) NOT NULL,
    cust_address VARCHAR(255) not null,
    cust_phone_number VARCHAR(10) not null
)AUTO_INCREMENT=1;

INSERT INTO cust_details (cust_id, cust_full_name, cust_address, cust_phone_number)
VALUES ('CUST001', 'John Doe', '123 Main Street, Springfield', '1234567890');

truncate cust_details;

select * from cust_details
where cust_phone_number='1234567890';

select * from cust_details WHERE cust_phone_number='1234567890';

CREATE TABLE inventory (
	product_id VARCHAR(50) PRIMARY KEY not null,
    product_name VARCHAR(100) NOT NULL,
    product_price DECIMAL(10, 2) NOT NULL
);
describe inventory;
select * from inventory;
INSERT INTO inventory (product_id, product_name, product_price)
VALUES ('PROD001', 'Toothpaste', 75.50);

INSERT INTO inventory (product_id, product_name, product_price) VALUES ('PROD001', 'Toothpaste', 75.50);
INSERT INTO inventory (product_id, product_name, product_price) VALUES ('PROD002', 'Shampoo', 120.00);
INSERT INTO inventory (product_id, product_name, product_price) VALUES ('PROD003', 'Soap', 45.00);
INSERT INTO inventory (product_id, product_name, product_price) VALUES ('PROD004', 'Detergent Powder', 250.00);
INSERT INTO inventory (product_id, product_name, product_price) VALUES ('PROD005', 'Toilet Cleaner', 90.00);
INSERT INTO inventory (product_id, product_name, product_price) VALUES ('PROD006', 'Dishwashing Liquid', 65.00);
INSERT INTO inventory (product_id, product_name, product_price) VALUES ('PROD007', 'Pack of Tissue Papers', 50.00);
INSERT INTO inventory (product_id, product_name, product_price) VALUES ('PROD008', 'Hair Oil', 140.00);
INSERT INTO inventory (product_id, product_name, product_price) VALUES ('PROD009', 'Face Wash', 199.00);
INSERT INTO inventory (product_id, product_name, product_price) VALUES ('PROD010', 'Hand Sanitizer', 85.00);
INSERT INTO inventory (product_id, product_name, product_price) VALUES ('PROD011', 'Body Lotion', 220.00);
INSERT INTO inventory (product_id, product_name, product_price) VALUES ('PROD012', 'Mosquito Repellent', 130.00);
INSERT INTO inventory (product_id, product_name, product_price) VALUES ('PROD013', 'Pack of Razors', 175.00);
INSERT INTO inventory (product_id, product_name, product_price) VALUES ('PROD014', 'Laundry Bleach', 95.00);
INSERT INTO inventory (product_id, product_name, product_price) VALUES ('PROD015', 'Kitchen Cleaner', 110.00);

CREATE TABLE audit_table (
    sl_no INT AUTO_INCREMENT PRIMARY KEY,
    cust_id VARCHAR(50) NOT NULL,
    cust_name VARCHAR(100) NOT NULL,
    cust_phone_number VARCHAR(10) not null,
    total_bill_amount DECIMAL(10, 2) NOT NULL,
    entry_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)AUTO_INCREMENT=1;

select * from audit_table;

INSERT INTO audit_table (cust_id, cust_name, cust_phone_number, total_bill_amount)
VALUES ('CUST101', 'Alice Johnson', '9876543210', 1500.75);

truncate audit_table;





