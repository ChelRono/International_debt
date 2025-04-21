select *
from dataanalytics.international_debt;

--1. What is the total amount of debt owed by all countries in the dataset?
select sum(debt) as total_debt
from dataanalytics.international_debt;

--2.How many distinct countries are recorded in the dataset?
SELECT count(distinct country_name) AS total_distinct_countries
FROM dataanalytics.international_debt;

--3.What are the distinct types of debt indicators, and what do they represent?
select distinct indicator_code 
from dataanalytics.international_debt;

--4.Which country has the highest total debt, and how much does it owe?
select country_name,sum(debt) as highest_debt
from dataanalytics.international_debt
group by country_name 
order by highest_debt desc 
limit 1;

--5.What is the average debt across different debt indicators?
select indicator_code ,avg(debt) as average_debt_indicators
from dataanalytics.international_debt
group by indicator_code  
order by average_debt_indicators desc ;

--6.Which country has made the highest amount of principal repayments?
select country_name, indicator_name, debt
from dataanalytics.international_debt
where indicator_name like 'Principal repayments on external debt%'
--group by country_name, indicator_name, debt 
order by debt desc
limit 1;

--7.What is the most common debt indicator across all countries?
select distinct indicator_code, count(indicator_code ) as indicator_count
from dataanalytics.international_debt
group by indicator_code
order by indicator_count  desc;





