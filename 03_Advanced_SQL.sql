#11. Top 10 Highest Paying Customers
USE customer_churn_db;
SELECT
    customerID,
    MonthlyCharges,
    TotalCharges,
    Contract
FROM customer_churn_raw
ORDER BY TotalCharges DESC
LIMIT 10;
#12. Churn Rate by Contract
SELECT
    Contract,
    ROUND(
        SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)
        *100.0/COUNT(*),2
    ) AS Churn_Rate
FROM customer_churn_raw
GROUP BY Contract;
#13. Churn Rate by Payment Method
SELECT
    PaymentMethod,
    ROUND(
        SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)
        *100.0/COUNT(*),2
    ) AS Churn_Rate
FROM customer_churn_raw
GROUP BY PaymentMethod
ORDER BY Churn_Rate DESC;
#14. Churn Rate by Internet Service
SELECT
    InternetService,
    ROUND(
        SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)
        *100.0/COUNT(*),2
    ) AS Churn_Rate
FROM customer_churn_raw
GROUP BY InternetService
ORDER BY Churn_Rate DESC;
#15. Customer Segmentation
SELECT
    CASE
        WHEN MonthlyCharges < 35 THEN 'Low Value'
        WHEN MonthlyCharges BETWEEN 35 AND 70 THEN 'Medium Value'
        ELSE 'High Value'
    END AS Customer_Segment,
    COUNT(*) AS Customers
FROM customer_churn_raw
GROUP BY Customer_Segment;
#16. Senior Citizens Who Churned
SELECT
    SeniorCitizen,
    COUNT(*) AS Customers
FROM customer_churn_raw
WHERE Churn='Yes'
GROUP BY SeniorCitizen;