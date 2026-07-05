select
CASE
 WHEN tenure <=12 THEN '0-12 months'
 WHEN tenure <=24 THEN '13-24 months'
 WHEN tenure <=48 THEN '25-48 months'
 ELSE '49+ months'
 end as tenure_group,
 count(*) as customers_count,
 sum(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) churned_customers,
 round(sum(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END)*100/count(*),2) as churn_rate
 from telcom_churn
 group by tenure_group