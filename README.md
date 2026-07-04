# 🏪 Superstore Sales Analytics Dashboard

## 📌 Project Overview

This project analyzes retail sales data from the Superstore dataset to uncover business insights related to sales performance, profitability, customer segments, and discount strategies.

The workflow includes:

- Data Cleaning with Python (Pandas)
- Exploratory Data Analysis (EDA)
- SQL Analysis using MySQL
- Interactive Dashboard Development in Power BI

## 🛠 Tech Stack

- Python
- Pandas
- Matplotlib
- MySQL
- SQLAlchemy
- Power BI
- Jupyter Notebook
- Git & GitHub

## 📂 Dataset

Dataset: **Sample Superstore Dataset**

Records: **9,994 rows**

Features include:

- Region
- State
- Category
- Sub-Category
- Segment
- Sales
- Profit
- Discount
- Quantity


## 🔍 Data Cleaning

Performed the following preprocessing steps:

- Renamed columns using snake_case
- Removed duplicate records
- Converted postal codes to string format
- Validated missing values
- Exported cleaned data for SQL and Power BI analysis


### Total Business Performance

- Total Sales: $2.30M
- Total Profit: $286.24K
- Total Orders: 9,994
- Profit Margin: 12.47%


## 💡 Key Business Insights

- The West region generated the highest revenue.
- Technology products produced the largest profits.
- Consumer customers contributed the most sales.
- Discounts above 20% significantly reduced profitability.
- Tables and Bookcases were loss-making sub-categories.
- Copiers and Phones were the most profitable products.

## 🗄 SQL Analysis

Sample queries included:

```sql
SELECT region, SUM(sales) AS total_sales
FROM superstore
GROUP BY region
ORDER BY total_sales DESC;
```

```sql
SELECT category, SUM(profit) AS total_profit
FROM superstore
GROUP BY category;
```

```sql
SELECT discount, AVG(profit) AS avg_profit
FROM superstore
GROUP BY discount;
```

## 📊 Power BI Dashboard

The dashboard contains:

- KPI Cards
  - Total Sales
  - Total Profit
  - Total Orders
  - Profit Margin

- Sales by Region
- Profit by Category
- Sales by Segment
- Top States by Sales
- Sub-category Profit Analysis
- Discount vs Average Profit

## 👤 Sayali Wagh

Aspiring Data Analyst | Python | SQL | Power BI | Pandas 