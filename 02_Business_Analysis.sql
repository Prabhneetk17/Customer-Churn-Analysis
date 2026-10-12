
USE customer_churn_db;

-- Business Question 1:
-- What proportion of customers have churned?

SELECT
    COUNT(*) AS Total_Customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        AS Churned_Customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(*),
        2
    ) AS Overall_Churn_Rate
FROM customer_churn_raw;


-- Business Question 2:
-- Which contract types have the highest churn rate?

SELECT
    Contract,
    COUNT(*) AS Total_Customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        AS Churned_Customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(*),
        2
    ) AS Churn_Rate
FROM customer_churn_raw
GROUP BY Contract
ORDER BY Churn_Rate DESC;


-- Business Question 3:
-- Which payment methods are associated with higher churn?

SELECT
    PaymentMethod,
    COUNT(*) AS Total_Customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        AS Churned_Customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(*),
        2
    ) AS Churn_Rate
FROM customer_churn_raw
GROUP BY PaymentMethod
ORDER BY Churn_Rate DESC;


-- Business Question 4:
-- How does churn differ by internet service?

SELECT
    InternetService,
    COUNT(*) AS Total_Customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        AS Churned_Customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(*),
        2
    ) AS Churn_Rate
FROM customer_churn_raw
GROUP BY InternetService
ORDER BY Churn_Rate DESC;


-- Business Question 5:
-- Do churned customers have shorter tenure?

SELECT
    Churn,
    COUNT(*) AS Customers,
    ROUND(AVG(tenure), 2) AS Average_Tenure,
    ROUND(AVG(MonthlyCharges), 2) AS Average_Monthly_Charges
FROM customer_churn_raw
GROUP BY Churn;
