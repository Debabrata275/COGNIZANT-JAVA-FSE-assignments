-- Create Customers table
CREATE TABLE customers (
  customer_id INTEGER PRIMARY KEY,
  cust_name   VARCHAR2(50),
  age         NUMBER,
  balance     NUMBER,
  isvip       CHAR(1) DEFAULT 'N'
);

-- Create Loans table
CREATE TABLE loans (
  loan_id       INTEGER PRIMARY KEY,
  customer_id   INTEGER REFERENCES customers(customer_id),
  due_date      DATE,
  interest_rate NUMBER
);

-- Insert customer records
INSERT INTO customers VALUES (1, 'Debabrata', 25, 9000, 'N');
INSERT INTO customers VALUES (2, 'Srija', 30, 15000, 'N');
INSERT INTO customers VALUES (3, 'Sananda', 65, 20000, 'N');
INSERT INTO customers VALUES (4, 'Makhdum', 45, 11000, 'N');
INSERT INTO customers VALUES (5, 'Kavya', 70, 8000, 'N');
INSERT INTO customers VALUES (6, 'Raghavan', 68, 5000, 'N');
INSERT INTO customers VALUES (7, 'Ananya', 29, 30000, 'N');
INSERT INTO customers VALUES (8, 'Manish', 58, 9500, 'N');
INSERT INTO customers VALUES (9, 'Meera', 62, 12000, 'N');

-- Insert loan records
INSERT INTO loans VALUES (101, 1, SYSDATE + 40, 12.0);
INSERT INTO loans VALUES (102, 2, SYSDATE + 10, 11.0);
INSERT INTO loans VALUES (103, 3, SYSDATE + 25, 10.5);
INSERT INTO loans VALUES (104, 4, SYSDATE + 70, 11.5);
INSERT INTO loans VALUES (105, 5, SYSDATE + 5, 10.0);
INSERT INTO loans VALUES (106, 6, SYSDATE + 28, 9.5);
INSERT INTO loans VALUES (107, 7, SYSDATE + 90, 13.0);
INSERT INTO loans VALUES (108, 8, SYSDATE + 18, 9.0);
INSERT INTO loans VALUES (109, 9, SYSDATE + 2, 9.8);

-- Save changes
COMMIT;
