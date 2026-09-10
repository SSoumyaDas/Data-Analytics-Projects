# 🍽️ Zomato Restaurant Data Analysis Using Python

## 📌 Project Overview

This project focuses on analyzing restaurant data using Python to understand restaurant distribution, customer ratings,
customer engagement, pricing, and the availability of online ordering and table booking services.

The project follows an end-to-end data analysis process, including data exploration, data cleaning, feature engineering,
business analysis, and visualization.

---

## 🎯 Project Objectives

The main objectives of this project are to:

- Analyze the distribution of different restaurant types.
- Compare average ratings across restaurant categories.
- Understand the relationship between online ordering and ratings.
- Analyze the impact of table booking availability on ratings.
- Examine the relationship between restaurant cost and ratings.
- Analyze customer engagement using vote counts.
- Identify the relationship between ratings and votes.
- Generate meaningful business insights from the data.

---

## 🗂️ Dataset

The dataset contains restaurant-level information with the following columns:

| Column | Description |
|---|---|
| `name` | Name of the restaurant |
| `online_order` | Whether online ordering is available |
| `book_table` | Whether table booking is available |
| `rate` | Restaurant rating |
| `votes` | Number of customer votes |
| `approx_cost(for two people)` | Approximate cost for two people |
| `listed_in(type)` | Type/category of restaurant |

### Dataset Size

- Original records: **1,000**
- Duplicate records removed: **220**
- Final records: **780**
- Missing values: **None**

---

## 🛠️ Tools & Technologies

- **Python**
- **Pandas** - Data manipulation and analysis
- **NumPy** - Numerical operations
- **Matplotlib** - Data visualization
- **Seaborn** - Statistical visualization
- **Jupyter Notebook**

---

## 🚀 Skills Demonstrated

This project demonstrates practical experience with:
- Data Exploration
- Data Cleaning
- Duplicate Handling
- Data Type Conversion
- Pandas GroupBy
- Feature Engineering
- Categorical Data Analysis
- Correlation Analysis
- Business Question Development
- Data Visualization
- Business Insight Generation
---

## 🔍 Project Workflow

### 1. Data Exploration

The dataset was initially explored to understand:

- Dataset structure
- Data types
- Missing values
- Duplicate records
- Unique categories
- Statistical summaries

---

### 2. Data Cleaning

The following cleaning activities were performed:

- Checked for missing values.
- Identified and removed duplicate records.
- Converted restaurant ratings into numerical format.
- Reset the DataFrame index.
- Checked categorical columns for inconsistent or unexpected values.

After cleaning, the dataset contained **780 unique records**.

---

### 3. Feature Engineering

Three new features were created to make the analysis more meaningful.

#### Rating Category

Ratings were classified into:

- Low
- Average
- High

#### Cost Category

Restaurants were grouped into:

- Budget
- Moderate
- Expensive

#### Engagement Category

Restaurants were classified based on their number of votes:

- Low
- Medium
- High

---

## 📊 Business Analysis

The project answers several important business questions, including:

- Which restaurant type is most common?
- Which restaurant type has the highest average rating?
- Does online ordering relate to restaurant ratings?
- Does table booking relate to restaurant ratings?
- How does restaurant cost relate to ratings?
- Which restaurants receive higher customer engagement?
- What is the relationship between votes and ratings?

---

## 📈 Visualizations

The following visualizations were created:

### 1. Distribution of Restaurant Types

Shows the number of restaurants belonging to each restaurant category.

### 2. Average Rating by Restaurant Type

Compares the average customer rating across restaurant types.

### 3. Average Rating by Online Order Availability

Compares ratings between restaurants with and without online ordering.

### 4. Average Rating by Table Booking Availability

Compares ratings between restaurants with and without table booking.

### 5. Average Rating by Cost Category

Analyzes the relationship between restaurant pricing and average ratings.

### 6. Relationship Between Votes and Ratings

A scatter plot was used to examine the relationship between customer votes and restaurant ratings.

---

## 💡 Key Business Insights

- **Dining restaurants dominate the dataset**, representing approximately 70% of the cleaned dataset.
- **Other restaurant types have the highest average rating**, at approximately **4.02**.
- **Dining restaurants have the lowest average rating**, at approximately **3.62**, despite being the most common category.
- Restaurants offering **online ordering** have a higher average rating of approximately **3.88**, compared with **3.54** for restaurants without online ordering.
- Restaurants offering **table booking** have a higher average rating of approximately **4.16**, compared with **3.65** for restaurants without table booking.
- **Expensive restaurants** have the highest average rating at approximately **3.80**, while Budget restaurants have the lowest at approximately **3.55**.
- Restaurants with online ordering and table booking generally show **higher customer engagement** based on average votes.
- The correlation between **votes and ratings is approximately 0.49**, indicating a moderate positive relationship.


---

## 📁 Project Structure

```text
Restaurant-Data-Analysis/
│
├── Restaurant_Data_Analysis.ipynb
├── restaurant_data.csv
└── README.md
```

## 🎯 Conclusion

This project demonstrates how Python can be used to transform raw restaurant data into meaningful business insights.

The analysis highlights how restaurant type, pricing, online ordering, and table booking are associated with customer ratings and engagement.
The project also demonstrates the complete workflow of a data analyst, from raw data exploration to actionable insights.

---
## 👤 Author

**Soumya**

Aspiring Data Analyst | Python | SQL | Excel | Tableau | Power BI
