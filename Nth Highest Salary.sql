CREATE TABLE Employees (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    salary DECIMAL(10, 2)
);

INSERT INTO Employees (name, salary) VALUES
('Alice', 60000.00),
('Bob', 75000.00),
('Charlie', 50000.00),
('David', 50000.00),
('Eva', 95000.00),
('Frank', 80000.00),
('Grace', 80000.00),
('Hank', 90000.00),
('Hank', 75000.00);


SELECT * FROM EMPLOYEES

-- You have emp table mentioned below
-- Write SQL query to fetch nth highest salary!

-- 4 = 3rd highest salary

WITH CTE AS
(SELECT ID,
       NAME,
       SALARY,
       DENSE_RANK()OVER(ORDER BY SALARY DESC) AS DRNK
FROM EMPLOYEES
)
SELECT * FROM CTE WHERE DRNK=3