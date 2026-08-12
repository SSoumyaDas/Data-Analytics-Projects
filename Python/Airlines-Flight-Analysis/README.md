# ✈️ Flight Price Analysis using Python

## 📌 Project Overview

This project performs an exploratory data analysis (EDA) on an airline flight dataset to understand flight patterns and the factors associated with ticket prices.

The analysis uses Python libraries such as **Pandas, NumPy, Matplotlib, and Seaborn** to clean the dataset, summarize the data, investigate pricing patterns, and create visualizations.

The dataset contains **300,153 flight records and 12 columns initially**. The `index` column was removed during data cleaning, leaving **11 analytical columns**. The dataset contains information about airlines, routes, timings, stops, travel class, duration, days left before departure, and ticket price.

## 🎯 Objectives

The main objectives of this project are to:

- Analyze the airline flight dataset
- Clean and prepare the data for analysis
- Explore flight prices and other relevant features
- Identify patterns and trends in the data
- Create visualizations to understand the data better
- Generate meaningful insights from the analysis

## 🗂️ Dataset

The dataset contains the following columns:

| Column | Description |
|---|---|
| `airline` | Airline operating the flight |
| `flight` | Flight number |
| `source_city` | Departure city |
| `departure_time` | Time category of departure |
| `stops` | Number of stops |
| `arrival_time` | Time category of arrival |
| `destination_city` | Arrival city |
| `class` | Travel class, such as Economy or Business |
| `duration` | Flight duration |
| `days_left` | Number of days remaining before departure |
| `price` | Ticket price |

### Dataset Size

- Initial records: **300,153**
- Initial columns: **12**
- Columns after cleaning: **11**
- Missing values: **None detected**
- Airlines: **6**
- `days_left` range: **1 to 49 days**

## 🧹 Data Cleaning

The following cleaning and inspection steps were performed:

1. Loaded the dataset using Pandas.
2. Checked the dataset dimensions using `shape`.
3. Removed the redundant `index` column.
4. Inspected data types and non-null counts using `info()`.
5. Generated descriptive statistics using `describe()`.
6. Checked for missing values using `isnull().sum()`.
7. Inspected extreme values for duration and ticket price.

No missing values were found in the dataset.

## 🔎 Exploratory Data Analysis

- **Airline distribution**: Compared the number of flights offered by each airline.
- **Departure & arrival times**: Examined flight frequency and average ticket prices across different time categories.
- **Source & destination cities**: Compared flight frequency and average prices across major Indian cities.
- **Airline pricing**: Analyzed average ticket prices across different airlines.
- **Days left vs price**: Investigated how ticket prices vary depending on the number of days remaining before departure.
- **Travel class**: Compared Economy and Business class ticket prices.
- **Specific route analysis**: Examined Vistara Business class flights from Delhi to Hyderabad.


## 🛠️ Technologies Used

- **Python**
- **Pandas** - data loading, cleaning, filtering, grouping and aggregation
- **NumPy** - numerical computing
- **Matplotlib** - data visualization
- **Seaborn** - statistical and categorical visualizations
- **Jupyter Notebook** - analysis environment

## 📊 Visualizations

The notebook includes visualizations such as:

- Horizontal bar chart for airline flight frequencies
- Bar charts for departure and arrival time frequencies
- Horizontal bar charts for source and destination cities
- Categorical bar chart for airline ticket prices
- Bar charts for departure and arrival time versus price
- Line plots for price patterns
- Faceted Seaborn plots for route and timing comparisons

## 📁 Project Structure
Airlines-Flight-Analysis
│
├── Airlines_Flight_Analysis.ipynb
├── dataset.csv
└── README.md

## ▶️ How to Run the Project

### 1. Clone the repository

```bash
git clone <https://github.com/SSoumyaDas/Data-Analytics-Projects>
cd flight-price-analysis
```

### 2. Install the required libraries

```bash
pip install pandas numpy matplotlib seaborn jupyter
```

### 3. Open the notebook

```bash
jupyter notebook Flight_Price_Analysis.ipynb
```


## 💡 Key Takeaways

- The dataset contains 300,153 flight records.
- Six airlines are represented in the dataset.
- Vistara has the largest number of records and the highest average ticket price.
- AirAsia has the lowest average ticket price among the airlines analyzed.
- Night departures have the highest average departure-time price.
- Evening arrivals have the highest average arrival-time price.
- Chennai has the highest average source-city ticket price.
- Kolkata has the highest average destination-city ticket price.
- Business class tickets are considerably more expensive than Economy class tickets.
- Ticket prices show noticeable variation depending on how many days remain before departure.

## 🚀 Possible Improvements

This project can be improved further by:

- Performing deeper correlation and statistical analysis.
- Analyzing the relationship between duration, stops, and ticket price.
- Performing route-level price analysis.
- Adding outlier detection and treatment.
- Building an interactive dashboard using Power BI.
- Exploring machine-learning approaches for price prediction.

## 📌 Note

This project is an **exploratory data analysis project**. The findings describe patterns present in the provided dataset and should not automatically be interpreted as real-time airline pricing rules.

## 👤 Author

**Soumya**

This project was created as part of a Python/Data Analytics portfolio to demonstrate skills in data cleaning, exploratory analysis, aggregation, visualization, and interpretation.

