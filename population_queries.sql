-- How many entries in the database are from Africa?
SELECT COUNT(*) FROM countries
WHERE continent = "Africa";


-- What was the total population of Oceania in 2005?
SELECT SUM(population_years.population),countries.continent,population_years.year FROM population_years JOIN countries 
ON countries.id = population_years.country_id
WHERE countries.continent = "Oceania" 
AND population_years.year = "2005"
GROUP BY countries.continent;


-- What is the average population of countries in South America in 2003?
SELECT AVG(population) FROM population_years JOIN countries 
ON countries.id = population_years.country_id
WHERE countries.continent = "South America" 
AND population_years.year = "2003";


-- What country had the smallest population in 2007?
SELECT name, MIN(population_years.population) FROM population_years JOIN countries 
ON countries.id = population_years.country_id
WHERE population_years.year = "2007";


-- What is the average population of Poland during the time period covered by this dataset?
SELECT AVG(population_years.population) FROM population_years JOIN countries 
ON countries.id = population_years.country_id;


-- How many countries have the word "The" in their name?
SELECT COUNT(*) FROM population_years JOIN countries 
ON countries.id = population_years.country_id
WHERE countries.name LIKE "%The%";


-- What was the total population of each continent in 2010?
SELECT countries.continent, ROUND(SUM(population_years.population),2) FROM population_years JOIN countries 
ON countries.id = population_years.country_id
WHERE population_years.year = "2010"
GROUP BY countries.continent;

