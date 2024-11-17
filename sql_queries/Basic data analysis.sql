SELECT * FROM world_gdp.world_gdp;

/*
1. Basic Selection
Write a query to display all the columns for the country "India."
*/

select * from world_gdp.world_gdp
where country = 'India';

/*
2. Sorting
Write a query to list the countries in descending order of their GDP growth percentage.
*/

select * from world_gdp.world_gdp
order by gdp_growth_percentage DESC;

/*
3. Filtering
Write a query to display the countries where the GDP per capita is greater than $50,000.
*/

select *,round(gdp_nominal_2022/population,2) as calculated_gdp_capita
from world_gdp.world_gdp
where gdp_nominal_2022/population >50000
order by calculated_gdp_capita DESC;

/*
4. Aggregation
Write a query to calculate the total world GDP using the "GDP (nominal, 2022)" column.
*/

select round(sum(gdp_nominal_2022/1000000000000),2) as global_gdp_trillions 
from world_gdp.world_gdp;

/*
5. Percentage Contribution
Write a query to display the name of the country and its GDP share percentage for countries contributing more than 10% of the world GDP.
*/

select country,worldgdp_share_percentage
from world_gdp.world_gdp
where worldgdp_share_percentage>10;

/*
6. Finding Top Performers
Write a query to find the country with the highest GDP per capita.
*/

select country,round(max(gdp_nominal_2022/population),2) as calculated_gdp_capita
from world_gdp.world_gdp
order by calculated_gdp_capita desc
limit 1;

/*
7. Combined Conditions
Write a query to display the countries where GDP growth percentage is above 2% and GDP per capita is below $10,000.
*/
select country,REPLACE(REPLACE(gdp_per_capita, '$', ''), ',', '') AS cleaned_gdp_per_capita
from world_gdp.world_gdp
where gdp_growth_percentage >2 and REPLACE(REPLACE(gdp_per_capita, '$', ''), ',', '') < 10000;

-- OR

select country
from world_gdp.world_gdp
where gdp_growth_percentage>2 and gdp_nominal_2022/population<10000
order by country;

/*
8. String Filtering
Write a query to display all columns for countries whose names start with the letter "C."
*/

select * 
from world_gdp.world_gdp
where country like "C%";

/*
9. Ranking
Write a query to rank the countries based on their GDP growth percentage in descending order.
*/

select country,gdp_growth_percentage, rank() over(order by gdp_growth_percentage desc) as growth_rank
from world_gdp.world_gdp;