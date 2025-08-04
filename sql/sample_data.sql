-- Sample data for the e-commerce analytics dashboard

-- Insert sample products
INSERT INTO products (product_name, category, price, launch_date) VALUES
('Galaxy Sky', 'Electronics', 1200.00, '2020-09-01'),
('iDrone', 'Electronics', 1500.00, '2018-11-10'),
('Zenvo Shirt', 'Fashion', 60.00, '2017-02-20'),
('Armane Jacket', 'Fashion', 250.00, '2018-09-15'),
('Sparkling Star Eyeshadow', 'Cosmetics', 35.00, '2019-06-01'),
('Glowing Moon Lipstick', 'Cosmetics', 25.00, '2020-01-15'),
('Classic tales of Mystery', 'Books', 15.00, '2020-02-01'),
('Legends of the Lost City', 'Books', 12.00, '2019-12-10'),
('Ace Racket', 'Sports', 100.00, '2020-01-10'),
('Champion Ball', 'Sports', 5.00, '2018-05-05'),
('Rhythm & Blues Headphones', 'Music', 150.00, '2017-11-01'),
('Jazzy Beat Earbuds', 'Music', 100.00, '2019-05-01'),
('Miracle Blender', 'Home & Kitchen', 60.00, '2017-10-01'),
('Fantastic Toaster', 'Home & Kitchen', 30.00, '2018-06-01');

-- Insert sample customers
INSERT INTO customers (first_name, last_name, email, segment, region, registration_date) VALUES
('John', 'Doe', 'john@example.com', 'Standard', 'North', '2020-01-15'),
('Jane', 'Smith', 'jane@example.com', 'Premium', 'South', '2019-05-20'),
('Robert', 'Johnson', 'robert@example.com', 'Standard', 'East', '2020-03-10'),
('Emily', 'Williams', 'emily@example.com', 'Premium', 'West', '2019-11-05'),
('Michael', 'Brown', 'michael@example.com', 'Standard', 'North', '2020-02-28');

-- Insert sample sales data
INSERT INTO sales (product_id, customer_id, order_date, amount, quantity) VALUES
(1, 1, '2023-01-10', 1200.00, 1),
(2, 2, '2023-01-15', 1500.00, 1),
(3, 3, '2023-02-20', 120.00, 2),
(4, 4, '2023-02-25', 250.00, 1),
(5, 5, '2023-03-01', 70.00, 2),
(6, 1, '2023-03-10', 50.00, 2),
(7, 2, '2023-04-01', 35.00, 1),
(8, 3, '2023-04-15', 24.00, 2),
(9, 4, '2023-05-01', 100.00, 1),
(10, 5, '2023-05-10', 25.00, 5);

-- Insert sample sales targets
INSERT INTO sales_targets (category, quarter, year, target_amount) VALUES
('Electronics', 1, 2023, 120000.00),
('Fashion', 1, 2023, 85000.00),
('Cosmetics', 1, 2023, 65000.00),
('Home & Kitchen', 1, 2023, 75000.00),
('Sports', 1, 2023, 55000.00),
('Electronics', 2, 2023, 130000.00),
('Fashion', 2, 2023, 90000.00),
('Cosmetics', 2, 2023, 70000.00),
('Home & Kitchen', 2, 2023, 80000.00),
('Sports', 2, 2023, 60000.00);

-- Insert sample employees
INSERT INTO employees (first_name, last_name, department, hire_date) VALUES
('Lionel', 'Messie', 'Electronics', '2020-02-01'),
('Cristiano', 'Ranoldo', 'Fashion', '2018-07-15'),
('Beyonc', 'Knolls', 'Cosmetics', '2019-11-10'),
('Elon', 'Muck', 'Electronics', '2016-06-01'),
('Steve', 'Jabs', 'Fashion', '2015-01-01');

-- Insert sample employee sales
INSERT INTO employee_sales (employee_id, product_id, sale_date, amount, quantity) VALUES
(1, 1, '2023-01-10', 1200.00, 1),
(1, 2, '2023-02-15', 1500.00, 1),
(2, 3, '2023-01-20', 120.00, 2),
(2, 4, '2023-02-25', 250.00, 1),
(3, 5, '2023-01-05', 70.00, 2),
(3, 6, '2023-02-10', 50.00, 2),
(4, 1, '2023-01-12', 1200.00, 1),
(4, 2, '2023-02-18', 1500.00, 1),
(5, 3, '2023-01-25', 120.00, 2),
(5, 4, '2023-02-28', 250.00, 1);

-- Insert sample financial data
INSERT INTO financial_data (quarter, year, revenue, expenses) VALUES
('Q1', 2023, 180000.00, 120000.00),
('Q2', 2023, 210000.00, 140000.00),
('Q3', 2023, 245000.00, 160000.00),
('Q4', 2023, 320000.00, 200000.00);
