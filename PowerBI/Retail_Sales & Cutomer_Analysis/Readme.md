# 🛍️ Retail Sales & Customer Analysis Dashboard
## 📌 Project Overview

This project presents an interactive Retail Sales & Customer Analysis Dashboard built using Power BI.

The objective of this project is to analyze retail transaction data from different perspectives, 
including sales performance, customer behavior, product performance, payment methods, discounts, and customer segmentation.

The dashboard enables users to interact with the data using slicers and quickly identify important business trends and customer insights.

## 🎯 Business Objectives

The project focuses on answering key business questions such as:

- What is the overall revenue and transaction performance?
- How does revenue change over time?
- Which product categories generate the most revenue?
- Which cities contribute the most to revenue?
- How does revenue vary across membership levels?
- Which payment methods are most commonly associated with revenue?
- Which brands and products generate the highest revenue?
- How do discounts affect revenue and Average Order Value?
- How are customers distributed across different RFM segments?
- Which customer segments contribute the most revenue?
### 🗂️ Dataset

The project uses four datasets:

|Dataset|	Description|
|--------|------------|
|**customers.csv**|	Customer demographic and membership information|
|**products.csv**|	Product, category, brand and pricing information|
|**transactions.csv**|	Transaction-level sales information|
|**data_dictionary.csv**|	Description of dataset fields|


### Main Data Fields

Customers
```
Customer ID
Age
Gender
City
Membership
Join Date
```
Products
```
Product ID
Product Name
Category
Brand
Price
```
Transactions
```
Transaction ID
Customer ID
Product ID
Purchase Date
Quantity
Unit Price
Discount
Payment Method
Total Amount
```
## 🛠️ Tools & Technologies
- Power BI
- Power Query
- DAX
- Data Modeling
- Interactive Dashboard Design
- RFM Customer Segmentation
  
## 📊 Dashboard Structure

The dashboard is divided into three analytical sections.

1. Sales Overview
   
- Overall KPIs: Revenue, Transactions, Quantity, AOV, Customers.
- Monthly Revenue Trend.
- Revenue by Category, City, Membership, and Payment Method.
- Interactive filters for Year, Category, City, and Membership.
  
2. Customer & RFM Analysis
   
- Customer and Average Revenue per Customer KPIs.
- RFM-based customer segmentation.
- Revenue and customer distribution by segment.
- Filters for City, Membership, and Customer Segment.
  
3. Product & Sales Analysis
   
- Top 10 Brands and Products by Revenue.
- Revenue & AOV by Discount Level.
- Revenue by Payment Method.
- Filters for Year, Category, Brand, and Payment Method.
  
## 💡 Key Business Insights

- Generated 13.69M revenue from 20K transactions with an AOV of 684.46.
- Books generated the highest category revenue at approximately 2.86M.
- Miami was the top-performing city with approximately 3.10M revenue.
- Platinum and Gold members each generated around 4.8M revenue.
- PayPal generated the highest payment-method revenue at approximately 3.52M.
- Brand 29 was the top-performing brand with approximately 777.5K revenue.
- Potential Loyalists generated the highest segment revenue, while Champions had the highest average revenue per customer.
- Higher discount levels were associated with lower revenue and AOV, with AOV falling from about 759 at 0% discount to 609 at 20%.
- The At Risk and Lost / Inactive segments indicate opportunities for customer-retention campaigns.

### 🔄 Data Analysis Workflow
```
Raw CSV Data
     ↓
Data Cleaning using Power Query
     ↓
Data Modeling & Relationships
     ↓
Date Table Creation
     ↓
DAX Measures
     ↓
RFM Customer Segmentation
     ↓
Interactive Power BI Dashboard
```
### 📐 Key DAX Measures

Some of the major measures used in the dashboard include:

``Total Revenue = SUM(Transactions[total_amount])``

``Total Transactions = DISTINCTCOUNT(Transactions[transaction_id])``

``Total Quantity = SUM(Transactions[quantity])``

``Average Order Value = DIVIDE (
    [Total Revenue],
    [Total Transactions]
)``

``Total Customers = DISTINCTCOUNT(Customers[customer_id])``

### 🧩 Data Model

The Power BI model connects the datasets using:
```
Customers ────────< Transactions >──────── Products
                         │
                         │
                         ▼
                     DateTable
```
This relational structure allows sales transactions to be analyzed by customer, product, date, category, city, membership, and other dimensions.

## 🚀 Project Highlights

- Interactive Power BI dashboard.
- KPI-driven business reporting.
- Power Query data cleaning.
- Relational data modeling.
- 
### DAX calculations
- Time-series sales analysis.
- Customer segmentation using RFM.
- Product and brand performance analysis.
- Discount impact analysis.
- Interactive slicers for dynamic analysis.
- Business-focused insights.
  
### 📁 Repository Structure
```
Retail-Sales-Customer-Analysis/
│
├── Dataset/
│   ├── customers.csv
│   ├── products.csv
│   ├── transactions.csv
│   └── data_dictionary.csv
│
├── Dashboard/
│   └── Retail_Sales_Customer_Analysis.pbix
│
├── Screenshots/
│   ├── Sales_Overview.png
│   ├── Customer_RFM_Analysis.png
│   └── Product_Sales_Analysis.png
│
└── README.md
```
## Conclusion 

Retail Sales & Customer Analysis Dashboard transforms raw customer, product, and transaction data into an interactive business
intelligence solution. The project combines data preparation, data modeling, DAX, sales analysis, and RFM customer segmentation
to identify revenue drivers, customer-value patterns, product performance, and opportunities for improving customer retention and sales strategy.

**Author**
----

**Soumya**



