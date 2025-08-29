🏦 Customer Churn Analysis with SQL
📌 Project Overview
This project analyzes customer churn data from a bank to uncover insights into customer behavior, risk factors, and retention opportunities. Using SQL queries, the project explores demographic, financial, and behavioral attributes of customers to identify patterns that lead to churn.
The dataset used (bank_churn) includes information such as customer demographics, credit score, account balance, tenure, number of products, and churn status.

🎯 Objectives
Understand the distribution of churn across customer groups


Analyze the effect of demographic factors (age, gender, geography) on churn


Examine financial indicators (balance, credit score, salary) in relation to churn


Explore product/service usage and its correlation with customer retention


Provide actionable insights for reducing churn



🛠️ Tools & Technologies
MySQL – Data storage and analysis through SQL queries


Kaggle Dataset – Bank customer churn dataset


Python (optional) – For complementary data visualization (Pandas, Matplotlib, Seaborn)



📂 Project Structure
├── data/
│   └── bank_churn.csv        # Original dataset from Kaggle
├── sql/
│   ├── create_database.sql   # Script to create `bank_data` database
│   ├── create_table.sql      # Script to create `bank_churn` table
│   ├── load_data.sql         # Script to import dataset into MySQL
│   ├── analysis_queries.sql  # SQL queries for churn analysis
├── README.md                 # Project documentation


🔍 Example Queries
Customer churn rate:

 SELECT 
    (SUM(CASE WHEN Exited = 1 THEN 1 ELSE 0 END) / COUNT(*)) * 100 AS churn_rate
FROM bank_churn;


Churn by geography:

 SELECT Geography, 
       COUNT(*) AS total_customers,
       SUM(CASE WHEN Exited = 1 THEN 1 ELSE 0 END) AS churned_customers
FROM bank_churn
GROUP BY Geography;


Effect of number of products:

 SELECT NumOfProducts, 
       COUNT(*) AS total_customers,
       SUM(CASE WHEN Exited = 1 THEN 1 ELSE 0 END) AS churned_customers
FROM bank_churn
GROUP BY NumOfProducts;



📊 Insights (Expected)
Certain geographies may have higher churn rates


Higher credit scores often correlate with lower churn


Customers with multiple products tend to be more loyal


Age and tenure are significant churn factors



🚀 Next Steps
Integrate Python data visualization for richer insights


Build a machine learning churn prediction model


Create an interactive dashboard (Tableau/Power BI/Streamlit)



🙌 Acknowledgments
Dataset: Kaggle – Bank Customer Churn Dataset


Tools: MySQL, Python



