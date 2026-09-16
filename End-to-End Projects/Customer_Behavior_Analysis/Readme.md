# Customer Shopping Behavior Analysis
 ## 📌 Project Overview

This project analyzes customer shopping behavior using Python, Oracle SQL, and Power BI.

The objective is to clean and transform customer shopping data, perform business-focused analysis using SQL, and 
build an interactive Power BI dashboard to identify purchasing patterns across categories, demographics, payment methods, 
discounts, subscriptions, seasons, product sizes, and customer spending segments.

## 🛠️ Tools & Technologies

- Python: Pandas, NumPy
- Database: Oracle SQL
- Data Loading: SQL*Loader
- Visualization: Power BI
- Data Source: Customer Shopping Behavior dataset
  
## 📂 Dataset

The dataset contains 3,900 customer shopping records with information related to:

- Customer demographics
- Products and categories
- Purchase amounts
- Locations
- Product sizes and colors
- Seasons
- Review ratings
- Subscription status
- Shipping methods
- Discount usage
- Previous purchases
- Payment methods
- Purchase frequency

***The Oracle table contains 19 fields, including the derived age_group and purchase_frequency_days fields.***

### 🧹 Python Data Preparation

*Python was used to prepare the dataset before loading it into Oracle.*

#### Key steps

- Loaded the customer shopping dataset using Pandas.
- Checked dataset structure and missing values.
- Filled missing Review Rating values using the median rating within each product category.
- Standardized column names to lowercase with underscores.
- Renamed purchase_amount_(usd) to purchase_amount.
- Created age_group using age quartiles:
 ``
    Young Adult,
     Adult,
     Middle-Aged,
     Senior
  ``
  
- Converted purchase-frequency descriptions into numerical days:
```  
- Weekly → 7
- Fortnightly / Bi-weekly → 14
- Monthly → 30
- Quarterly / Every 3 months → 90
- Annually → 365
```
- Compared discount_applied with promo_code_used and removed the redundant promo_code_used column.
  
#### 🗄️ Oracle SQL Analysis

The cleaned data was loaded into an Oracle table named customer_behavior.

SQL was used to answer 20 business questions covering:

- Customer and transaction metrics
- Category performance
- Gender and age-group behavior
- Seasonal purchasing
- Subscription behavior
- Discount usage
- Payment methods
- Shipping methods
- Product sizes
- Purchase frequency
- Top-selling items
- Location-level customer counts
- Spending categories

#### SQL techniques used include:
```
COUNT()
SUM()
AVG()
GROUP BY
ORDER BY
HAVING
CASE
Subqueries
ROWNUM
```
### 📊 Key Business Insights

**Overall Performance**
```
Total Customers: 3,900
Total Transactions: 3,900
Total Purchase Amount: 233,081
Average Purchase Amount: 59.76
```
**Category Performance**
```
Clothing generated the highest purchase amount: 104,264.
Accessories: 74,200
Footwear: 36,093
Outerwear: 18,524
Footwear had the highest average purchase amount at 60.26.
Customer Demographics
Male customers: 157,890 total purchase amount.
Female customers: 75,191.
Female customers had a slightly higher average purchase amount: 60.25 compared with 59.54 for male customers.
Young Adults generated the highest purchase amount among age groups: 62,143.
```
**Seasonal Behavior**
```
Fall: 60,018
Spring: 58,679
Winter: 58,607
Summer: 55,777
```
***Fall recorded the highest total purchase amount.***

**Subscription & Discount Behavior**

- Non-subscribers accounted for 2,847 records and 170,436 in purchase amount.
- Subscribers accounted for 1,053 records and 62,645 in purchase amount.
- Transactions without discounts generated 133,670, compared with 99,411 for discounted transactions.

***These results describe observed purchasing patterns and do not establish that subscription or discount status caused the differences.***

### Payment & Shipping
```
Credit Card had the highest total purchase amount: 40,310.
Bank Transfer had the lowest: 36,544.
2-Day Shipping had the highest average purchase amount: 60.73.
Standard Shipping had the lowest: 58.46.
```
### Product Size

- Purchase amount by size:
```
M: 105,167
L: 61,667
S: 40,468
XL: 25,779
```
***M was the largest contributor by purchase amount.***
#### Top 5 Products
```
Blouse: 10,410
Shirt: 10,332
Dress: 10,320
Pants: 10,090
Jewelry: 10,010
```
### Customer Spending Segments

#### Based on purchase amount:
```
Low Spender: 1,466
Medium Spender: 1,410
High Spender: 1,024
```
#### Customer Distribution by Category
```
Clothing: 1,737
Accessories: 1,240
Footwear: 599
Outerwear: 324
```
### 📈 Power BI Dashboard

The Power BI report contains 3 pages.

**Page 1: Purchase Pattern**

Includes:

- KPI cards for ***Total Customers, Total Purchase Amount, Total Transactions and Average Purchase Amount***
- Purchase Amount by Category
- Purchase Amount by Gender
- Purchase Amount by Subscription Status
- Purchase Amount by Season
- Purchase Amount by Age Group
- Purchase Amount by Discount Status
  
*Category and Season slicers*

**Page 2: Customer Behavior Analysis**

Includes:

- Purchase Amount by Purchase Frequency
- Purchase Amount by Shipping Type
- Purchase Amount by Payment Method
- Purchase Amount by Product Size
- Customers by Spending Category
- Customers by Category
 
**Page 3: Customer Insights**

Includes:

- Average Review Rating by Category
- Average Purchase Amount by Subscription Status
- Average Review Rating by Season
- Purchase Amount by Age Group
- Customers by Subscription Status
- Average Purchase Amount by Payment Method

*Slicers were added for Age Group and Subscription Status.*

## 🔍 Key Findings from Dashboard

- **Clothing** is the **largest category** in both purchase amount and customer count.
- **Young Adults** contribute the **highest purchase** amount among age groups.
- **Fall** has the **highest seasonal purchase** amount.
- **Non-subscribers** represent the **larger customer group** in this dataset.
- **M-sized** products account for the **largest purchase amount**.
- **Credit Card, PayPal and Cash** have relatively close total purchase amounts.
- Review ratings are relatively consistent across categories and seasons, remaining around the 3.7–3.8 range.
- Average purchase amounts across payment methods and purchase frequencies are also relatively close, indicating limited
  variation in average transaction value across these groups.
  
## 📁 Project Structure
```
Customer-Shopping-Behavior-Analysis/
│
├── Customer_behavior_Analysis.ipynb
├── customer_behavior_cleaned.csv
├── Customer_behavior_SQL.txt
├── Customer_Shopping_Behavior.pbix
├── Dashboard/
│   ├── Customer_behavior_1.png
│   ├── Customer_behavior_2.png
│   └── Customer_behavior_3.png
└── README.md
```
## 🎯 Project Outcome

This project demonstrates an end-to-end analytics workflow:

Raw Data → Python Cleaning & Feature Engineering → Oracle SQL Analysis → Power BI Dashboard → Business Insights

It demonstrates practical skills in Python, SQL, data cleaning, feature engineering, business analysis, data visualization, and dashboard development.
