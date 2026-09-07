# 🍫 Chocolate Retail Sales & Customer Analysis
## 📌 Project Overview

This project analyzes 1 million chocolate retail transactions across 2023 and 2024 using Oracle SQL.

The analysis focuses on sales performance, product and brand performance, store and geographic performance, customer behavior,
loyalty membership, and discount impact.

## 🎯 Business Objectives

- Analyze overall sales and profitability.
- Identify top-performing products, brands, and categories.
- Compare store types and countries.
- Understand customer purchasing behavior.
- Compare loyalty and non-loyalty customers.
- Analyze the relationship between discounts and sales performance.
- Perform data quality and validation checks.
  
## 🗂️ Dataset

|Dataset|	Records|
|--------|--------|
|Customers|	50,000|
|Products|	200|
|Stores|	100|
|Sales|	1,000,000|
|Calendar|	731|

The sales data contains transaction date, product, store, customer, quantity, unit price, discount,
revenue, cost, and profit.

## 🛠️ Tools & Technologies
- Oracle SQL
- SQL*Plus
- Relational database concepts
- Aggregate functions
- GROUP BY
- CASE
- JOIN
- Subqueries
- ROWNUM
- Data validation and quality checks
  
## 🔍 Analysis Performed

- Business Performance
- Total transactions, quantity, revenue, cost, and profit
- Average transaction value
- Overall profit margin
- Yearly and monthly performance
- Product Analysis
- Category performance
- Brand performance
- Top 10 products by revenue
- Top 10 products by profit
- Store & Geographic Analysis
- Store-type performance
- Country-level performance
- Customer Analysis
- Loyalty vs non-loyalty customers
- Average customer spending
- Top 10 customers
- Gender-based analysis
- Age-group analysis
- Discount Analysis
- Revenue and profit by discount level
- Average transaction value by discount
  
## 📊 Key Business Insights

- The business generated **25.49M** in revenue and **10.19M** in profit, with an overall **40%** profit margin.
- **2024** slightly outperformed **2023**, with revenue increasing from **12.74M** to **12.75M** while maintaining a 40% margin.
- **Praline** was the highest-performing category, generating **6.67M** revenue and **2.67M** profit.
- **Ferrero** was the leading brand with **4.69M** revenue and **1.88M** profit.
- **Airport** stores generated the **highest** revenue and profit among store types, with **7.61M** revenue and **3.05M** profit.
- **Canada** was the **top-performing country** with 5.09M revenue and 2.03M profit.
- Loyalty members generated slightly higher total revenue than non-loyalty members, but average revenue per customer was
  marginally higher for non-loyalty customers.
- The **56-65** age group generated the highest revenue at **4.89M** and the highest profit at **1.95M**.
- Higher discount levels were associated with lower average transaction value and lower total revenue, while profit margins
  remained close to 40%.
- **P0091** generated the **highest product** revenue at **131.81K**, while **P0107** generated the highest product profit at **52.90K**.
- Data validation found no duplicate IDs, NULL values, invalid sales values, or incorrect profit calculations.
- 9,764 sales records reference two product IDs, P0000 and P0201, that are not present in the product master table.

## 📁 Project Structure
```
Chocolate-Retail-Sales-SQL-Analysis/
│
├── data/
│   ├── customers.csv
│   ├── products.csv
│   ├── stores.csv
│   ├── sales.csv
│   └── calendar.csv
│
├── sql/
│   └── chocolate_retail_analysis.sql
│
├── README.md
```
## 💡 Conclusion

The analysis shows a stable and profitable retail business, with relatively consistent performance across years, products, brands, and customer segments.
Praline, Ferrero, Airport stores, and Canada emerged as the strongest contributors, while higher discounts were associated with lower transaction values.

## Author

**Soumya**
