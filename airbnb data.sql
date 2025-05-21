-- total host listings
SELECT SUM(HOST_LISTINGS_COUNT) FROM AIRBNB;
-- Number of hosts in the table
SELECT COUNT(DISTINCT HOST_NAME) AS COUNT_NAME from airbnb;
-- Host names with total host listings
SELECT DISTINCT HOST_NAME, MAX(HOST_LISTINGS_COUNT) AS HIGHEST_COUNT
FROM AIRBNB
GROUP BY HOST_NAME
order by HIGHEST_COUNT DESC;
-- highest cost of an airbnb
SELECT MAX(PRICE) FROM AIRBNB;
-- avg price of an airbnb
select CEIL(AVG(price)) AS avg_price from airbnb;
-- Minimum cost of an airbnb
SELECT MIN(PRICE) AS MIN_PRICE FROM AIRBNB;
-- Average price for a house
SELECT CEIL(avg(PRICE)) AS AVG_PRICE, PROPERTY_TYPE
FROM AIRBNB
WHERE PROPERTY_TYPE = "HOUSE"
GROUP BY PROPERTY_TYPE;
-- Average price of an apt
SELECT CEIL(AVG(PRICE)) AS AVG_PRICE, PROPERTY_TYPE
FROM AIRBNB
WHERE PROPERTY_TYPE = "APARTMENT"
GROUP BY PROPERTY_TYPE;
-- average price of Condominium
SELECT CEIL(AVG(PRICE)) AS AVG_PRICE, PROPERTY_TYPE
FROM AIRBNB
WHERE PROPERTY_TYPE = "Condominium"
GROUP BY PROPERTY_TYPE;
-- Average price of living in a neighbourhood
SELECT CEIL(AVG(PRICE)) AS AVG_PRICE, NEIGHBOURHOOD FROM AIRBNB
GROUP BY NEIGHBOURHOOD
ORDER BY CEIL(AVG(PRICE)) DESC
LIMIT 15
;
-- host response time with listings
SELECT host_response_time, COUNT(*) AS listings_count
FROM airbnb
GROUP BY host_response_time;
-- Neighbourhood and their average ratings
SELECT neighbourhood, CEIL(AVG(review_scores_rating)) AS avg_rating
FROM airbnb
GROUP BY neighbourhood
ORDER BY avg_rating DESC;