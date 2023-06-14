-- Understanding Indexes Better + Best Practices

SHOW INDEXES IN bakery.us_household_income;

EXPLAIN SELECT *
FROM bakery.us_household_income
WHERE Area_Code = '203'
OR City LIKE 'A%';

EXPLAIN SELECT *
FROM bakery.us_household_income
WHERE State_ab = 'NC'
OR City LIKE 'A%';


EXPLAIN SELECT *
FROM bakery.us_household_income
WHERE State_Name = 'Rhode_Island'
AND ALand > 500000;

EXPLAIN SELECT ALand
FROM bakery.us_household_income
WHERE ALand + 10 > 100000;


-- BEST PRACTICES

-- Composite indexes are good
-- Order matters
-- Avoid using Select *
-- Looking at your Where Clause
-- Full table vs indexes


















































