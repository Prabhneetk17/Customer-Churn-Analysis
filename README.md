# Customer Churn Analysis | SQL, SAS & Power BI

## 1. Project Overview

Customer churn occurs when customers discontinue a company's services. High churn can affect recurring revenue, customer lifetime value, and business growth.

This project analyzes a telecommunications customer dataset to identify customer segments associated with higher churn rates. SQL was used for data exploration and business analysis, SAS for descriptive statistics, and Power BI for interactive visualization.

**Business objective:** Identify customer segments with higher churn rates and recommend areas for further investigation to support customer-retention strategies.

## 2. Business Questions

- What percentage of customers have churned?
- Which contract types have the highest churn rates?
- How does churn vary by internet service and payment method?
- Do churned customers have shorter tenure?
- How do monthly charges differ between churned and retained customers?
- Which customer segments should the business investigate first?

## 3. Tools and Technologies

- **SQL (MySQL):** Data exploration, aggregation, churn-rate calculations, and customer segmentation.
- **SAS:** Frequency analysis, descriptive statistics, and exploratory visualizations.
- **Power BI:** KPI cards, customer-segment comparisons, interactive slicers, and dashboard reporting.
- **Excel/CSV:** Dataset inspection and data preparation.

## 4. Methodology

### Data Exploration and Quality Checks
- Inspected the dataset structure and record counts.
- Checked customer identifiers for duplicates.
- Investigated missing or blank values in TotalCharges.
- Examined categorical variables and numerical distributions.

### SQL Business Analysis
- Calculated overall customer churn.
- Compared churn rates by contract type, internet service, and payment method.
- Compared average tenure and monthly charges by churn status.
- Grouped customers into segments for further investigation.

### SAS Analysis
- Examined the distribution of churn and customer characteristics.
- Compared churn across contract, internet service, and payment-method categories.
- Summarized tenure and monthly charges for churned and retained customers.

### Power BI Dashboard
- Presented total customers, churned customers, churn rate, average monthly charges, and average tenure.
- Visualized churn across customer segments.
- Added slicers to support interactive exploration.

## 5. Key Findings

Analysis of the 7,043-customer dataset identified the following patterns:

- **Overall churn:** 1,869 customers churned, representing approximately 26.54% of the dataset.
- **Contract type:** The churn rate was approximately 42.71% for month-to-month customers, compared with 11.27% for one-year contracts and 2.83% for two-year contracts.
- **Payment method:** Customers using electronic checks had a churn rate of approximately 45.29%.
- **Internet service:** Fiber-optic customers had a churn rate of approximately 41.89%.
- **Customer tenure:** Churned customers had a substantially shorter average tenure than retained customers.

These findings describe associations in the dataset; they do not establish that any individual factor causes customer churn.

## 6. Business Recommendations

1. **Investigate early-tenure churn:** Examine onboarding, service activation, customer support, and the experiences of newer customers.
2. **Review contract-retention strategies:** Evaluate whether suitable longer-term plans or transparent retention offers could improve customer retention.
3. **Investigate high-churn payment segments:** Review payment friction, billing complaints, and payment-method preferences before proposing changes.
4. **Examine fiber-optic customer experiences:** Investigate service quality, pricing, reliability, and customer satisfaction among fiber-optic users.
5. **Monitor retention KPIs:** Track churn rates by customer segment over time to assess the effectiveness of future retention initiatives.

These recommendations are hypotheses for further investigation. Their impact should be tested before claiming improvements in retention or revenue.

## 7. Limitations

- The analysis uses a public customer dataset rather than live company data.
- The analysis is descriptive and does not establish causal relationships.
- The dataset does not independently establish why customers churned.
- The financial impact of the recommendations has not been measured.
- Missing values and data types must be validated before further analysis.

## 8. Repository Structure

- `01_Data_Exploration.sql` — SQL data exploration and quality checks.
- `02_Business_Analysis.sql` — SQL business questions and churn analysis.
- `03_Advanced_SQL.sql` — Additional SQL analysis.
- `01_Data_Exploration.sas` — Dataset import and initial exploration.
- `02_SAS_Analysis.sas` — Descriptive and comparative analysis.
- `Customer_Churn_Analysis.pbix` — Power BI dashboard.
- `WA_Fn-UseC_-Telco-Customer-Churn.csv` — Source dataset.

## 9. Conclusion

This project demonstrates how SQL, SAS, and Power BI can be used together to explore customer churn, compare customer segments, and communicate findings relevant to retention decisions. The analysis identifies segments for further investigation and provides a foundation for more advanced customer-retention analysis.
