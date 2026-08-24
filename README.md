# 🏥 Healthcare Data Analysis

## 📌 Project Overview

This project is a Healthcare Data Analysis project developed using **Python, PostgreSQL, and SQL**.

The main goal of this project is to explore healthcare data, prepare and analyze the dataset, and extract meaningful insights related to patients, hospitals, medical conditions, admissions, billing, insurance providers, doctors, and length of stay.

The project follows a practical data analytics workflow:

**Raw Data → Python → Data Preparation & EDA → Cleaned Data → PostgreSQL → SQL Analysis → Insights**

---

## 🎯 Project Objectives

- Understand and explore the healthcare dataset
- Perform data preparation and Exploratory Data Analysis (EDA)
- Analyze patient demographics and medical information
- Analyze hospitals, doctors, and admissions
- Analyze billing and healthcare revenue
- Analyze insurance providers
- Identify important trends and patterns
- Use SQL to answer business-related questions
- Practice SQL concepts from basic to advanced level

---

## 🔄 Project Workflow

### 1. Python

Python was used as the first stage of the project for:

- Loading the healthcare dataset
- Exploring the data
- Understanding columns and data types
- Data preparation and cleaning
- Exploratory Data Analysis (EDA)
- Understanding patient, medical, hospital, and billing patterns
- Creating the cleaned dataset

The cleaned dataset was then prepared for database analysis.

### 2. PostgreSQL

After the Python analysis, the prepared dataset was loaded into **PostgreSQL**.

A `healthcare` table was created containing information such as:

- Patient name
- Age
- Gender
- Blood type
- Medical condition
- Admission date
- Doctor
- Hospital
- Insurance provider
- Billing amount
- Admission type
- Discharge date
- Medication
- Test results
- Length of stay
- Age group
- Billing category

### 3. SQL Analysis

SQL was then used to perform detailed analysis and answer different healthcare-related questions.

---

## 🐍 Python Analysis

The Python stage focused mainly on understanding and preparing the dataset before database analysis.

### Data Exploration

The dataset was explored to understand:

- Dataset structure
- Number of rows and columns
- Column information
- Data types
- Patient-related variables
- Hospital-related variables
- Medical variables
- Billing variables

### Data Preparation

The data was prepared and cleaned before being used for further analysis.

The cleaned dataset generated during the project is:

`healthcare_cleaned2.csv`

### Exploratory Data Analysis

EDA was performed to understand patterns related to:

- Patient age
- Age groups
- Gender
- Blood groups
- Medical conditions
- Admission types
- Billing amounts
- Hospitals
- Insurance providers
- Length of stay
- Other healthcare-related variables

---

## 📌 Key Business Questions

The analysis focuses on questions such as:

- How many patients are in the dataset?
- What is the average age of patients?
- Which medical conditions are most common?
- How are patients distributed by gender and blood type?
- Which hospitals generate the highest revenue?
- Which hospitals have the highest average length of stay?
- Which insurance providers generate the most revenue?
- Which doctors handle the highest number of patients?
- How does patient admission change over time?
- How does revenue change month by month?
- Which hospitals rank highest based on revenue?
- Which patients have billing amounts above the average?

---

## 🛠️ Technologies Used

- **Python**
- **Pandas**
- **NumPy**
- **Matplotlib**
- **Seaborn**
- **PostgreSQL**
- **SQL**
- **Jupyter Notebook**
- **GitHub**

---

## 📁 Project Files

```text
Healthcare_analysis/
│
├── healthcare_analysis.ipynb
├── healthcare_dataset.csv
├── healthcare_cleaned2.csv
├── healthcare_queries.sql
└── README.md
