SELECT 
  customerID,
  Contract,
  MonthlyCharges,
  ROUND(AVG(MonthlyCharges) OVER (PARTITION BY Contract), 2) AS avg_charges_by_contract
FROM telcom_churn
LIMIT 20