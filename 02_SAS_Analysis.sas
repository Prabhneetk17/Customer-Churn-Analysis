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

