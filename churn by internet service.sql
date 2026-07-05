select InternetService, count(*) as customer_count,
sum(case when churn = 'Yes' then 1 else 0 end) as churned_customer,
round(sum(case when churn = 'Yes' then 1 when churn = 'No' then 0 end)*100/count(*),2) churn_rate
from telcom_churn
group by InternetService