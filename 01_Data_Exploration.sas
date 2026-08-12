filename csvfile "/home/u64564606/sasuser.v94/WA_Fn-UseC_-Telco-Customer-Churn.csv";
proc import datafile=csvfile
    out=work.customer_churn
    dbms=csv
    replace;
    getnames=yes;
run;
/* View first 10 rows */
proc print data=work.customer_churn(obs=10);
run;

/* Display dataset structure */

proc contents data=work.customer_churn;
run;
/* Frequency of categorical variables */

proc freq data=work.customer_churn;
tables Gender Churn Contract InternetService PaymentMethod;
run;
proc means data=work.customer_churn
mean median min max std;
var Tenure MonthlyCharges TotalCharges;
run;

/* Churn Distribution Chart */

title "Customer Churn Distribution";

proc sgplot data=work.customer_churn;
    vbar Churn;
run;

title;

/*Contract Type*/

title "Contract Type Distribution";

proc sgplot data=work.customer_churn;
    vbar Contract;
run;

title;

/*Internet Service*/ 

title "Internet Service Distribution";

proc sgplot data=work.customer_churn;
    vbar InternetService;
run;

title;

/*Payment Method*/

title "Payment Method Distribution";

proc sgplot data=work.customer_churn;
    vbar PaymentMethod;
run;

title;

/*Monthly Charges Histogram*/

title "Monthly Charges";

proc sgplot data=work.customer_churn;
    histogram MonthlyCharges;
run;

title;

/*Tenure Histogram*/

title "Customer Tenure";

proc sgplot data=work.customer_churn;
    histogram Tenure;
run;

title;

/*Monthly Charges by Churn*/

title "Monthly Charges by Churn";

proc sgplot data=work.customer_churn;
    vbox MonthlyCharges / category=Churn;
run;

title;

