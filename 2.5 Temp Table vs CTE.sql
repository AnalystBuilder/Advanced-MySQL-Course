-- Temp Tables vs CTEs

-- 1. How they're stored in Memory
-- 2. How they handle complex queries

WITH CTE_EXAMPLE AS(
SELECT *,
ROW_NUMBER() OVER(PARTITION BY department ORDER BY salary desc) row_num
FROM employees) 
SELECT *
FROM CTE_EXAMPLE
WHERE row_num > 2;

CREATE TEMPORARY TABLE temp_table
SELECT *,
ROW_NUMBER() OVER(PARTITION BY department ORDER BY salary desc) row_num
FROM employees;

SELECT *
FROM temp_table;























