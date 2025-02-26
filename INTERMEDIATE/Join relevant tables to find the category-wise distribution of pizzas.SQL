-- Join relevant tables to find the category-wise distribution of pizzas.
SELECT 
    CATEGORY, COUNT(NAME) AS NAME_COUNT
FROM
    pizza_types
GROUP BY 1
ORDER BY 2 DESC;