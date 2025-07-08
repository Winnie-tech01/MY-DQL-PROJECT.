-- QUESTION 1 - Retrieve all customers and sort the results by country and then by the highest score.

USE mydatabase;

SELECT *
FROM customers
WHERE country IN ("usa", "germany","uk")
ORDER BY score DESC;

/* QUESTION 2 - Retrieve the name, country, and score of customers whose score is not equal to 0 and sort 
the results by the highest score first. */

SELECT first_name, country, score
FROM customers
WHERE NOT score = 0
ORDER BY score DESC;

/* QUESTION 3 - Find the average score for each country and return only those countries with an average 
score greater than 430. */

SELECT AVG (score) AS AVG_score, country
FROM customers
GROUP BY country
HAVING AVG_score > 430;

/* QUESTION 4 -  Find the average score for each country, considering only customers with a score not 
equal to 0 and return only those countries with an average score greater than 430. */

SELECT AVG (score) AS AVG_SCORE, country
FROM customers
WHERE NOT score = 0
GROUP BY country
HAVING AVG_score > 430;

-- QUESTION 5 - Retrieve the top 3 customers with the highest scores.

SELECT *
FROM customers
ORDER BY score DESC
LIMIT 3;

/* QUESTION 6 - Calculate the average score of each country, considering only customers with a score not equal to 0
and return only those countries with an average score greater than 430 and sort the results by the highest score first. */

SELECT AVG (score) AS AVG_SCORE, COUNTRY
FROM customers
WHERE NOT score = 0
GROUP BY country
HAVING AVG_SCORE > 430
ORDER BY AVG_SCORE DESC;

-- QUESTION 7 - Retrieve all customers who are not from Germany.

SELECT *
FROM customers
WHERE NOT country = "Germany";

-- QUESTION 8 - Retrieve all customers from either Germany or the USA.

SELECT *
FROM customers
WHERE country = "Germany"
OR country = "USA";

-- QUESTION 9 - Find all customers whose first name has 'r' in the third position.

SELECT *
FROM customers
WHERE first_name LIKE "__r%";

-- QUESTION 10 - Retrieve the first two characters of each first name.

SELECT first_name,
LEFT(trim(first_name),2) AS ABREV_NAME
FROM customers;

-- QUESTION 11 - Retrieve the last two characters pf each first name.``

SELECT first_name,
RIGHT(trim(first_name),2) AS ABREV_NAME
FROM customers;

-- QUESTION 12 - Retrieve all customers whose score falls in the range between 100 and 500.

SELECT *
FROM customers 
WHERE score BETWEEN 100 AND 500;
