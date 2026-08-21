CREATE TABLE food_orders (
    order_id INTEGER,
    customer_name VARCHAR(100),
    food_item VARCHAR(100),
    category VARCHAR(50),
    quantity INTEGER,
    price NUMERIC(10,2),
    payment_method VARCHAR(50),
    order_time TIMESTAMP
);
SELECT * FROM food_Orders Limit 5 ;

/* Q1. How many total orders are there ? */

SELECT COUNT(*) AS total_orders 
FROM food_orders; 

TOTAL_ORDERS
------------
         500

/*Q2. How many unique customers are there ?*/

SELECT COUNT(DISTINCT customer_name ) as unique_customers 
FROM food_orders;

UNIQUE_CUSTOMERS
----------------
             497

/*Q3. What food categories and food items are available */

SELECT DISTINCT category 
FROM food_orders 
ORDER BY category ;

CATEGORY
--------------------------------------------------
Dessert
Main
Starter

/* Q4. What is the date range of the orders? */


SELECT 
    MIN(order_time) AS first_order,
    MAX(order_time) AS last_order
FROM food_orders;

FIRST_ORDER
---------------------------------------------------------------------------
LAST_ORDER
---------------------------------------------------------------------------
01-JAN-25 01.36.17.000000 AM
14-AUG-25 07.20.06.000000 AM

/* Q5. Are there any duplicate Order IDs or missing values? */

SELECT 
    order_id,
    COUNT(*) AS duplicate_count
FROM food_orders
GROUP BY order_id
HAVING COUNT(*) > 1;

no rows selected


SELECT
    COUNT(*) FILTER (WHERE order_id IS NULL) AS missing_order_id,
    COUNT(*) FILTER (WHERE customer_name IS NULL) AS missing_customer_name,
    COUNT(*) FILTER (WHERE food_item IS NULL) AS missing_food_item,
    COUNT(*) FILTER (WHERE category IS NULL) AS missing_category,
    COUNT(*) FILTER (WHERE quantity IS NULL) AS missing_quantity,
    COUNT(*) FILTER (WHERE price IS NULL) AS missing_price,
    COUNT(*) FILTER (WHERE payment_method IS NULL) AS missing_payment_method,
    COUNT(*) FILTER (WHERE order_time IS NULL) AS missing_order_time
FROM food_orders;

MISSING_ORDER_ID MISSING_CUSTOMER_NAME MISSING_FOOD_ITEM MISSING_CATEGORY
---------------- --------------------- ----------------- ----------------
MISSING_QUANTITY MISSING_PRICE MISSING_PAYMENT_METHOD MISSING_ORDER_TIME
---------------- ------------- ---------------------- ------------------
               0                     0                 0                0
               0             0                      0                  0


/* Q6. What is the total revenue generated from all orders? */ 

SELECT  sum(price*quantity) as total_revenue 
FROM food_orders ; 

TOTAL_REVENUE
-------------
     20023.14

/*Q7.Which food category generates the highest revenue? */ 

SELECT category , sum(price*quantity) as revenue 
FROM food_orders
GROUP BY category 
ORDER BY revenue DESC ; 

CATEGORY                                              REVENUE
-------------------------------------------------- ----------
Main                                                  7026.79
Dessert                                               6509.99
Starter                                               6486.36


/*Q8.Which food item generates the highest revenue? */ 

SELECT food_item , sum(price*quantity) as revenue 
FROM food_orders 
GROUP BY food_item
ORDER BY revenue DESC;

FOOD_ITEM                                             REVENUE
-------------------------------------------------- ----------
Pizza                                                 2627.89
Brownie                                               2570.19
Fries                                                 2340.48
Pasta                                                 2267.73
Cake                                                  2236.58
Burger                                                2131.17
Salad                                                 2095.22
Soup                                                  2050.66
Ice Cream                                             1703.22


/*Q9.Which food item has the highest quantity sold? */ 

SELECT 
    food_item,
    SUM(quantity) AS total_quantity_sold
FROM food_orders
GROUP BY food_item
ORDER BY total_quantity_sold DESC;
FOOD_ITEM                                          TOTAL_QUANTITY_SOLD
-------------------------------------------------- -------------------
Pizza                                                              200
Brownie                                                            192
Fries                                                              179
Burger                                                             169
Cake                                                               164
Salad                                                              159
Pasta                                                              154
Soup                                                               150
Ice Cream                                                          148



/*Q10.What are the top 5 highest-value orders? */

SELECT 
    order_id,
    customer_name,
    food_item,
    quantity,
    price,
    quantity * price AS order_value
FROM food_orders
ORDER BY order_value DESC
LIMIT 5;

 ORDER_ID
----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
FOOD_ITEM                                            QUANTITY      PRICE
-------------------------------------------------- ---------- ----------
ORDER_VALUE
-----------
      8460
Christopher Dunlap
Soup                                                        5      24.88
      124.4


  ORDER_ID
----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
FOOD_ITEM                                            QUANTITY      PRICE
-------------------------------------------------- ---------- ----------
ORDER_VALUE
-----------
      6634
Sara Graham
Pasta                                                       5      24.87
     124.35


  ORDER_ID
----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
FOOD_ITEM                                            QUANTITY      PRICE
-------------------------------------------------- ---------- ----------
ORDER_VALUE
-----------
      3304
Ashley Davis
Pasta                                                       5      24.02
      120.1


  ORDER_ID
----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
FOOD_ITEM                                            QUANTITY      PRICE
-------------------------------------------------- ---------- ----------
ORDER_VALUE
-----------
      9126
Dale Salinas
Brownie                                                     5      23.28
      116.4


  ORDER_ID
----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
FOOD_ITEM                                            QUANTITY      PRICE
-------------------------------------------------- ---------- ----------
ORDER_VALUE
-----------
      4525
Kimberly Carter
Salad                                                       5      23.15
     115.75


/*Q11.Who are the top 5 customers based on total spending? */ 

SELECT customer_name , sum(quantity*price) as total_spending 
FROM food_orders 
GROUP BY  customer_name 
ORDER BY total_spending
LIMIT 5;

CUSTOMER_NAME
--------------------------------------------------------------------------------
TOTAL_SPENDING
--------------
Christopher Dunlap
         124.4

Sara Graham
        124.35

Ashley Davis
         120.1


CUSTOMER_NAME
--------------------------------------------------------------------------------
TOTAL_SPENDING
--------------
Dale Salinas
         116.4

Kimberly Carter
        115.75



/*Q12.Which customers have placed more than one order? */

SELECT customer_name,
       COUNT(order_id) AS total_orders 
FROM food_orders 
GROUP BY customer_name 
HAVING count(order_id)>1 
ORDER BY total_orders DESC ; 

CUSTOMER_NAME
--------------------------------------------------------------------------------
TOTAL_ORDERS
------------
Christopher Rodriguez
           2

Jonathan Turner
           2

Michael Smith
           2

/*Q13.What is the average amount spent per customer? */

SELECT 
    AVG(total_spent) AS average_spending_per_customer
FROM (
    SELECT 
        customer_name,
        SUM(quantity * price) AS total_spent
    FROM food_orders
    GROUP BY customer_name
) AS customer_spending;

AVERAGE_SPENDING_PER_CUSTOMER
-----------------------------
  40.288008

/*Q14.Payment Method Analysis*/ 

SELECT 
    payment_method,
    COUNT(order_id) AS total_orders,
    SUM(quantity * price) AS total_revenue,
    AVG(quantity * price) AS average_order_value
FROM food_orders
GROUP BY payment_method
ORDER BY total_revenue DESC;

PAYMENT_METHOD                                     TOTAL_ORDERS TOTAL_REVENUE
-------------------------------------------------- ------------ -------------
AVERAGE_ORDER_VALUE
-------------------
Credit Card                                                 128       5322.98
         41.5857813

Cash                                                        132       5197.68
         39.3763636

Online Payment                                              121       4881.75
         40.3450413


PAYMENT_METHOD                                     TOTAL_ORDERS TOTAL_REVENUE
-------------------------------------------------- ------------ -------------
AVERAGE_ORDER_VALUE
-------------------
Debit Card                                                  119       4620.73
         38.8296639

/*Q15. Which hour of the day receives the highest number of orders? */ 

SELECT 
    EXTRACT(HOUR FROM order_time) AS order_hour,
    COUNT(order_id) AS total_orders
FROM food_orders
GROUP BY order_hour
ORDER BY total_orders DESC;

ORDER_HOUR TOTAL_ORDERS
---------- ------------
        14           30


/*16.Which hour generates the highest revenue? */

SELECT 
    EXTRACT(HOUR FROM order_time) AS order_hour,
    SUM(quantity * price) AS total_revenue
FROM food_orders
GROUP BY order_hour
ORDER BY total_revenue DESC;

ORDER_HOUR TOTAL_REVENUE
---------- -------------
         8       1372.59

/* Q17.Which date generated the highest sales? */ 

SELECT 
    DATE(order_time) AS order_date,
    SUM(quantity * price) AS total_revenue
FROM food_orders
GROUP BY order_date
ORDER BY total_revenue DESC;

ORDER_DAT TOTAL_REVENUE
--------- -------------
14-MAR-25        392.96


/*Q18.Rank all food items based on total revenue */ 

SELECT 
    food_item,
    SUM(quantity * price) AS total_revenue,
    RANK() OVER (ORDER BY SUM(quantity * price) DESC) AS revenue_rank
FROM food_orders
GROUP BY food_item;

FOOD_ITEM                                          TOTAL_REVENUE REVENUE_RANK
-------------------------------------------------- ------------- ------------
Pizza                                                    2627.89            1
Brownie                                                  2570.19            2
Fries                                                    2340.48            3
Pasta                                                    2267.73            4
Cake                                                     2236.58            5
Burger                                                   2131.17            6
Salad                                                    2095.22            7
Soup                                                     2050.66            8
Ice Cream                                                1703.22            9


/* Q19.Find the top-performing food item within each category */

WITH food_revenue AS (
    SELECT 
        category,
        food_item,
        SUM(quantity * price) AS total_revenue
    FROM food_orders
    GROUP BY category, food_item
),
ranked_food AS (
    SELECT 
        category,
        food_item,
        total_revenue,
        RANK() OVER (
            PARTITION BY category 
            ORDER BY total_revenue DESC
        ) AS revenue_rank
    FROM food_revenue
)
SELECT 
    category,
    food_item,
    total_revenue
FROM ranked_food
WHERE revenue_rank = 1;

CATEGORY
--------------------------------------------------
FOOD_ITEM                                          TOTAL_REVENUE
-------------------------------------------------- -------------
Dessert
Brownie                                                  2570.19

Main
Pizza                                                    2627.89

Starter
Fries                                                    2340.48


/*Q20. Which food items generate above-average revenue? */ 

WITH food_revenue AS (
    SELECT 
        food_item,
        SUM(quantity * price) AS total_revenue
    FROM food_orders
    GROUP BY food_item
)
SELECT 
    food_item,
    total_revenue
FROM food_revenue
WHERE total_revenue > (
    SELECT AVG(total_revenue)
    FROM food_revenue
)
ORDER BY total_revenue DESC;

FOOD_ITEM                                          TOTAL_REVENUE
-------------------------------------------------- -------------
Pizza                                                    2627.89
Brownie                                                  2570.19
Fries                                                    2340.48
Pasta                                                    2267.73
Cake                                                     2236.58







