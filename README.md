# ☕ End-to-End Coffee Shop Sales Analysis

An end-to-end data analytics project analysing sales performance across a coffee shop chain to identify revenue trends, product performance, peak hours, and store-level comparisons — and provide actionable business recommendations.

---

## 📌 Project Overview

Sales performance visibility is critical for any retail food & beverage business. Understanding **when customers buy**, **what they buy**, and **which locations perform best** enables smarter staffing, inventory, and marketing decisions. This project analyses ~150,000 transactions from a coffee shop chain across six months, using Excel, SQL, and Power BI to surface high-impact insights across time, product, and location dimensions.

---

## 📌 Dashboard Previews
![Dashboard 1](charts/dashboard_1.png)
![Dashboard 2](charts/dashboard_2.png)
![Dashboard 3](charts/dashboard_3.png)

---

## 🛠 Skills Demonstrated

- Data Cleaning & Preparation (Excel)
- Exploratory Data Analysis (EDA)
- Business KPI Analysis (Revenue, AOV, Transactions)
- Time-Based Analysis (Hourly, Daily, Monthly trends)
- Pivot Tables & Advanced Excel Functions
- SQL for Data Aggregation & Querying
- Data Visualization & Dashboard Design (Power BI)
- Sales Performance Analysis (Products & Categories)
- Store-Level Performance Comparison

---

## 🎯 Business Questions Answered

1. What are the monthly and weekly revenue trends?
2. Which product categories and items drive the most sales?
3. What are the peak hours and busiest days of the week?
4. How do individual store locations compare in performance?
5. What is the average order value across different time periods?

---

## 🛠️ Tools Used

| Tool | Purpose |
|---|---|
| **Excel** | Data cleaning, pivot tables, preliminary exploration |
| **SQL (PostgreSQL)** | Data querying, aggregation, and transformation |
| **Power BI** | Interactive dashboard and data visualisation |

---

## 📁 Project Structure

```
End-to-End-Coffee-Shop-Sales-Analysis/
│
├── data/
│   ├── Coffee Shop Sales Raw Data.xlsx         ← Raw transactional dataset
│   └── Coffee Shop Sales Working Data.csv      ← Cleaned dataset used in analysis
│
├── excel/
│   └── Coffee Shop Sales Analysis.xlsx          ← Cleaned data, pivot tables & charts
│
├── sql/
│   ├── 01_table_creation.sql                   ← All 7 SQL query files
│   ├── 02_data_import.sql
│   ├── 03_data_cleaning_transformation.sql
│   ├── 04_data_quality_audit.sql
│   ├── 05_product_performance_analysis.sql
│   ├── 06_sales_trends_time_analysis.sql
│   └── 07_location_intelligence.sql
│
├── powerbi/
│   └── dashboards.pbix                         ← Power BI dashboard file
│
├── charts/
│   ├── dashboard_1.png
│   ├── dashboard_2.png
│   └── dashboard_3.png
│
└── README.md
```

---

## 📊 Dataset

- **Source:** [Maven Analytics — Coffee Shop Sales Dataset](https://mavenanalytics.io/)
- **Records:** ~150,000 transactions
- **Period:** January 2023 – June 2023
- **Columns:** 8

| Column | Description |
|---|---|
| `transaction_id` | Unique transaction identifier |
| `transaction_date` | Date of the transaction |
| `transaction_time` | Time of the transaction |
| `store_location` | Store branch name |
| `product_category` | High-level product category (e.g., Coffee, Tea) |
| `product_detail` | Specific product name |
| `unit_price` | Price per unit in USD |
| `transaction_qty` | Number of units purchased |

---

## 🔄 Workflow

```
Excel          →      SQL           →      Power BI
──────────────────────────────────────────────────
Raw review          Load & query         Dashboard
Data cleaning       Aggregate            KPI cards
Data dictionary     Validate             Slicers
Pivot tables        Export results       Report
```

---

## 🔍 Key Findings

### 1. Revenue by Month
Revenue grew steadily from January through June 2023, with May and June recording the highest monthly totals — suggesting a positive seasonal trend heading into summer.

### 2. Peak Hours
| Time Window | Transaction Volume |
|---|---|
| 🔴 8 AM – 10 AM | **Highest** across all locations |
| 🟡 11 AM – 1 PM | Moderate — lunch uplift |
| 🟢 After 6 PM | Significant drop-off |

Morning hours (8 AM – 10 AM) **consistently generate the highest transaction volume** across all store locations.

### 3. Revenue by Product Category
| Category | Revenue Share |
|---|---|
| ☕ Coffee | **38.6%** |
| 🍵 Tea | Second highest |
| 🥐 Bakery | Third highest |
| Other | Remaining share |

Coffee accounts for the **largest share of revenue at 38.6%**, followed by tea and bakery items.

### 4. Busiest Day of the Week
| Day | Performance |
|---|---|
| 🔴 Friday | **Peak sales day** across all branches |
| 🟡 Thursday / Saturday | Strong secondary days |
| 🟢 Sunday / Monday | Lowest footfall |

**Friday** is the peak day of the week for sales across all branches.

### 5. Store-Level Performance
| Location | Performance |
|---|---|
| 🔴 Hell's Kitchen | **Highest total revenue** |
| 🟡 Astoria | Strong second |
| 🟢 Lower Manhattan | Competitive third |

**Hell's Kitchen** outperforms other stores in total revenue across the six-month period.

### 6. Average Order Value (AOV)
AOV remains broadly consistent across stores and months, suggesting that revenue differences between locations are driven by **transaction volume rather than spend-per-visit**.

---

## 💡 Business Recommendations

### 1. Double Down on Morning Staffing
The 8–10 AM window drives the highest footfall at every location. Ensuring sufficient barista coverage and pre-prepared inventory during this window will reduce wait times, improve customer satisfaction, and protect peak-period revenue.

### 2. Investigate the Hell's Kitchen Advantage
Hell's Kitchen's revenue lead over other stores warrants a detailed investigation. Identifying whether this is driven by location foot traffic, local demographics, store layout, or team performance can inform decisions for future site selection and operational improvements at underperforming branches.

### 3. Grow the Friday Momentum
Friday is the top trading day — a targeted end-of-week promotion (e.g., loyalty rewards, weekend specials) could push Friday volume even higher and incentivise repeat visits over the weekend.

### 4. Reduce Sunday & Monday Drop-Off
Low-footfall days represent an opportunity. Introduce weekday morning promotions or bundle deals (coffee + bakery) to drive incremental revenue on slower days without cannibalising peak-day margins.

### 5. Protect and Grow the Tea & Bakery Mix
While coffee dominates at 38.6%, tea and bakery together represent a substantial share of revenue. Seasonal tea offerings or "coffee + bakery" combo pricing could increase average basket size and support diversified revenue growth.

---

## 📈 Power BI Dashboard

The interactive dashboard includes:
- **Page 1 — Revenue Overview:** Monthly revenue trend, total revenue KPI, total orders, and average order value
- **Page 2 — Time & Traffic Analysis:** Hourly transaction heatmap, day-of-week breakdown, and peak window highlights
- **Page 3 — Product & Location Insights:** Top 10 products by revenue and quantity, category breakdown, and store-level comparison with location filters

> To view the dashboard, download `dashboard/dashboards.pbix` and open with [Power BI Desktop](https://powerbi.microsoft.com/desktop/) (free).

---

## 🚀 Getting Started

### Prerequisites
- Microsoft Excel 2021+
- SQL environment (PostgreSQL)
- Power BI Desktop (free download at [powerbi.microsoft.com](https://powerbi.microsoft.com))

### Steps to Reproduce

```bash
# 1. Clone the repository
git clone https://github.com/dibyashreee/End-to-End-Coffee-Shop-Sales-Analysis.git
cd End-to-End-Coffee-Shop-Sales-Analysis
```

2. **Open the dataset**
   - Navigate to `data/Coffee Shop Sales Raw Data.xlsx`

3. **Run SQL queries**
   - Import the cleaned CSV into your PostgreSQL environment
   - Execute queries from the `sql/` folder in order (01 → 07)

4. **Explore the Excel analysis**
   - Open `excel/Coffee Shop Sales Analysis.xlsx` to view pivot tables and charts

5. **View the dashboard**
   - Open `powerbi/dashboards.pbix` in Power BI Desktop

---

## 📬 Contact

**Author:** Dibyashree Dey

**LinkedIn:** [www.linkedin.com/in/dibyashreedey](https://www.linkedin.com/in/dibyashreedey)

**Email:** dibyashree15dey01@gmail.com

---

*This project is part of an end-to-end data analyst portfolio demonstrating skills in Excel, SQL, and Power BI.*
