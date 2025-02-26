-- Determine the distribution of orders by hour of the day.
SELECT 
    HOUR(ORDER_TIME) AS HOUR, COUNT(ORDER_ID) AS TOTAL_ORDER
FROM
    ORDERS
GROUP BY 1
ORDER BY 2 DESC;