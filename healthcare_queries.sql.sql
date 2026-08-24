--create table --


CREATE TABLE healthcare (
   
    name VARCHAR(100),
    age INT,
    gender VARCHAR(20),
    blood_type VARCHAR(5),
    medical_condition VARCHAR(100),

    date_of_admission DATE,

    doctor VARCHAR(100),
    hospital VARCHAR(150),
    insurance_provider VARCHAR(100),

    billing_amount NUMERIC(12,2),

    room_number INT,

    admission_type VARCHAR(30),

    discharge_date DATE,

    medication VARCHAR(100),

    test_results VARCHAR(30),

    length_of_stay INT,

    age_group VARCHAR(30),

    billing_category VARCHAR(20)
);

SELECT *
FROM healthcare
LIMIT 5;

SELECT COUNT(*) AS total_patients
FROM healthcare;

--Average Age of Patients--
SELECT ROUND(AVG(age),2) AS average_age
FROM healthcare;

--Total Revenue
SELECT ROUND(SUM(billing_amount),2) AS total_revenue
FROM healthcare;

--highest billing amount 
SELECT MAX(billing_amount) AS highest_bill
FROM healthcare;

--patients older than 60 
select count(*) from healthcare 
where age >60;


--patients with diabetes
SELECT *
FROM healthcare
WHERE medical_condition = 'Diabetes' 
and gender = 'Female';

-- gender distribution 
select gender , count (*)  as total_patient from healthcare 
group by gender ; 


--patients by blood group 
SELECT
    blood_type,
    COUNT(*) AS total_patients
FROM healthcare
GROUP BY blood_type
ORDER BY total_patients DESC;

-- medical condition distribution 

SELECT
medical_condition,
COUNT(*) AS patients
FROM healthcare
GROUP BY medical_condition
ORDER BY patients DESC;
 

--revenue by hospital

SELECT
hospital,
SUM(billing_amount) AS revenue
FROM healthcare
GROUP BY hospital
ORDER BY revenue DESC;


--revenue by insurance provider

SELECT
insurance_provider,
SUM(billing_amount) AS revenue
FROM healthcare
GROUP BY insurance_provider
ORDER BY revenue DESC;

--avg billing by admission type 

SELECT
admission_type,
ROUND(AVG(billing_amount),2) average_bill
FROM healthcare
GROUP BY admission_type;

 
--avg length of stay by hospital 

SELECT
    hospital,
    ROUND(AVG(length_of_stay),2) AS average_stay
FROM healthcare
GROUP BY hospital
ORDER BY average_stay DESC;

-- top 10 doctors

SELECT doctor,
COUNT(*) patients FROM healthcare
GROUP BY doctor
ORDER BY patients DESC
LIMIT 10;


-- top 10 hospitals 

SELECT
hospital,
SUM(billing_amount) revenue
FROM healthcare
GROUP BY hospital
ORDER BY revenue DESC
LIMIT 10;

-- high revenue hospitals 

SELECT
hospital,
SUM(billing_amount) revenue
FROM healthcare
GROUP BY hospital
HAVING SUM(billing_amount)>1000000;


-- billing category 
SELECT
billing_category,
COUNT(*) patients
FROM healthcare
GROUP BY billing_category;

--monthly admission 
 SELECT
    DATE_TRUNC('month', date_of_admission) AS month,
    COUNT(*) AS total_admissions
FROM healthcare
GROUP BY month
ORDER BY month;

--monthly revenue trend 
SELECT
    DATE_TRUNC('month', date_of_admission) AS month,
    ROUND(SUM(billing_amount),2) AS monthly_revenue
FROM healthcare
GROUP BY month
ORDER BY month;


--Rank hospitals    window function

SELECT
    hospital,
    SUM(billing_amount) AS total_revenue,
    RANK() OVER (ORDER BY SUM(billing_amount) DESC) AS hospital_rank
FROM healthcare
GROUP BY hospital;

--patients with billing above avg

select name ,hospital ,billing_amount from healthcare
where billing_amount>
(
select avg(billing_amount)
from healthcare
);

--CTE hospital performance

WITH hospital_summary AS
(
    SELECT
        hospital,
        COUNT(*) AS total_patients,
        SUM(billing_amount) AS revenue
    FROM healthcare
    GROUP BY hospital
)

SELECT *
FROM hospital_summary
ORDER BY revenue DESC;




























