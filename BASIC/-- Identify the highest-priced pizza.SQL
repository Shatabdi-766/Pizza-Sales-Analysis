-- Identify the highest-priced pizza
SELECT 
    PI.price, PT.NAME
FROM
    pizzas PI
        INNER JOIN
    pizza_types PT ON PI.pizza_type_id = PT.pizza_type_id
ORDER BY 1 DESC
LIMIT 1;