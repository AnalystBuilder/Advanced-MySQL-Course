-- Prefix Indexes


SELECT *
FROM bakery.us_household_income;


SELECT DISTINCT State_Name
FROM bakery.us_household_income;

CREATE INDEX idx_state_name
ON bakery.us_household_income(State_Name(8));

EXPLAIN SELECT *
FROM bakery.us_household_income
WHERE State_Name = 'Rhode Island';

CREATE INDEX idx_state_name2
ON bakery.us_household_income(State_Name(13));


SHOW INDEXES IN bakery.us_household_income;































