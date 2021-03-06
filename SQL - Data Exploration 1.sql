
--Pokemon Data Exploration 
--Skills used: Aggregate Functions, Converting Data Types, CASE Statement, WHERE and HAVING Clauses, LIKE Operator


--------------------------------------------------------------------------------------------------------------------------

-- Using Aggregate Functions to get useful data
-- Selecting the minimum attack

SELECT MIN(Attack) AS Weakest_Attack
FROM pokemon;

-- Selecting the Maximum Defense

SELECT MAX(Defense) AS Max_Defense
FROM pokemon;

--Selecting the average HP

SELECT AVG(HP) AS Average_HP
FROM pokemon;

--------------------------------------------------------------------------------------------------------------------------

--Using WHERE and HAVING Clauses to get useful data
--Checking the amount of pokemon in generation 3 and up

SELECT Generation, COUNT(*) AS pokemon_per_Gen
FROM pokemon
GROUP BY Generation
HAVING Generation >= 3
ORDER BY Generation;

--Every Legenday pokemon from Generation 1

SELECT name
FROM pokemon
WHERE CONVERT(VARCHAR,Legendary) = 'True' AND Generation = 1;

--Every Mega evolution pokemon from generation 3

SELECT *
FROM pokemon
WHERE name LIKE '%Mega%' AND Generation = 3;

--------------------------------------------------------------------------------------------------------------------------

-- Ranking pokemon speeds
-- Using CASE Statements

SELECT Name,Speed,
Case
   WHEN Speed >= 150 AND Speed <= 180 THEN 'Fastest'
   WHEN Speed >= 90 AND Speed <= 150 THEN 'Fast'
   WHEN Speed >= 40 AND Speed <= 90 THEN 'average'
   Else 'Slowest'
END AS pokemon_speed
FROM pokemon
ORDER BY speed;

--------------------------------------------------------------------------------------------------------------------------
