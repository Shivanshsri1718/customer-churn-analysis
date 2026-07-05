select 
CASE
WHEN MonthlyCharges < 30 then 'low'
WHEN MonthlyCharges <=60 then 'medium'
WHEN MonthlyCharges <=80 then 'high'
WHEN MonthlyCharges <=100 then 'very high'
WHEN MonthlyCharges <=120 then 'expensive'
end as monthlyexpense,
count(*) as total_customers,
sum(case when churn = 'Yes' then 1 else 0 end) as churned_customers,
round(sum(case when churn = 'Yes' then 1 else 0 end)*100/count(*),2) as churn_rate
 from telcom_churn
 group by monthlyexpense
