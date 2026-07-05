select contract,  count(customerID) as customer_count ,
sum(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) as churned_customers ,
round((sum(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END))*100 /count(customerID),2) as churn_rate
from telcom_churn
GROUP by contract