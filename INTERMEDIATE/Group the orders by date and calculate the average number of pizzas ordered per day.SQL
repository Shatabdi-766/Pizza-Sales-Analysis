-- Group the orders by date and calculate the average number of pizzas ordered per day.
SELECT 
    ROUND(AVG(TOTAL_QUANTITY), 0) AS average_number_of_pizzas_per_day
FROM
    (SELECT 
        OO.ORDER_DATE, SUM(OD.QUANTITY) AS TOTAL_QUANTITY
    FROM
        orders OO
    INNER JOIN order_details OD ON OO.ORDER_ID = OD.ORDER_ID
    GROUP BY 1) AS ORDER_QUANTITY;