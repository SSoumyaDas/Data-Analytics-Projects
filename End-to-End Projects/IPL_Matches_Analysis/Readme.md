# 🏏 IPL Match Analytics | Python, Oracle SQL & Power BI

## 📌 Project Overview

This project analyzes IPL match data using **Python, Oracle SQL, and Power BI** to identify patterns in team performance, 
toss decisions, match outcomes, and player achievements.

The project follows an end-to-end data analytics workflow:

**Data Cleaning → Exploratory Data Analysis → SQL Analysis → Power BI Dashboard**

---

## 🎯 Objectives

- Analyze IPL matches across different seasons.
- Compare team performance and win percentages.
- Understand toss decisions and their relationship with match outcomes.
- Identify players with the most Player of the Match awards.
- Analyze match results and winning margins.
- Build an interactive Power BI dashboard for visual analysis.

---

## 🛠️ Tools & Technologies

- **Python** – Data cleaning and exploratory data analysis
- **Pandas** – Data manipulation
- **Matplotlib / Seaborn** – Data visualization
- **Oracle SQL** – Business analysis and querying
- **SQL*Plus** – Database operations
- **Power BI** – Interactive dashboard and visualization
- **GitHub** – Project documentation and version control

---

## 📊 Dataset

The dataset contains **1,095 IPL matches** with **21 columns**, including:

- Match ID
- Season
- City
- Match Date
- Match Type
- Venue
- Teams
- Toss Winner
- Toss Decision
- Match Winner
- Result
- Result Margin
- Player of the Match
- Super Over
- D/L Method
- Umpires

---

## 🧹 Data Cleaning

The following cleaning steps were performed using Python:

- Converted the `date` column to datetime format.
- Handled missing city values using venue information.
- Preserved missing winners and Player of the Match values for no-result matches.
- Kept missing result margins for ties and no-result matches.
- Standardized historical team names, including:
  - Delhi Daredevils → Delhi Capitals
  - Kings XI Punjab → Punjab Kings
  - Royal Challengers Bangalore → Royal Challengers Bengaluru
  - Rising Pune Supergiants → Rising Pune Supergiant
- Checked for duplicate records.
- Exported the cleaned dataset as `ipl_matches_cleaned.csv`.

### Final Dataset

- **Rows:** 1,095
- **Columns:** 21
- **Teams:** 15
- **Venues:** 58
- **Seasons:** 17

---

## 🔎 Python Exploratory Analysis

Python was used to explore:

- Matches played by season
- Total wins by team
- Team win percentage
- Toss decision distribution
- Toss winner vs match winner
- Match result distribution
- Top Player of the Match award winners

### Key Findings

- **Mumbai Indians** recorded the highest total wins with **144**.
- **Gujarat Titans** had the highest win percentage in the dataset at **62.22%**.
- Teams chose to **field first in 704 matches (64.29%)**.
- The toss winner also won the match in **554 matches (50.59%)**.
- Matches were most commonly won by **wickets (578 matches)**.
- **AB de Villiers** received the most Player of the Match awards with **25**.

---

## 🗄️ Oracle SQL Analysis

The cleaned dataset was loaded into Oracle using **SQL*Loader** and analyzed using SQL*Plus.

### Business Questions

The SQL analysis covered:

1. Total number of matches
2. Matches by season
3. Wins by team
4. Team win percentage
5. Toss decision distribution
6. Toss winner vs match winner
7. Toss decision vs match outcome
8. Top Player of the Match award winners
9. Most-used venues
10. Biggest wins by runs
11. Biggest wins by wickets
12. Super Over frequency
13. Super Overs by season
14. Match results by season
15. Teams with the most matches played

---

## 📈 Power BI Dashboard

The final Power BI dashboard contains **3 pages**.

### Page 1: IPL Overview

- Total Matches
- Total Teams
- Total Venues
- Matches by Season
- Wins by Team
- Toss Decision Distribution
- Toss Winner vs Match Winner
- Match Results Distribution
- Season slicer

### Page 2: Team Performance

- Matches Played by Team
- Win Percentage by Team
- Top 10 Player of the Match Awards
- Team Performance table
- Team selection slicer

### Page 3: Match & Toss Analysis

- Toss Decision Distribution
- Toss Winner vs Match Winner
- Match Results Distribution
- Season slicer

---

## 💡 Key Insights

- Fielding was the preferred toss decision, accounting for **64.29%** of toss decisions.
- Winning the toss resulted in a match win in **50.59%** of matches.
- Mumbai Indians had the highest number of wins with **144**.
- Gujarat Titans recorded a **62.22%** win percentage in the available dataset.
- Wicket victories were slightly more common than run victories.
- AB de Villiers led the Player of the Match awards with **25**.

---

## 📁 Project Structure

```text
IPL-Match-Analytics/
│
├── data/
│   └── ipl_matches_cleaned.csv
│
├── python/
│   └── IPL_Analysis.ipynb
│
├── sql/
│   └── IPL_Analysis.sql
│
├── powerbi/
│   └── IPL_Match_Analytics.pbix
│
└── README.md
```
---
## 🚀 Conclusion 

This project demonstrates an end-to-end data analytics workflow using Python for data preparation and EDA, 
Oracle SQL for business analysis, and Power BI for interactive reporting.

It showcases practical skills in data cleaning, SQL querying, exploratory analysis, KPI creation, data visualization,
and dashboard development.

