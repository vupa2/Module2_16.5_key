DROP TABLE IF EXISTS transactions, accounts, customers;

CREATE TABLE customers
(
    customer_number INT AUTO_INCREMENT PRIMARY KEY,
    full_name       VARCHAR(40),
    address         VARCHAR(255),
    email           VARCHAR(255),
    phone           INT
);

CREATE TABLE accounts
(
    account_number  INT AUTO_INCREMENT PRIMARY KEY,
    account_type    VARCHAR(10),
    date            TIMESTAMP,
    balance         DOUBLE,
    customer_number INT,
    FOREIGN KEY (customer_number) REFERENCES customers (customer_number)
);

CREATE TABLE transactions
(
    tran_number    INT PRIMARY KEY,
    account_number INT,
    date           TIMESTAMP,
    amounts        DOUBLE,
    description    LONGTEXT,
    FOREIGN KEY (account_number) REFERENCES accounts (account_number)
);
