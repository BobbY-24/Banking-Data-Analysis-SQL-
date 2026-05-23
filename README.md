# Customer Churn Analysis with SQL

## Overview
I analyzed a bank customer churn dataset using SQL. The queries focus on churn counts, churn rate by customer group, and aggregate comparisons across demographic and account features.

## Motivation
I built this repo to show analytical SQL skills alongside my Python churn prediction project. SQL is still central to data science work, and this project shows how I translate a dataset into business-facing questions.

## Dataset
- **Source:** Kaggle Bank Customer Churn dataset.
- **File:** `data/Churn_Modelling.csv`
- **SQL file:** `sql/schema.sql`
- **Target variable:** `Exited`, where `1` indicates churn and `0` indicates retained.
- **Important features:** age, geography, gender, balance, credit score, active-member status, credit-card status, and number of products.

## Methods
- I counted total customers and churn distribution.
- I computed churn rates by age group.
- I compared churn by gender, geography, active membership, credit-card status, and account variables.
- I used aggregation queries to summarize customer behavior.

## Results
I use this repository to focus on SQL query design rather than a model metric. The useful output is a set of reusable churn-analysis queries that can be run after loading the dataset into a `bank_churn` table.

## Key Insights
- SQL quickly surfaces churn patterns by customer segment.
- This analysis complements the Python churn prediction model.
- Query outputs would be stronger if saved as reproducible result tables.

## Limitations
- I include query examples, not a fully automated database setup.
- Query results are not saved in `results/` yet.
- The analysis is descriptive and does not prove causal churn drivers.

## How to Run
```bash
git clone https://github.com/BobbY-24/Banking-Data-Analysis-SQL-.git
cd Banking-Data-Analysis-SQL-
```

Load `data/Churn_Modelling.csv` into a table named `bank_churn`, then run the queries in `sql/schema.sql`.
