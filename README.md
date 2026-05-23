# Customer Churn Analysis with SQL

## Overview
This project analyzes a bank customer churn dataset using SQL. It focuses on churn counts, churn rate by customer group, and aggregate comparisons across demographic and account features. The project complements the Python-based bank churn prediction repository by showing database querying and analytical SQL skills.

## Motivation
SQL remains a core skill for data science and analytics work. This repo demonstrates how to translate a tabular ML dataset into business-facing questions about churn, customer segments, and retention risk.

## Dataset
- **Source:** Kaggle Bank Customer Churn dataset.
- **File:** `data/Churn_Modelling.csv`
- **SQL file:** `sql/schema.sql`
- **Target variable:** `Exited`, where `1` indicates churn and `0` indicates retained.
- **Important features:** age, geography, gender, balance, credit score, active-member status, credit-card status, and number of products.
- **Dataset size:** TODO: add dataset size after loading into SQL.

## Methods
- Count total customers and churn distribution.
- Compute churn rates by age group.
- Compare churn by gender, geography, active membership, credit-card status, and account variables.
- Use aggregation queries to summarize customer behavior.

## Results
TODO: add metric after rerunning SQL queries.

## Key Insights
- SQL can quickly surface churn patterns by customer segment.
- The SQL analysis is a useful companion to the machine learning churn model.
- Further work should connect query outputs to visual summaries and model features.

## Limitations
- The repository currently contains query examples, not a fully automated database setup.
- Query results are not saved in `results/` yet.
- The analysis is descriptive and does not prove causal churn drivers.

## Future Improvements
- Add database setup instructions for SQLite or PostgreSQL.
- Save query outputs as CSV files in `results/`.
- Add a short data dictionary.
- Link insights to the Python churn prediction repo.

## How to Run
```bash
git clone https://github.com/BobbY-24/Banking-Data-Analysis-SQL-.git
cd Banking-Data-Analysis-SQL-
```

Load `data/Churn_Modelling.csv` into a table named `bank_churn`, then run the queries in `sql/schema.sql`.
