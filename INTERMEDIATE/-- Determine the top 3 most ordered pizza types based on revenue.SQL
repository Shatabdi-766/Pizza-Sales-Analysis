-- Determine the top 3 most ordered pizza types based on revenue.

SELECT 
    PT.NAME, ROUND(SUM((PI.PRICE * OD.QUANTITY)), 0) AS REVENUE
FROM
    pizza_types PT
        INNER JOIN
    pizzas PI ON PT.pizza_type_id = PI.pizza_type_id
        INNER JOIN
    order_details OD ON OD.PIZZA_ID = PI.pizza_id
GROUP BY 1
ORDER BY 2 DESC
LIMIT 3;
