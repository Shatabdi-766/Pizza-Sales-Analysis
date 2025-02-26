-- Calculate the total revenue generated from pizza sales
SELECT 
    ROUND(SUM((QUANTITY * PRICE)), 2) AS TOTAL_REVENUE
FROM
    order_details O
        INNER JOIN
    pizzas P ON O.PIZZA_ID = P.pizza_id;
