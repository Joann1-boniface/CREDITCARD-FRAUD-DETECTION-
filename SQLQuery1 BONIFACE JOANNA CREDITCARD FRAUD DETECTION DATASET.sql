use JOANNY
GO

Select *from [creditcard_jojo]


QUESTIONS FOR THE ANALYSIS OF CREDITCARD FRAUD DETECTION DATASET 

--1. Determine the total number of fraudulent transactions and valid transactions.
1a.ans.
SELECT COUNT(*) AS total_fraudulent_transactions
FROM creditcard_jojo
WHERE class = 1;

1b,ans.
SELECT COUNT(*) AS Total_valid_transactions
FROM creditcard_jojo
WHERE class = 0;


--2. what is the percentage of the class that was fraud?
ans.
SELECT
ROUND( (SUM(CASE WHEN class = 1 THEN 1 ELSE 0 END) * 100.0) / COUNT(*), 2) AS fraud_percentage
FROM 
creditcard_jojo

--3. Determine the sum of false transactions made against the actual transactions recorded in the dataset.
ans. 
SELECT
  COUNT(CASE WHEN class = 1 THEN 1 END) AS fraud_count,
  SUM(CASE WHEN class = 1 THEN amount ELSE 0 END) AS total_fraud_amount,
  COUNT(CASE WHEN class = 0 THEN 1 END) AS legit_count,
  SUM(CASE WHEN class = 0 THEN amount ELSE 0 END) AS total_legit_amount
FROM creditcard_jojo

--4. what is the average time of the transactions?
ans.
SELECT AVG(Time) AS AvgTransactionTime
FROM creditcard_jojo

--5. what is the least amount of transaction made in the dataset with the response variable(class = 1)?
ans.
SELECT MIN(amount) AS least_fraud_transaction
FROM creditcard_jojo
WHERE class = 1;

OR
SELECT MIN(amount) FROM creditcard_jojo WHERE class = 1;

--6. What is the average transaction amount in the dataset?
ans.
SELECT AVG(amount) AS average_transaction_amount
FROM creditcard_jojo;

--7. determine the ratio of fraud cases to valid cases to check if the dataset is balanced.
ans.
SELECT
    SUM(CASE WHEN class = 1 THEN 1 ELSE 0 END) AS fraud_cases,
    SUM(CASE WHEN class = 0 THEN 1 ELSE 0 END) AS valid_cases,
    ROUND(CAST(SUM(CASE WHEN class = 1 THEN 1 ELSE 0 END) AS FLOAT) /
          NULLIF(SUM(CASE WHEN class = 0 THEN 1 ELSE 0 END), 0), 4) AS fraud_to_valid_ratio
FROM creditcard_jojo;


--8. check amount details of the fraudulent transactions as well as the valid transactions.
ans.
SELECT 
    COUNT(CASE WHEN class = 1 THEN 1 END) AS fraud_count,
    SUM(CASE WHEN class = 1 THEN amount END) AS fraud_total_amount,
    AVG(CASE WHEN class = 1 THEN amount END) AS fraud_avg_amount,
    MIN(CASE WHEN class = 1 THEN amount END) AS fraud_min_amount,
    MAX(CASE WHEN class = 1 THEN amount END) AS fraud_max_amount,
    
    COUNT(CASE WHEN class = 0 THEN 1 END) AS valid_count,
    SUM(CASE WHEN class = 0 THEN amount END) AS valid_total_amount,
    AVG(CASE WHEN class = 0 THEN amount END) AS valid_avg_amount,
    MIN(CASE WHEN class = 0 THEN amount END) AS valid_min_amount,
    MAX(CASE WHEN class= 0 THEN amount END) AS valid_max_amount
FROM creditcard_jojo;