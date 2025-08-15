# CREDITCARD-FRAUD-DETECTION-

# REPORT ON CREDITCARD FRAUD DETECTION ANALYSIS

# PROJECT PREVIEW
 The credit card fraud detection project aims to accurately identify fraudulent transactions within a highly imbalanced dataset containing legitimate (valid) transactions and fraud transactions, where only a small fraction of transactions is fraudulent. The dataset has 284, 807 transactions with only 492 labeled as fraud (about 0.17%) making it highly imbalanced.

  You can find the dataset I used here: https://www.kaggle.com/datasets/mlg-ulb/creditcardfraud
# STEPS INVOLVED;

# STEP 1. IMPORTING NECESSARY LIBRARIES: 
 Here, the necessary libraries for data handling, Visualization and modelling were imported.

# STEP2. LOADING THE DATA/DATA SOURCES:  
 The dataset was loaded in an Excel Spreadsheet and its structure examined. The dataset contains 284,807 total transactions with 31 Features including:
1. Column 1: Time; This shows how many seconds have passed since the first transactions in the dataset.
2.	Column 2-28: V1-V28; These are special features created to hide sensitive information about the original data.
3.	Column 29: Amount; This indicates transaction amount.
4.	Column 30: Class: Target/Response Variables (0 for Normal(valid) transactions, 1 for fraudulent transactions).

# STEP 3. TOOLS USED
 The following tools were used to analyze the dataset;
1. Microsoft Excel
2.	SQL
3.	Power Bi Desktop

# STEP 4: DATA CLEANING/PROCESSING
# DATA CLEANING: 
The dataset was cleaned by selecting the wanted attributes or variables, excluding null rows and treating outliers, if necessary, in addition to transforming data types to the wanted type, although the dataset didn’t need to go through all the alterations as there was no merging needed as well.

# STEP 5: EXPLORATORY DATA ANALYSIS (EDA)
 The following questions were used to query the credit card fraud detection dataset;
1.	Determine the total number of fraudulent transactions and valid transactions.
2.	What is the percentage of the class that was fraud?
3.	Determine the sum of false transactions made as against the actual transactions recorded in the dataset.
4.	The average time of the transactions 
5.	The least amount of transaction made in the dataset with a response variable(class) of 1.
6.	What is the average transaction amount in the dataset.
7.	Check the amount details of the fraudulent transactions as well as the valid transactions.
8.	 Determine the ratio of fraud cases to valid cases to measure or check if the data set is balanced or not.

# STEP  6: DATA ANALYSIS
 Using the sql query visual studio, the data set was queried using the following formats; 

 <img width="982" height="882" alt="image" src="https://github.com/user-attachments/assets/80f49b48-ed48-48c9-99f4-fac9d81c8df1" />


<img width="992" height="883" alt="image" src="https://github.com/user-attachments/assets/c2ee4e6d-41d3-4c96-b735-3e0fc1a52bc5" />

<img width="481" height="621" alt="image" src="https://github.com/user-attachments/assets/f9f922d6-4724-4f78-94e6-09a337dd77dd" />

<img width="463" height="295" alt="image" src="https://github.com/user-attachments/assets/1e48ba93-9518-4e03-882d-b3cb41266b86" />

<img width="485" height="314" alt="image" src="https://github.com/user-attachments/assets/12d84590-c94e-40fd-9aad-a540d1abca89" />

<img width="482" height="296" alt="image" src="https://github.com/user-attachments/assets/625fee3e-e520-4cd0-a672-d2a794051e4d" />

<img width="470" height="584" alt="image" src="https://github.com/user-attachments/assets/18fa4c03-f61c-4858-b453-d6c17fbd2143" />

# STEP 6: RESULTS AND FINDINGS
<img width="464" height="315" alt="image" src="https://github.com/user-attachments/assets/2d437498-86e1-4b72-a603-e82e041a6fb9" />

 The figure above shows the distribution of class, the row labelled with count of 284,315 which represents the non-fraudulent transactions and the row laballed 1 with count of 492 represents the fraudulent transactions, the Average time for the Total amount of transaction is 88.35, while that of time is 94.81.
Thus, the credit card fraud detection dataset  has 284,807 transactions with only 492 labelled as fraud (about 0.17%) making the dataset highly imbalanced.

<img width="581" height="341" alt="image" src="https://github.com/user-attachments/assets/53ae4fd4-5d9c-4976-9815-abdfcc85830c" />

 The figure above shows an influencer which shows that time is likely to increase when the sum of V1 is more than 1.5537 than ootherwise 
  (on Average), thus , in the data set the different variables influences time to either increase or decrease.
  
# RECOMMENDATIONS
 There are many ways to improve the model, such as using iton different datasets with varius sizes, different datatypes or by changing the data splitting ratio, in addition to viewing it from different algorithm perspective , an example can be merging telecom data to calculate the location of people to have better knowledge of the location of the card owner while his/her credit card is being used, as it will ease the detection because if the card owner is in Ghana and the transaction was made in Accra, it eill easily be detected as fraud.
Other machine learning techniques should be used for further analysis of this dataset.

# CONCLUSION
 This project spreads out a discussion on analysis in creditcard data processing and did well for the procession. By this, there is a tendency to remodel the credit card data to the format of data mining, primarily by the subsequent means that, like adding the applied mathematics field of the transaction, data cleaning, conversion, data integration and data duiscretization for further analysis. (Xiiaohua Hu, Db-Hreducton: A data pre processing Algorithm for Data Mining Application, 0893-965/03-2003, Elsevier Science Ltd).
