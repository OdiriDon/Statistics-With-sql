--view all the rows within the datset

SELECT * FROM Public_store

--count the total number of rows

SELECT COUNT(*)
FROM Public_store

--max number of employeee during any shifts
SELECT MAX(employee_shifts) AS max_employee_shift
FROM Public_store 

--How many rows for each month
SELECT month_of_year, COUNT(*) AS total_month_rows
FROM Public_store
GROUP BY month_of_year
ORDER BY month_of_year ASC

-- Smallest number of employees during any shifts

SELECT MIN(employee_shifts) AS min_employee_shift
FROM Public_store

--Min and Max shifts per month of year

SELECT month_of_year, MAX(employee_shifts) AS max_employee_shifts, MIN(employee_shifts) AS min_employee_shifts
FROM Public_store
GROUP BY month_of_year
ORDER BY month_of_year ASC

--Total units sold

SELECT SUM(units_sold) AS Total_sum_of_units_sold
FROM Public_store

--Total unit sold and avg unit sold per month

SELECT month_of_year, SUM(units_sold) AS Total_units_sold,
ROUND(AVG(units_sold), 2) AS Avg_units_sold
FROM Public_store
GROUP BY month_of_year
ORDER BY month_of_year ASC

--
SELECT month_of_year, SUM(units_sold) AS Total_units_sold,
ROUND(AVG(units_sold), 2) AS Avg_units_sold,
VAR(units_sold) AS variance_units_sold,
STDEV(units_sold) AS std_units_sold
FROM Public_store
GROUP BY month_of_year
ORDER BY month_of_year ASC