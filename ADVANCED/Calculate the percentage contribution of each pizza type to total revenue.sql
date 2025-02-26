-- Calculate the percentage contribution of each pizza type to total revenue.
SELECT 
    PT.category,
    ROUND((ROUND(SUM((PI.PRICE * OD.QUANTITY)), 0)) / (SELECT 
                    ROUND(SUM((QUANTITY * PRICE)), 2)
                FROM
                    order_details O
                        INNER JOIN
                    pizzas P ON O.PIZZA_ID = P.pizza_id),
            2) * 100 AS PERCENTAGE_REVENUE
FROM
    pizza_types PT
        INNER JOIN
    pizzas PI ON PT.pizza_type_id = PI.pizza_type_id
        INNER JOIN
    order_details OD ON OD.PIZZA_ID = PI.pizza_id
GROUP BY 1
ORDER BY 2 DESC
LIMIT 3;
