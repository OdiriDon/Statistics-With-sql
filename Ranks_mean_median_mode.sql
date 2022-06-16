
---row number
--Row Number is a window function which operates on ordered set. It is added as a new column to the result.
--It is very useful when we want to assign row order based on the ordered list.

SELECT ROW_NUMBER() OVER(ORDER BY units_sold) AS row_num,
sale_date, month_of_year, units_sold
FROM Public_store
ORDER BY row_num ASC

--mode revenue

SELECT TOP 1 revenue, COUNT(revenue)
FROM Public_store
GROUP BY revenue
ORDER BY COUNT(revenue)

--mean revenue

SELECT AVG(revenue) AS 'Mean'
FROM Public_store

--median revunue

SELECT TOP 1 PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY revenue)
OVER () AS 'Median'
FROM Public_store


