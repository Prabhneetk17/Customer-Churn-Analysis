#Customer Churn Analytics Project
#1. Overall Churn Rate
#How many customers have churned?
USE customer_churn_db;
SELECT Churn,
       COUNT(*) AS Total_Customers
FROM customer_churn_raw
GROUP BY Churn;
#2. Gender Distribution
SELECT Gender,
       COUNT(*) AS Customers
FROM customer_churn_raw
GROUP BY Gender;
#3. Senior Citizens
SELECT SeniorCitizen,
       COUNT(*) AS Customers
FROM customer_churn_raw
GROUP BY SeniorCitizen;
#4. Contract Type
SELECT Contract,
       COUNT(*) AS Customers
FROM customer_churn_raw
GROUP BY Contract
ORDER BY Customers DESC;
#5. Churn by Contract
SELECT Contract,
       Churn,
       COUNT(*) AS Customers
FROM customer_churn_raw
GROUP BY Contract, Churn
ORDER BY Contract;
#6. Churn Rate (%)
SELECT
    ROUND(
        SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)*100.0
        /COUNT(*),2
    ) AS Churn_Rate_Percentage
FROM customer_churn_raw;
#7. Average Monthly Charges
SELECT
    Churn,
    ROUND(AVG(MonthlyCharges),2) AS Avg_Monthly_Charges
FROM customer_churn_raw
GROUP BY Churn;
#8. Average Tenure
SELECT
    Churn,
    ROUND(AVG(Tenure),2) AS Avg_Tenure
FROM customer_churn_raw
GROUP BY Churn;
#9. Payment Method Analysis
SELECT
    PaymentMethod,
    Churn,
    COUNT(*) AS Customers
FROM customer_churn_raw
GROUP BY PaymentMethod, Churn
ORDER BY PaymentMethod;
#10. Internet Service Analysis
SELECT
    InternetService,
    Churn,
    COUNT(*) AS Customers
FROM customer_churn_raw
GROUP BY InternetService, Churn
ORDER BY InternetService;