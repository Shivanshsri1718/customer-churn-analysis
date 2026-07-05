select PaymentMethod,
round(sum(case WHEN churn = 'Yes' then try_cast(TotalCharges as double) ELSE 0 end),2) as total_lost_revenue,count(*) as total_customers
from telcom_churn
group by PaymentMethod