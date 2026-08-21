# 🍽️ Restaurant Orders Data Analysis 

## 📌 Project Overview

This project analyzes restaurant order data using **PostgreSQL** to uncover insights related to sales performance, customer behavior, food item popularity, payment methods, and ordering patterns.

The project follows a structured SQL analysis process, starting with data exploration and quality checks, followed by sales, customer, payment, and time-based analysis. Advanced SQL concepts such as **CTEs, subqueries, window functions, and ranking functions** are also used to gain deeper insights from the data.

---

## 🎯 Project Objectives

The main objectives of this project are to:

* Explore and understand the restaurant orders dataset.
* Perform data quality checks for duplicate and missing values.
* Calculate overall revenue generated from restaurant orders.
* Identify the best-performing food categories and food items.
* Analyze customer spending and repeat customers.
* Examine payment method usage and revenue contribution.
* Identify peak ordering hours and high-performing sales dates.
* Apply advanced SQL techniques to rank and compare food item performance.

---

## 🛠️ Tools Used

* **PostgreSQL**
* **pgAdmin**

---

## 📂 Dataset Description

The dataset contains **500 restaurant orders** and includes the following columns:

| Column           | Description                             |
| ---------------- | --------------------------------------- |
| `order_id`       | Unique identifier for each order        |
| `customer_name`  | Name of the customer                    |
| `food_item`      | Food item ordered                       |
| `category`       | Category of the food item               |
| `quantity`       | Quantity of the item ordered            |
| `price`          | Price of the food item                  |
| `payment_method` | Payment method used for the order       |
| `order_time`     | Date and time when the order was placed |

The dataset covers orders from **January 1, 2025, to August 14, 2025**.

---

# 🔍 Analysis Performed

The project is divided into five major sections.

## 1️⃣ Data Exploration and Quality Checks

The initial analysis focused on understanding the dataset and checking its quality.

### Questions explored:

1. How many total orders are there?
2. How many unique customers are there?
3. What food categories and food items are available?
4. What is the date range of the orders?
5. Are there any duplicate order IDs or missing values?

### Key Findings

* The dataset contains **500 total orders**.
* There are **497 unique customers**.
* The restaurant offers **3 food categories**:

  * Main
  * Starter
  * Dessert
* No duplicate order IDs were found.
* No missing values were found in the dataset.

---

## 2️⃣ Sales and Product Analysis

This section focuses on revenue generation and food item performance.

Revenue was calculated using:

```sql
quantity * price
```

### Questions explored:

6. What is the total revenue generated from all orders?
7. Which food category generates the highest revenue?
8. Which food item generates the highest revenue?
9. Which food item has the highest quantity sold?
10. What are the top 5 highest-value orders?

### Key Findings

* The restaurant generated a total revenue of **20,023.14**.
* The **Main** category generated the highest revenue at **7,026.79**.
* **Pizza** was the highest revenue-generating food item with **2,627.89** in revenue.
* **Pizza** also had the highest quantity sold, with **200 units**.
* The highest-value order was worth **124.40**.

---

## 3️⃣ Customer and Payment Analysis

This section analyzes customer purchasing behavior and payment preferences.

### Questions explored:

11. Who are the top 5 customers based on total spending?
12. Which customers have placed more than one order?
13. What is the average amount spent per customer?
14. Which payment methods generate the most orders and revenue?

### Key Findings

* Only **3 customers** placed more than one order, indicating that most customers placed a single order.
* The average spending per customer was approximately **40.29**.
* **Cash** was the most frequently used payment method with **132 orders**.
* **Credit Card** generated the highest revenue at **5,322.98**.
* Credit Card payments also had the highest average order value among the available payment methods.

---

## 4️⃣ Time-Based Analysis

The `order_time` column was used to analyze ordering and revenue patterns.

### Questions explored:

15. Which hour of the day receives the highest number of orders?
16. Which hour generates the highest revenue?
17. Which date generated the highest sales?

### Key Findings

* The busiest ordering hour was **14:00 (2 PM)** with **30 orders**.
* The highest revenue-generating hour was **08:00 (8 AM)** with revenue of **1,372.59**.
* The highest sales were recorded on **March 14, 2025**, generating **392.96** in revenue.

This shows that the hour with the highest number of orders was different from the hour that generated the highest revenue.

---

## 5️⃣ Advanced SQL Analysis

The final section applies advanced SQL concepts to analyze and compare food item performance.

### Questions explored:

18. Rank all food items based on total revenue.
19. Find the top-performing food item within each category.
20. Identify food items generating above-average revenue.

### Key Findings

The food items ranked highest by revenue were:

| Rank | Food Item |  Revenue |
| ---- | --------- | -------: |
| 1    | Pizza     | 2,627.89 |
| 2    | Brownie   | 2,570.19 |
| 3    | Fries     | 2,340.48 |
| 4    | Pasta     | 2,267.73 |
| 5    | Cake      | 2,236.58 |

### Top-performing food item in each category

| Category | Food Item |  Revenue |
| -------- | --------- | -------: |
| Main     | Pizza     | 2,627.89 |
| Dessert  | Brownie   | 2,570.19 |
| Starter  | Fries     | 2,340.48 |

The food items generating above-average revenue were:

* Pizza
* Brownie
* Fries
* Pasta
* Cake

---

# 🧠 SQL Concepts Used

This project demonstrates a range of SQL concepts, including:

* `SELECT`
* `DISTINCT`
* `COUNT()`
* `SUM()`
* `AVG()`
* `MIN()`
* `MAX()`
* `GROUP BY`
* `HAVING`
* `ORDER BY`
* `LIMIT`
* `FILTER`
* `EXTRACT()`
* `DATE()`
* Subqueries
* Common Table Expressions (CTEs)
* Window Functions
* `RANK()`
* `PARTITION BY`

---

# 📁 Project Structure

```text
restaurant-orders-data-analysis/
│
├── restaurant_orders_data.sql
├── restaurant_orders.csv
└── README.md
```

---

# 🚀 How to Run the Project

1. Download or clone this repository.
2. Create a database in PostgreSQL.
3. Open **pgAdmin** and connect to the database.
4. Create the `food_orders` table using the provided SQL script.
5. Import the restaurant orders dataset into the table.
6. Run the SQL queries to explore and analyze the data.

---

# 📊 Key Business Insights

* The dataset contains **500 orders** from **497 unique customers**.
* **Main** was the highest revenue-generating food category.
* **Pizza** was both the highest revenue-generating and most frequently sold food item.
* **Credit Card** generated the highest total revenue, while **Cash** was the most frequently used payment method.
* **2 PM** received the highest number of orders, while **8 AM** generated the highest revenue.
* **Brownie**, **Pizza**, and **Fries** were the best-performing items in their respective categories.
* More than half of the food items generated revenue above the average food item revenue.

---

# 📌 Conclusion

This project demonstrates how **PostgreSQL** can be used to transform raw restaurant order data into meaningful business insights.

The analysis covers the complete journey from initial data exploration and quality checks to sales analysis, customer behavior, payment preferences, time-based trends, and advanced analytical queries.

Through this project, I practiced important SQL concepts such as **aggregation, filtering, grouping, subqueries, CTEs, window functions, and ranking functions**, while answering practical business questions based on restaurant transaction data.

## 👤 Author

**Soumya**

Aspiring Data Analyst

**Skills:** PostgreSQL | SQL | Python | Excel | Tableau | Power BI
