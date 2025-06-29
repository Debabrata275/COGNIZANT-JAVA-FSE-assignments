CREATE TABLE accounts (
    account_id     NUMBER      CONSTRAINT pk_accounts PRIMARY KEY,
    customer_name  VARCHAR2(50),
    account_type   VARCHAR2(20) CHECK (account_type IN ('SAVINGS','CHECKING')),
    balance        NUMBER(12,2)
);

CREATE TABLE departments (
    dept_id     NUMBER      CONSTRAINT pk_departments PRIMARY KEY,
    dept_name   VARCHAR2(30)
);

CREATE TABLE employees (
    emp_id      NUMBER      CONSTRAINT pk_employees PRIMARY KEY,
    emp_name    VARCHAR2(40),
    dept_id     NUMBER      REFERENCES departments(dept_id),
    salary      NUMBER(12,2)
);

-- Insert into departments
INSERT INTO departments VALUES (10,'Finance');
INSERT INTO departments VALUES (20,'IT');
INSERT INTO departments VALUES (30,'HR');

-- Insert into employees
INSERT ALL
  INTO employees VALUES (101,'Alice',   10, 60000)
  INTO employees VALUES (102,'Bob',     10, 55000)
  INTO employees VALUES (103,'Charlie', 20, 78000)
  INTO employees VALUES (104,'David',   20, 69000)
  INTO employees VALUES (105,'Eve',     20, 72000)
  INTO employees VALUES (106,'Frank',   30, 50000)
  INTO employees VALUES (107,'Grace',   30, 53000)
  INTO employees VALUES (108,'Heidi',   10, 65000)
  INTO employees VALUES (109,'Ivan',    30, 47000)
SELECT * FROM dual;

-- Insert into accounts
INSERT ALL
  INTO accounts VALUES (1001,'Anil Kumar',    'SAVINGS',  45000)
  INTO accounts VALUES (1002,'Bina Singh',    'CHECKING', 38000)
  INTO accounts VALUES (1003,'Chitra Das',    'SAVINGS', 150000)
  INTO accounts VALUES (1004,'Deepak Roy',    'SAVINGS',  23000)
  INTO accounts VALUES (1005,'Esha Patil',    'CHECKING', 76000)
  INTO accounts VALUES (1006,'Farhan Ali',    'SAVINGS',   5600)
  INTO accounts VALUES (1007,'Gita Rao',      'SAVINGS',  92000)
  INTO accounts VALUES (1008,'Harish Gupta',  'CHECKING', 12000)
  INTO accounts VALUES (1009,'Isha Mehta',    'SAVINGS',  30500)
  INTO accounts VALUES (1010,'Jatin Shah',    'SAVINGS',   7800)
  INTO accounts VALUES (1011,'Kamal Verma',   'CHECKING', 98000)
  INTO accounts VALUES (1012,'Lata Iyer',     'SAVINGS',  67000)
SELECT * FROM dual;

COMMIT;
