USE customer_churn_db;
DESCRIBE customer_churn_raw;
SELECT COUNT(*) AS Total_Customers
FROM customer_churn_raw;
SELECT customerID, COUNT(*) AS Duplicate_Count
FROM customer_churn_raw
GROUP BY customerID
HAVING COUNT(*) > 1;
SELECT COUNT(*) AS Blank_TotalCharges
FROM customer_churn_raw
WHERE TotalCharges = '';