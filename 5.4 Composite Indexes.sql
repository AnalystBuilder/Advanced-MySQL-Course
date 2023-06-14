-- Composite Indexes
EXPLAIN SELECT *
FROM bakery.us_household_income
WHERE State_Name = 'Rhode Island'
AND ALand > 500000;



CREATE INDEX idx_state_Aland 
ON bakery.us_household_income(State_Name(8),ALand);

EXPLAIN SELECT *
FROM bakery.us_household_income
WHERE State_Name = 'Rhode Island'
AND ALand > 10000000;
-- ORDER OF COLUMNS IN INDEX

SHOW INDEXES IN bakery.us_household_income;



SELECT *
FROM bakery.us_household_income
WHERE State_ab = 'NC'
AND City LIKE 'A%';

SELECT COUNT(DISTINCT State_ab), COUNT(DISTINCT City)
FROM bakery.us_household_income;

CREATE INDEX idx_city_stateab
ON bakery.us_household_income(City(10), State_ab(2));

SHOW INDEXES IN bakery.us_household_income;

EXPLAIN SELECT *
FROM bakery.us_household_income
WHERE State_ab = 'NC'
AND City LIKE 'A%';

CREATE INDEX idx_stateab_city
ON bakery.us_household_income(State_ab(2),City(10));




























