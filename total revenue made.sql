select (round(sum(try_cast(TotalCharges AS double)),2)) -
(round(sum(case when Churn = 'Yes' then try_cast(TotalCharges AS double)  else 0 end),2)) as total_revenue_made
from telcom_churn