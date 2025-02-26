-- List the top 5 most ordered pizza types along with their quantities
SELECT 
    PT.NAME, SUM(OD.QUANTITY) AS MOST_ORDERED
FROM
    pizza_types PT
        INNER JOIN
    pizzas PI ON PT.pizza_type_id = PI.pizza_type_id
        INNER JOIN
    order_details OD ON OD.PIZZA_ID = PI.pizza_id
GROUP BY 1
ORDER BY 2 DESC
LIMIT 5;