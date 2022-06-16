0--Percentiles

--Select first 5 rows to see what our data looks like

SELECT TOP 5 *
FROM Public_store

SELECT TOP 10 *
FROM Public_store
ORDER BY revenue DESC

--show the avg revenue generated

SELECT AVG(revenue)
FROM Public_store

--Showing 50, 60, 70 perentile of revenue

SELECT PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY revenue) OVER (PARTITION BY units_sold) AS fifty_perct_revenue
FROM public_store
SELECT PERCENTILE_DISC(0.6) WITHIN GROUP (ORDER BY revenue) OVER (PARTITION BY units_sold) AS sixty_perct_revenue
FROM public_store
SELECT PERCENTILE_DISC(0.7) WITHIN GROUP (ORDER BY revenue) OVER (PARTITION BY units_sold) AS seventy_perct_revenue
FROM public_store

SELECT revenue * 0.5 AS fifty_pert_revenue
FROM Public_store
ORDER BY revenue

SELECT revenue from Public_store order by revenue