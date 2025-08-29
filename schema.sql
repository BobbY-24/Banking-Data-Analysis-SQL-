DESCRIBE bank_churn;
SELECT COUNT(*) AS total_customers FROM bank_churn;
SELECT Exited, COUNT(*) AS count,
       ROUND(COUNT(*) / (SELECT COUNT(*) FROM bank_churn) * 100, 2) AS pct
FROM bank_churn
GROUP BY Exited;
SELECT AVG(Age) AS avg_age, AVG(Balance) AS avg_balance
FROM bank_churn;

SELECT Gender, Exited, COUNT(*) AS count
FROM bank_churn
GROUP BY Gender, Exited;

SELECT Geography, Exited, COUNT(*) AS count
FROM bank_churn
GROUP BY Geography, Exited;

SELECT Exited,
       ROUND(AVG(CreditScore), 2) AS avg_credit,
       ROUND(AVG(Balance), 2) AS avg_balance
FROM bank_churn
GROUP BY Exited;

SELECT Exited, ROUND(AVG(NumOfProducts), 2) AS avg_products
FROM bank_churn
GROUP BY Exited;

SELECT
    CASE
        WHEN Age < 30 THEN '<30'
        WHEN Age BETWEEN 30 AND 50 THEN '30-50'
        ELSE '>50'
        END AS age_group,
    COUNT(*) AS total_customers,
    SUM(Exited) AS churned,
    ROUND(SUM(Exited) / COUNT(*) * 100, 2) AS churn_rate
FROM bank_churn
GROUP BY age_group
ORDER BY age_group;

SELECT IsActiveMember, Exited, COUNT(*) AS count
FROM bank_churn
GROUP BY IsActiveMember, Exited;

SELECT HasCrCard, Exited, COUNT(*) AS count
FROM bank_churn
GROUP BY HasCrCard, Exited;

SELECT Exited, ROUND(AVG(EstimatedSalary), 2) AS avg_salary
FROM bank_churn
GROUP BY Exited;