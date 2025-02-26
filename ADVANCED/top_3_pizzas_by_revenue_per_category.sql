-- Determine the top 3 most ordered pizza types based on revenue for each pizza category.

 SELECT NAME, CATEGORY, REVENUE
 FROM
 
(SELECT CATEGORY, NAME, REVENUE, RANK() OVER (partition by category ORDER BY REVENUE DESC) AS CAT_REV
FROM 

(SELECT 
    PT.NAME,PT.category, ROUND(SUM((PI.PRICE * OD.QUANTITY)), 0) AS REVENUE
FROM
    pizza_types PT
        INNER JOIN
    pizzas PI ON PT.pizza_type_id = PI.pizza_type_id
        INNER JOIN
    order_details OD ON OD.PIZZA_ID = PI.pizza_id
GROUP BY 1,2) AS A ) 
AS B
WHERE CAT_REV <=3;
