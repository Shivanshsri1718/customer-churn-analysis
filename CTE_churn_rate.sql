SELECT 
    COUNT(*), contract
FROM
    telcom_churn
GROUP BY contract;

with contract_count as(
select count(*) customers_count,
contract as contract_type,
sum(case when churn = 'yes' then 1 else 0 end) as churned_customers
from telcom_churn
group by contract
)
select *, 
round(churned_customers * 100/customers_count,2) as churn_rate_by_contract
from contract_count
order by churn_rate_by_contract desc