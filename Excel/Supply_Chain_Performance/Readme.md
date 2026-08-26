# Supply Chain Performance Analysis & Dashboard 

## 📌 Project Overview
This project analyzes a Supply Chain dataset containing 100 SKUs across Product Types, Suppliers, Locations, and Transportation modes. 
The goal is to evaluate Revenue, Inventory, Supplier Performance, and Logistics efficiency and build an interactive Excel Dashboard for business decision-making.

## 📊 Dataset Description
**Source:** `Raw_Data` sheet (100 rows x 24 columns)

| Category | Columns |
| :--- | :--- |
| **Product** | Product type, SKU, Price |
| **Sales** | Availability, Number of products sold, Revenue generated, Customer demographics |
| **Inventory** | Stock levels, Lead times, Order quantities |
| **Logistics** | Shipping times, Shipping carriers, Shipping costs, Transportation modes, Routes, Costs |
| **Supplier** | Supplier name, Location, Lead time, Production volumes |
| **Quality** | Manufacturing lead time, Manufacturing costs, Inspection results, Defect rates |

## 🎯 Objectives
1.  Clean and transform raw data
2.  Create 8 Pivot Tables for business KPIs
3.  Build calculated fields: Revenue per Unit, Inventory Status, Lead Time Category, Defect Status, Profit/Loss
4.  Design an interactive Dashboard with Slicers
5.  Derive actionable insights for supply chain optimization

## 🛠️ Tools Used
- Microsoft Excel (Pivot Tables, Pivot Charts, Slicers, Conditional Formatting)
- Data Cleaning & Feature Engineering using Structured References
- Dashboard Design Principles

## 📈 Steps Performed

### 1. Data Cleaning & KPIs
- Total_Revenue
- Total Products Sold
- Estimated Total Profit
- Lead_time
- Average_Defect_Rate
- Total_Estimated_Shipping_Cost
- Total_Production_Volume
- Average_Manufacturing_Cost
- Average_Shipping_Time


### 2. Pivot Table Analysis
- **PT_Product_Revenue:** Total Revenue by Product Type
- **PT_Product_Sales:** Total Units Sold by Product Type
- **PT_Supplier_Revenue:** Revenue Contribution by Supplier
- **PT_Supplier_LeadTime:** Average Lead Time by Supplier
- **PT_Transportation:** Shipping Costs & Shipping Time by Mode
- **PT_Inspection:** Count of SKU by Inspection Results (Pass/Fail/Pending)
- **PT_Defect_Rate_Supplier:** Average Defect Rate by Supplier
- **Top-10_Product:** Top 10 Products by Revenue

### 3. Interactive Dashboard 
Built a final dashboard containing:
- 4 KPI Cards: Total Revenue (₹5.77L), Total Units Sold (46,099), Avg Defect Rate, Total Suppliers
- 8 Visualizations: Bar, Column, Doughnut, Combo Chart
- 2 Slicers: Location (Bangalore, Chennai, Delhi, Kolkata, Mumbai) and Product Type (Cosmetics, Haircare, Skincare) connected to all pivots
- Clean theme with consistent blue color palette

## 💡 Key Insights

1.  **Revenue Driver:** Skincare generates highest revenue (~₹2.4L) followed by haircare.
2.  **Supplier Performance:** Supplier 1 generates max revenue but Supplier 5 has lowest defect rate (1.8%) and shortest lead time.
3.  **Logistics:** Road is most used mode, but Air has highest shipping cost (₹156) and Sea has longest time. Rail is balanced.
4.  **Quality Issue:** 41% SKUs are still Pending inspection. Fail rate is ~15% - needs attention.
5.  **Inventory Alert:** Multiple products with Stock <30 marked as Low Stock - reorder required.
6.  **Top Product:** SKU51, SKU38 are top revenue generators.

## 📁 File Structure
```
SupplyChainAnalysis.xlsx
├── Raw_Data
├── Data_Cleaning (Main working sheet with formulas)
├── PT_Product_Revenue
├── PT_Product_Sales
├── PT_Supplier_Revenue
├── PT_Supplier_LeadTime
├── PT_Transportation
├── PT_Inspection
├── PT_Defect_Rate_Supplier
├── Top-10_Product
├── Analysis (Total KPIs)
└── Dashboard (Final Interactive Dashboard)
```
## 👤 Author
 
Soumya 
