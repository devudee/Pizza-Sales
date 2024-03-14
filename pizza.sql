select *
from PizzaSales

SELECT DATENAME (DW,order_date) AS Order_day, COUNT(DISTINCT order_id) AS Total_orders
FROM PizzaSales
GROUP BY DATENAME (DW,order_date)


--total revenue:
SELECT SUM(total_price) AS Total_Revenue
FROM PizzaSales 

--Average order value
SELECT SUM(total_price)/ COUNT(DISTINCT order_id) AS Average_Order_Value
FROM PizzaSales

SELECT SUM(quantity) AS Total_Pizza_Sold
FROM PizzaSales

SELECT COUNT (DISTINCT order_id) AS Total_Order
FROM PizzaSales


SELECT CAST (CAST(SUM(quantity) AS DECIMAL(10,2)) / CAST(COUNT (DISTINCT order_id) AS DECIMAL(10, 2))AS DECIMAL(10, 2)) AS Average_pizza_per_order
FROM PizzaSales 


SELECT DATENAME(MONTH, order_date) AS Month_Name, COUNT(DISTINCT order_id) AS Total_Orders
FROM PizzaSales
GROUP BY DATENAME(MONTH, order_date) 
ORDER BY Total_Orders DESC

select *
from PizzaSales

SELECT pizza_category, sum(total_price) * 100 / (SELECT SUM(total_price) from Pizza_Sales) AS Total_Sales
FROM PizzaSales 
where MONTH(order_date) = 1
GROUP BY pizza_category

SELECT pizza_category, sum(total_price) * 100 / (SELECT SUM(total_price) from Pizza_Sales) AS Total_Sales
FROM PizzaSales 
GROUP BY pizza_category

SELECT TOP 5 pizza_name, SUM(total_price) AS Total_Revenue FROM PizzaSales
GROUP BY pizza_name
ORDER BY Total_Revenue DESC
 
 SELECT TOP 5 pizza_name, SUM(total_price) AS Total_Revenue FROM PizzaSales
GROUP BY pizza_name
ORDER BY Total_Revenue ASC


SELECT TOP 5 pizza_name, SUM(quantity) AS Total_Quantity FROM PizzaSales
GROUP BY pizza_name
ORDER BY Total_Quantity ASC
 