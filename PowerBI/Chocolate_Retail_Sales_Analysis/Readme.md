# 🍫 Chocolate Retail Sales & Customer Analysis

## 📌 Project Overview

This Power BI project analyzes 1 million chocolate retail
transactions across 2023 and 2024.

The dashboard focuses on sales performance, profitability, product and
brand performance, customer behavior, loyalty membership, store
performance, geography, and discount levels.

## 🎯 Business Objectives

- Analyze overall revenue, profit, and transaction performance.

- Identify top-performing categories, brands, and products.

- Compare sales performance across countries and store types.

- Understand customer purchasing behavior.

- Compare loyalty and non-loyalty customers.

- Analyze revenue across age groups and gender.

- Examine revenue patterns across discount levels.

- Present key business insights through an interactive Power BI
  dashboard.

## 🗂️ Dataset

|Table| Records|
|-----|--------|
|Customers| 50,000|
|Products| 200|
|Stores | 100|
|Sales | 1,000,000|
|Calendar| 731|

### Key Sales Fields

- Order ID

- Order Date

- Customer ID

- Product ID

- Store ID

- Quantity

- Unit Price

- Discount

- Revenue

- Cost

- Profit

## 🛠️ Tools & Technologies

- Power BI Desktop

- DAX

- Power Query

- Data Modeling


## 🧩 Data Model

The project uses a relational model containing:

- Sales as the main transaction table

- Customers for customer information

- Products for product and brand information

- Stores for store and geographic information

- Calendar for date analysis

- Calculated columns were created in Power BI for:

  -Age Group

  -Loyalty Status

## 📊 Dashboard Pages

### 1. Sales Overview

- Total Revenue

- Total Profit

- Profit Margin

- Total Transactions

- Total Quantity

- Revenue by Year

- Revenue by Month

- Year, Country, and Brand slicers

### 2. Product & Brand Analysis

- Revenue by Category

- Revenue by Brand

- Top 10 Products by Revenue

- Top 10 Products by Profit

### 3. Customer Analysis

- Revenue by Age Group

- Revenue by Loyalty Status

- Revenue by Gender

- Top 10 Customers by Revenue

### 4. Store & Geographic Analysis

- Revenue by Country

- Profit by Country

- Revenue by Store Type

- Revenue by Discount

## 📈 Key Business Insights

- Total revenue was $25.49M, with $10.19M profit and an overall 40% profit margin.

- 2024 slightly outperformed 2023, while overall performance remained very stable.

- **Praline** was the highest-performing category, generating approximately $6.67M revenue.

- **Ferrero** was the highest-performing brand, generating approximately $4.69M revenue.

- Airport stores generated the highest revenue among store types, at approximately $7.61M.

- **Canada** generated the highest revenue among the countries analyzed, at approximately $5.09M.

- The **56--65** age group generated the highest total revenue, at approximately $4.89M.

- Revenue was almost evenly split between male and female customers.

- Loyalty members generated slightly higher total revenue, while average revenue per customer was very similar between the two
  groups.

- Higher discount levels were associated with lower average transaction values and lower total revenue, while overall profit
  margins remained close to 40%.

- **P0091** was the top product by revenue at approximately $131.81K.

- **P0107** was the top product by profit at approximately $52.90K.

## 🔎 Data Quality Checks

The analysis included checks for:

- Duplicate customer IDs

- Duplicate store IDs

- Duplicate order IDs

- Duplicate product IDs

- NULL values

- Invalid quantities

- Invalid unit prices

- Invalid discount values

- Negative revenue

- Negative cost

- Profit calculation consistency

**No duplicates, NULLs, invalid sales values, or profit calculation errors
were identified in the validation checks.**

**However, 9,764 sales records reference product IDs that are not
present in the Products table. The unmatched IDs are P0000 and
P0201.**

## 💡 Conclusion

- The dashboard shows a stable and profitable chocolate retail business across 2023--2024.

- The strongest performance comes from Praline products, Ferrero, Airport stores, and Canada, while customer behavior remains relatively
  consistent across gender and loyalty groups.

- The project demonstrates the use of Power BI, DAX, data modeling, interactive visuals, and SQL-based analysis to convert transactional
  data into useful business insights.

## 📁 Project Structure
```
Chocolate-Retail-Sales/
│
├── Chocolate_Retail_Sales.pbix
|── README.md
```
## 👤 Project Type

**End-to-End Data Analytics / Business Intelligence Project**

**Focus: Sales, Product, Customer, Store & Geographic Analysis**

# **Author**

**Soumya**
