SELECT * FROM world_gdp.world_gdp;

/*
1. Basic Selection
Write a query to display all the columns for the country "India."
*/

SELECT *
FROM   world_gdp.world_gdp
WHERE  country = 'India'; 

/*
2. Sorting
Write a query to list the countries in descending order of their GDP growth percentage.
*/

SELECT *
FROM   world_gdp.world_gdp
ORDER  BY gdp_growth_percentage DESC; 

/*
3. Filtering
Write a query to display the countries where the GDP per capita is greater than $50,000.
*/

SELECT *,
       Round(gdp_nominal_2022 / population, 2) AS calculated_gdp_capita
FROM   world_gdp.world_gdp
WHERE  gdp_nominal_2022 / population > 50000
ORDER  BY calculated_gdp_capita DESC; 

/*
4. Aggregation
Write a query to calculate the total world GDP using the "GDP (nominal, 2022)" column.
*/

SELECT Round(Sum(gdp_nominal_2022 / 1000000000000), 2) AS global_gdp_trillions
FROM   world_gdp.world_gdp; 

/*
5. Percentage Contribution
Write a query to display the name of the country and its GDP share percentage for countries contributing more than 10% of the world GDP.
*/

SELECT country,
       worldgdp_share_percentage
FROM   world_gdp.world_gdp
WHERE  worldgdp_share_percentage > 10; 

/*
6. Finding Top Performers
Write a query to find the country with the highest GDP per capita.
*/

SELECT country,
       Round(Max(gdp_nominal_2022 / population), 2) AS calculated_gdp_capita
FROM   world_gdp.world_gdp
ORDER  BY calculated_gdp_capita DESC
LIMIT  1; 

/*
7. Combined Conditions
Write a query to display the countries where GDP growth percentage is above 2% and GDP per capita is below $10,000.
*/
SELECT country,
       Replace(Replace(gdp_per_capita, '$', ''), ',', '') AS
       cleaned_gdp_per_capita
FROM   world_gdp.world_gdp
WHERE  gdp_growth_percentage > 2
       AND Replace(Replace(gdp_per_capita, '$', ''), ',', '') < 10000; 
-- OR

SELECT country
FROM   world_gdp.world_gdp
WHERE  gdp_growth_percentage > 2
       AND gdp_nominal_2022 / population < 10000
ORDER  BY country; 

/*
8. String Filtering
Write a query to display all columns for countries whose names start with the letter "C."
*/

SELECT *
FROM   world_gdp.world_gdp
WHERE  country LIKE "c%"; 

/*
9. Ranking
Write a query to rank the countries based on their GDP growth percentage in descending order.
*/

SELECT country,
       gdp_growth_percentage,
       Rank()
         OVER(
           ORDER BY gdp_growth_percentage DESC) AS growth_rank
FROM   world_gdp.world_gdp; 