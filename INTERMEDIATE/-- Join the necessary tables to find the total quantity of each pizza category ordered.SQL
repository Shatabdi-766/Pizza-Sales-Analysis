-- Join the necessary tables to find the total quantity of each pizza category ordered.
SELECT 
    PT.CATEGORY, SUM(OD.QUANTITY) AS TOTAL_QUANTITY
FROM
    pizzas PI
        INNER JOIN
    pizza_types PT ON PI.pizza_type_id = PT.pizza_type_id
        INNER JOIN
    order_details OD ON OD.PIZZA_ID = PI.pizza_id
GROUP BY 1
ORDER BY 2 DESC;