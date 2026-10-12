
-- Customer Churn Analysis
-- Step 1: Data Exploration and Quality Checks

USE customer_churn_db;

-- 1. Understand the table structure
DESCRIBE customer_churn_raw;

-- 2. Check the total number of records
SELECT COUNT(*) AS Total_Rows
FROM customer_churn_raw;

-- 3. Check unique customers
SELECT COUNT(DISTINCT customerID) AS Unique_Customers
FROM customer_churn_raw;

-- 4. Check duplicate customer IDs
SELECT customerID, COUNT(*) AS Duplicate_Count
FROM customer_churn_raw
GROUP BY customerID
HAVING COUNT(*) > 1;

-- 5. Check missing or blank TotalCharges
SELECT COUNT(*) AS Blank_TotalCharges
FROM customer_churn_raw
WHERE TotalCharges IS NULL
   OR TRIM(TotalCharges) = '';

-- 6. Check missing customer IDs
SELECT COUNT(*) AS Missing_Customer_IDs
FROM customer_churn_raw
WHERE customerID IS NULL
   OR TRIM(customerID) = '';

-- 7. Understand the overall churn distribution
SELECT
    Churn,
    COUNT(*) AS Customer_Count,
    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM customer_churn_raw),
        2
    ) AS Customer_Percentage
FROM customer_churn_raw
GROUP BY Churn;

-- 8. Check contract categories
SELECT Contract, COUNT(*) AS Customers
FROM customer_churn_raw
GROUP BY Contract
ORDER BY Customers DESC;

-- 9. Check internet service categories
SELECT InternetService, COUNT(*) AS Customers
FROM customer_churn_raw
GROUP BY InternetService
ORDER BY Customers DESC;

-- 10. Check payment method categories
SELECT PaymentMethod, COUNT(*) AS Customers
FROM customer_churn_raw
GROUP BY PaymentMethod
ORDER BY Customers DESC;

-- 11. Check tenure and monthly charges
SELECT
    MIN(tenure) AS Minimum_Tenure,
    MAX(tenure) AS Maximum_Tenure,
    ROUND(AVG(tenure), 2) AS Average_Tenure,
    ROUND(MIN(MonthlyCharges), 2) AS Minimum_Monthly_Charges,
    ROUND(MAX(MonthlyCharges), 2) AS Maximum_Monthly_Charges,
    ROUND(AVG(MonthlyCharges), 2) AS Average_Monthly_Charges
FROM customer_churn_raw;
