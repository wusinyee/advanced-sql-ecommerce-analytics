-- Database Schema for E-commerce Analytics

-- Products table
CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    launch_date DATE
);

-- Customers table
CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    segment VARCHAR(20) NOT NULL, -- 'Standard' or 'Premium'
    region VARCHAR(50) NOT NULL,
    registration_date DATE NOT NULL
);

-- Sales table
CREATE TABLE sales (
    sale_id SERIAL PRIMARY KEY,
    product_id INT REFERENCES products(product_id),
    customer_id INT REFERENCES customers(customer_id),
    order_date DATE NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    quantity INT NOT NULL
);

-- Sales targets table
CREATE TABLE sales_targets (
    target_id SERIAL PRIMARY KEY,
    category VARCHAR(50) NOT NULL,
    quarter INT NOT NULL,
    year INT NOT NULL,
    target_amount DECIMAL(10, 2) NOT NULL
);

-- Employees table
CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    department VARCHAR(50) NOT NULL,
    hire_date DATE NOT NULL
);

-- Employee sales table
CREATE TABLE employee_sales (
    sale_id SERIAL PRIMARY KEY,
    employee_id INT REFERENCES employees(employee_id),
    product_id INT REFERENCES products(product_id),
    sale_date DATE NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    quantity INT NOT NULL
);

-- Financial data table
CREATE TABLE financial_data (
    record_id SERIAL PRIMARY KEY,
    quarter VARCHAR(2) NOT NULL, -- 'Q1', 'Q2', 'Q3', 'Q4'
    year INT NOT NULL,
    revenue DECIMAL(15, 2) NOT NULL,
    expenses DECIMAL(15, 2) NOT NULL
);

-- Create indexes for performance optimization
CREATE INDEX idx_sales_date ON sales(order_date);
CREATE INDEX idx_sales_category ON sales(product_id);
CREATE INDEX idx_customer_segment ON customers(segment);
CREATE INDEX idx_employee_sales_date ON employee_sales(sale_date);
