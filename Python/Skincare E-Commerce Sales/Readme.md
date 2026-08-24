# 🧴Skincare E-commerce Sales Analysis

An end-to-end data analysis project analyzing $1.18M skincare sales to understand sales performance, 
customer behavior, product performance, returns, and satisfaction.

### 🔗 Live Notebook
`Skincare_Sales_Analysis.ipynb`

### 📂 Dataset

| Dataset | Description |
| :--- | :--- |
| **Customers** | Demographics, age, state, gender, acquisition channel |
| **Orders** | Order dates, sales amount, delivery, status, channel |
| **Order Items** | Product-level quantity and price per order |
| **Products** | Category, brand, skin type, launch date |
| **Returns** | Return reason, date, refund status |
| **Reviews** | Ratings (1-5) and review text |

### 🔄 Workflow

**1. Data Exploration**
Checked shape, info, dtypes, missing values, duplicates, descriptive stats for all 6 datasets.

**2. Data Cleaning & Preparation**
- Converted all date columns to datetime with `dayfirst=True`
- Handled missing `delivered_date` for pending/cancelled orders
- Standardized text columns

**3. Feature Engineering**
Created: `order_year`, `order_month`, `year_month`, `delivery_days`, `delivery_status`, `age_group`

**4. Data Merging**
Built 4 analysis-ready dataframes:
- `sales_df` = Orders + Order_Items + Customers
- `customer_product_df` = sales_df + Products
- `returns_analysis_df` = Returns + Orders + Products
- `reviews_analysis_df` = Reviews + Products

### 📊 Key Analysis

**Sales Analysis:**
Total Sales, Total Orders, AOV, Quantity Sold, Monthly Trend, Sales by Category, Channel, Status

**Customer & Product Analysis:**
Sales by State, Age Group Distribution, Acquisition Channel, Top 10 Products, Sales by Skin Type

**Returns & Satisfaction:**
Total Returns, Return Rate (6.32%), Delivered %, Returns by Reason & Category, Avg Rating by Category, Rating Distribution, Refund Status

### 💡 Key Business Insights

- **Total Sales:** $1.18M | **Total Orders:** ~1.2k | **Delivered:** 82%
- **Best Category:** Serum - highest revenue generator
- **Top State:** Maharashtra - highest sales
- **Core Audience:** 25-34 age group
- **Top Acquisition:** Google Search
- **Return Rate:** 6.32% - Main reason: Skin Irritation
- **Best Rated:** Moisturizer - highest avg rating (4.5+)
- **Satisfaction:** 75%+ ratings are 4 & 5 stars

### 📈 Visualizations
Built with Matplotlib & Seaborn:
- Line chart: Monthly Sales Trend
- Bar charts: Category, State, Top Products, Returns Reason
- Pie charts: Order Status, Refund Status, Acquisition Channel
- Countplot: Rating Distribution

### 🛠️ Tech Stack
- Python, Pandas, NumPy
- Matplotlib, Seaborn
- Jupyter Notebook

### 📁 Project Structure
```
Skincare-Sales-Analysis/
├── data/
│   ├── Customers.csv
│   ├── Orders.csv
│   ├── Order_Items.csv
│   ├── Products.csv
│   ├── Returns.csv
│   └── Reviews.csv
├── Skincare_Sales_Analysis.ipynb
└── README.md
```
### 🎯 Conclusion

- This project demonstrates a complete data analysis workflow using Python. Starting with raw data, the project performs exploration, cleaning, feature engineering,
  and data merging before analyzing sales performance, customer behavior, product performance, returns, and customer satisfaction.

- The final analysis provides business-focused insights that can help understand overall performance and identify areas for further investigation and improvement.

- ---
**Author** 
----

**Soumya**
