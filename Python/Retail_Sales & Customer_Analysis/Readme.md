# Retail Sales & Customer Analysis

## 📌 Project Overview

This project analyzes customer, product, and transaction data to
understand sales performance, customer behavior, product performance,
and purchasing patterns.

The analysis was completed using Python, mainly with Pandas,
NumPy, Matplotlib, and Seaborn. The project covers data exploration,
data-quality validation, feature engineering, customer segmentation
using RFM analysis, business analysis, and data visualization.

## 🎯 Objectives

- Explore customer, product, and transaction datasets.

- Identify and validate data-quality issues.

- Build a combined analysis-ready sales dataset.

- Analyze overall sales performance.

- Identify top-performing categories, brands, and products.

- Compare revenue across cities, membership levels, and payment
  methods.

- Understand the relationship between discounts and revenue.

- Segment customers using RFM analysis.

- Generate business insights through visualizations.

## 📂 Dataset Structure

The project uses four CSV files:

|* | Dataset| Description|
|--|---------|------------|
|1 |**customers**  |Customer demographic, city, membership, and join-date, information|
|2 |**products**   |Product, category, brand, and price information|
|3 |**transactions**   |Transaction, purchase-date, quantity, pricing, discount, payment, and revenue information|
|4 |**data_dictionary**|Data dictionary for the datasets|
```
```
### Dataset Size

- Customers: 1,000

-  Products: 500

- Transactions: 20,000

### 🛠️ Tools & Libraries

- Python

- Pandas

- NumPy

- Matplotlib

-  Seaborn

- Google Colab / Jupyter Notebook

### 🔍 Project Workflow

1. Data Loading & Initial Exploration

The project begins by loading all four CSV files and examining:

- Dataset dimensions

- Sample records

- Data types

- Missing values

- Duplicate records

- Duplicate IDs

- Categorical distributions

- Numerical summaries

2. Data Quality Validation

Several validation checks were performed, including:

- Missing-value checks

- Duplicate checks

- Customer ID validation

- Product ID validation

-  Quantity and price validation

- Discount-range validation

- Total-amount calculation validation

- Date-range validation

- Customer join-date consistency checks

The transaction amount was validated using:
``
Quantity × Unit Price × (1 − Discount / 100)
``
The calculated amount matched the recorded total_amount within the
selected tolerance.

### ⚠️ Data Quality Finding

A customer-level date consistency check identified 4,501 transactions
(22.5%) where the purchase date occurred before the customer's
recorded join date. These records were retained because the dataset does
not establish whether join_date represents the customer's first-ever
relationship with the business or another registration/membership date.

### ⚙️ Feature Engineering

The transaction dataset was enhanced with:

- Purchase year

- Purchase month

- Purchase month name

- Purchase quarter

- Gross amount

- Discount amount

The three datasets were then merged into a master sales_data DataFrame
for analysis.

A customer-level summary was also created containing:

- Total transactions

- Total quantity

- Total revenue

- Average transaction value

- Average discount

## 👥 RFM Customer Segmentation

RFM analysis was used to understand customer behavior.

### RFM Metrics

- Recency: Days since the customer's latest purchase

- Frequency: Number of transactions

- Monetary: Total amount spent

Customers were scored from 1--5 for each RFM component and classified
into six segments:

- Champions

- Loyal Customers

- Potential Loyalists

- New Customers

- At Risk

- Lost / Inactive

### Customer Segment Distribution

|Segment| Customers|
|--------|----------|
|**Potential Loyalists**|  213|
|**Lost / Inactive**| 197|
|**At Risk**|174|
|**New Customers**| 144|
|**Champions**| 140|
|**Loyal Customers**| 132|

### RFM Highlights

- At Risk customers generated the highest segment revenue at
  approximately 2.87M.

- Champions had the highest average revenue per customer at
  approximately 17,556.

- Potential Loyalists were the largest customer segment with 213
  customers.

RFM limitation: Recency ranged from 7 to 41 days in this dataset.
Therefore, the RFM segments should be interpreted as relative
behavioral groups rather than absolute churn classifications.

## 📊 Overall Sales Performance

|KPI| Result|
|---|--------|
|**Total Revenue**|13.69M|
|**Total Quantity Sold**|59,871|
|**Total Transactions**|20,000|
|**Average Order Value**|684.46|


## 📊 Business Analysis
- Monthly Revenue: Revenue remained relatively stable, mostly between 420K–505K.
- Category: Books generated the highest revenue at 2.86M.
- Brand: Brand 29 was the top-performing brand with 777.5K revenue.
- Product: Product 483 ranked highest among the top products with 46.6K revenue.
- City: Miami generated the highest revenue at 3.10M.
- Membership: Platinum generated the highest revenue at 4.80M.
- Payment: PayPal generated the highest revenue at 3.52M.
- Customer Segment: At Risk customers generated the highest segment revenue at 2.87M.
- Discount: Revenue and average order value decreased as discount levels increased.
- Data Quality: 4,501 transactions (22.5%) occurred before the recorded customer join date.

## 📊 Visualizations

The project includes nine visualizations:

- Monthly Revenue Trend

- Revenue by Category

- Top 10 Brands by Revenue

- Revenue by Customer Segment

- Revenue by City

- Revenue by Membership Level

- Revenue by Payment Method

- Revenue by Discount Level

- Top 10 Products by Revenue

## 💡 Key Business Insights

- Revenue remained relatively stable throughout most of the analyzed
  period.

- Books was the leading category by revenue.

- Brand 29 was the strongest-performing brand.

- Product 483 was the top product among the analyzed products.

- Miami was the highest-revenue city.

- Platinum generated the highest membership-level revenue.

- PayPal generated the highest revenue among payment methods.

- At Risk customers contributed the highest total revenue among the
 RFM segments.

- Champions had the highest average revenue per customer.

- Higher discount levels were associated with lower average order
  value.

- A significant number of transactions occurred before the recorded
 customer join date and should be treated as a data-quality
  consideration.

### 📁 Project Structure
```
Customer-Sales-Analysis/
│
├── customers (1).csv
├── products (1).csv
├── transactions.csv
├── data_dictionary.csv
├── retail_sales_customer_analysis.ipynb
└── README.md
```
### 🚀 How to Run

- Download or clone the project.

- Upload the four CSV files to your working environment.

- Open the Jupyter Notebook or Google Colab notebook.

- Update the file paths if required.

- Run the notebook cells sequentially.

### 📌 Skills Demonstrated

- Data loading and exploration

- Data cleaning and validation

- Pandas DataFrame operations

- GroupBy and aggregation

- Data merging and relational analysis

- Date/time feature engineering

- Customer-level analysis

- RFM customer segmentation

- Business KPI calculation

- Matplotlib visualization

- Seaborn

- Business insight generation

### 🏁 Conclusion

- This project demonstrates an end-to-end Python analytics workflow,starting from raw customer, product, and transaction data and
  progressing through validation, feature engineering, customer segmentation, business analysis, and visualization.

- The analysis provides a practical view of sales performance, customer value, product performance, market performance, membership behavior,
 payment preferences, and discount patterns, making it suitable as a beginner-to-intermediate Data Analyst portfolio project.
---
**Author**

 [Soumya]
