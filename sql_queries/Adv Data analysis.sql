SELECT * FROM world_gdp.world_gdp;

/* 1. Countries with Negative growth in GDP
List all countries where the GDP is less than 0 Percent GDP growth.*/

SELECT country,
       gdp_growth_percentage
FROM   world_gdp.world_gdp
WHERE  gdp_growth_percentage < 0
ORDER  BY gdp_growth_percentage; 

/* 2. Countries with Population Greater than the World Average and their GDP Stats
List countries with a population greater than the average population and their GDP.*/

SELECT country,
       gdp_abbrevated,
       gdp_growth_percentage,
       gdp_per_capita
FROM   world_gdp.world_gdp
WHERE  population > (SELECT Avg(population)
                     FROM   world_gdp.world_gdp)
ORDER  BY gdp_nominal_2022 / population DESC; 

/*3. Countries Contributing More Than 3% to World GDP
List all countries contributing more than 3% of the world GDP.*/

SELECT country,
       worldgdp_share_percentage
FROM   world_gdp.world_gdp
WHERE  worldgdp_share_percentage > 3; 

/*4. Countries with GDP Above $3 Trillion
Identify countries whose GDP is Above $3 trillion.*/

SELECT country,
       gdp_nominal_2022,
       gdp_abbrevated
FROM   world_gdp.world_gdp
WHERE  gdp_nominal_2022 > 3000000000000; 

/* 5. Top 5 Countries by Population Growth Impact
Find the top 5 countries where the highest population correlates with GDP share and growth.*/

SELECT country,
       population,
       gdp_growth_percentage,
       worldgdp_share_percentage
FROM   world_gdp.world_gdp
ORDER  BY population DESC,
          gdp_growth_percentage DESC
LIMIT  5; 

