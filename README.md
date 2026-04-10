⭐ If you like this project, give it a star!

# 🎯 Festive Campaign Performance & Sales Insights Dashboard

## 📌 Project Overview

This project focuses on analyzing festive season sales data to uncover key business insights related to revenue, customer behavior, and product performance.

The dashboard is built using **Power BI**, with data processed through **Python** and **PostgreSQL**, following an end-to-end data analytics workflow.

---

## 🚀 Tools & Technologies Used

* 🐍 Python (Pandas) – Data Cleaning
* 🗄 PostgreSQL – Data Storage & SQL Analysis
* 📊 Power BI – Data Visualization & Dashboard
* 📁 CSV Dataset – Diwali Sales Data

---

## 🔄 Project Workflow

1. **Data Collection**

   * Downloaded Diwali Sales dataset

2. **Data Cleaning (Python)**

   * Removed null values
   * Dropped unnecessary columns
   * Cleaned and structured dataset

3. **Database (PostgreSQL)**

   * Created database and table
   * Imported cleaned CSV
   * Performed SQL analysis

4. **Power BI Dashboard**

   * Created interactive dashboards
   * Added KPIs, charts, slicers, and navigation

---

## 🐍 Python Data Cleaning (with Code)

**Purpose:** Clean raw data and prepare it for analysis.

```python
import pandas as pd

# Load dataset
df = pd.read_csv(r"C:\Users\Dipendra\Desktop\Diwali Sales Data.csv", encoding='latin1')

# Drop unnecessary columns
df.drop(['Status', 'unnamed1'], axis=1, inplace=True)

# Remove null values from Amount column
df = df.dropna(subset=['Amount'])

# Check data
print(df.head())
print(df.isnull().sum())

# Save cleaned file
df.to_csv(r"C:\Users\Dipendra\Desktop\diwali_cleaned.csv", index=False)
```

---

## 🗄 PostgreSQL (with SQL Queries)

**Purpose:** Store cleaned data and perform analysis.

### 📌 Create Database

```sql
CREATE DATABASE festive_sales;
```

### 📌 Create Table

```sql
CREATE TABLE sales (
    user_id INT,
    cust_name TEXT,
    product_id TEXT,
    gender TEXT,
    age_group TEXT,
    age INT,
    marital_status INT,
    state TEXT,
    zone TEXT,
    occupation TEXT,
    product_category TEXT,
    orders INT,
    amount INT
);
```

### 📌 Import CSV Data

```sql
COPY sales
FROM 'C:/Users/Dipendra/Desktop/diwali_cleaned.csv'
DELIMITER ','
CSV HEADER;
```

---

## 📊 SQL Analysis Queries

### 🔹 Total Revenue

```sql
SELECT SUM(amount) AS total_revenue FROM sales;
```

### 🔹 Total Orders

```sql
SELECT SUM(orders) AS total_orders FROM sales;
```

### 🔹 Top States by Revenue

```sql
SELECT state, SUM(amount) AS revenue
FROM sales
GROUP BY state
ORDER BY revenue DESC
LIMIT 5;
```

### 🔹 Gender-wise Sales

```sql
SELECT gender, SUM(amount) AS revenue
FROM sales
GROUP BY gender;
```

### 🔹 Product Category Performance

```sql
SELECT product_category, SUM(amount) AS revenue
FROM sales
GROUP BY product_category
ORDER BY revenue DESC;
```

---

## 📊 Dashboard Pages

### 🏠 1. Home Page

* Navigation-based UI

### 📈 2. Sales Performance Insights

* KPIs, charts, slicers, table

### 💰 3. Revenue & Orders Analysis

* Financial KPIs, charts, tables

---

## 📌 Key Metrics (DAX)

```DAX
Total Sales = SUM(sales[amount])
Total Orders = SUM(sales[orders])
Avg Order Value = DIVIDE([Total Sales], [Total Orders])
Discount Amount = SUM(sales[amount]) * 0.10
Net Revenue = SUM(sales[amount]) - [Discount Amount]
```

---

## 🧠 Key Insights

* Top-performing states identified
* Customer behavior analyzed
* Product performance evaluated
* Discount impact studied

---

## 💼 Business Use Case

* Track sales performance
* Understand customers
* Improve strategy

---

## 🔗 Author

**Dipendra Pardhi**
