# 🏥 Healthcare Patient Data Analysis

## 📌 Project Overview

This project analyzes healthcare patient data to understand patient demographics, hospital visits, treatment costs, recovery scores, length of stay, and readmission risk.

The analysis was performed using Python to identify patterns and generate useful insights through exploratory data analysis, data cleaning, feature engineering, and visualizations.

---

## 🎯 Objective

The objective of this project is to analyze patient data and answer important business questions related to:

* Patient demographics and visit patterns
* Department-wise performance
* Treatment costs and recovery scores
* Length of hospital stay
* Readmission risk
* Patient visit trends over time

---

## 🛠️ Tools and Libraries Used

* **Python**
* **Pandas**
* **NumPy**
* **Matplotlib**
* **Seaborn**
* **Jupyter Notebook/Google colab**

---

## 📂 Dataset

The dataset contains healthcare patient records with information such as:

* Patient ID
* Age Group
* Gender
* Region
* Department
* Visit Type
* Treatment Type
* Visit Date
* Length of Stay
* Treatment Cost
* Recovery Score
* Readmission Risk

---

## 🔄 Project Workflow

1. Performed initial data exploration.
2. Checked data types, missing values, duplicates, and unusual values.
3. Converted the visit date into datetime format.
4. Created additional features for time-based and risk analysis.
5. Used grouping and aggregation to analyze departments, treatments, and visit types.
6. Created visualizations to identify patterns and trends.

---

## 🔍 Key Business Questions

Some of the questions explored in this project include:

* Which departments handle the highest number of patient visits?
* Which departments have the highest treatment costs?
* Which treatment types have higher costs and recovery scores?
* Which age groups contribute the most patient visits?
* Which regions have the highest patient volume?
* Which visit types have the longest average hospital stay?
* Which departments have the highest readmission risk?
* Is there a relationship between length of stay and treatment cost?
* Is there a relationship between recovery score and readmission risk?
* How does patient volume change over time?

---

## ⚙️ Data Cleaning and Feature Engineering

The following steps were performed:

* Checked for missing values.
* Checked for duplicate records and duplicate patient IDs.
* Examined numerical columns for unusual values.
* Converted `visit_date` to datetime format.
* Extracted:

  * Year
  * Month
  * Month Name
  * Day of the Week
* Created a **Risk Category** feature:

| Readmission Risk              | Category      |
| ----------------------------- | ------------- |
| Less than 0.30                | Low Risk      |
| 0.30 to 0.50                  | Moderate Risk |
| Greater than or equal to 0.50 | High Risk     |

* Created a monthly visit feature for time-series analysis.

---

## 📊 Visualizations

The project includes the following visualizations:

* Patient Distribution by Age Group and Gender
* Patient Distribution by Gender
* Patient Visits by Region
* Patient Visits by Department
* Patient Visits by Visit Type
* Average Treatment Cost by Treatment Type
* Distribution of Treatment Costs
* Average Readmission Risk by Department
* Length of Stay vs Treatment Cost
* Recovery Score vs Readmission Risk
* Patient Visits Over Time

---

## 📈 Analysis Performed

### Department Analysis

A department-level summary was created to analyze:

* Total patient visits
* Average length of stay
* Average treatment cost
* Total treatment cost
* Average recovery score
* Average readmission risk

### Treatment Analysis

Treatment types were compared based on:

* Number of patients
* Average treatment cost
* Average recovery score
* Average readmission risk

### Visit Type Analysis

Different visit types were analyzed to identify differences in:

* Average length of stay
* Average readmission risk

### Correlation Analysis

The project also explores relationships between:

* **Length of Stay and Treatment Cost**
* **Recovery Score and Readmission Risk**

---

## 💡 Key Insights

Some notable findings from the analysis include:

* The dataset contains *5,000 patient records* across *12 variables*.
* There are no missing values in the dataset.
* There are no duplicate records or duplicate patient IDs based on the notebook checks.
* Orthopedics has the highest patient volume with *1,058 visits*.
* Neurology has the highest average treatment cost at approximately *55,761.75*.
* Neurology also has the highest average recovery score at approximately *75.18*.
* The majority of patients fall into the *Low Risk* readmission category.
* Emergency visits have a slightly higher average length of stay than Routine visits.
* Treatment costs, length of stay, recovery score, and readmission risk are explored through both aggregate analysis and visualizations.
---

## 📁 Project Structure

```text
Healthcare-Patient-Data-Analysis/
│
├── Healthcare_Patients.ipynb
├── Healthcare_patients_data.csv
└── README.md
```

---

## 🚀 How to Run the Project

1. Clone the repository.

2. Install the required libraries:

```bash
pip install pandas numpy matplotlib seaborn
```

3. Open the Jupyter Notebook:

```bash
jupyter notebook
```

4. Run the notebook cells to perform the analysis and generate the visualizations.

---

## 👩‍💻 Author

**Soumya**

Aspiring Data Analyst | Python | SQL | Excel | Power BI
