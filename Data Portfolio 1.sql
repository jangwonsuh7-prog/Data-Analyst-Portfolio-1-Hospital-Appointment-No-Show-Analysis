--Overview
Select *
from Appt_No_Show_cleaned

-- Average No_Show rate
select round(avg(No_show)*100,2) as avg_no_show
from Appt_No_Show_cleaned


-- Average No_Show rate by SMS Received
select SMS_received, round(avg(No_show)*100,2) as avg_no_show
from Appt_No_Show_cleaned
group by SMS_received


-- Average No_Show rate by Age Group
Select
	CASE
		when Age <= 20 then 'Age <=20'
		when Age >20 and Age <=40 then '20< Age <=40'
		when Age >40 and Age <=60 then '40< Age <=60'
		else 'Age Over 60'
		end as Age_group,
		round(avg(No_show)*100,2) as avg_no_show, count(*)
from Appt_No_Show_cleaned
group by Age_group
order by avg_no_show DESC

-- Average No_Show rate by Age Group and SMS Received
select
	CASE
		when Age <= 20 then 'Age <=20'
		when Age >20 and Age <=40 then '20< Age <=40'
		when Age >40 and Age <=60 then '40< Age <=60'
		else 'Age Over 60'
		end as Age_group, SMS_received,
		round(avg(No_show)*100,2) as avg_no_show, count(*)
from Appt_No_Show_cleaned
group by Age_group, SMS_received
order by Age_group, SMS_received

-- Average No_Show rate by Neighborhood
Select Neighbourhood, round(avg(No_show)*100,2) as avg_no_show, count(*)
from Appt_No_Show_cleaned
group by Neighbourhood
order by avg_no_show DESC

-- Average No_Show rate by Wait Days Group
Select
	CASE
		when WaitDays < 7 then 'Less than 1 Week'
		when WaitDays >=7 and Age < 14 then 'between 1 Week and 2 Weeks'
		when WaitDays >=14 and Age < 21 then 'between 2 Week and 3 Weeks'
		else 'Over 3 Weeks'
		end as WaitDays_group,
		round(avg(No_show)*100,2) as avg_no_show, count(*)
from Appt_No_Show_cleaned
group by WaitDays_group
Order by avg_no_show DESC

-- Average No_Show rate by Wait Days Group 2
Select
	CASE
		when WaitDays < 7 then 'Less than 1 Week'
		else 'Over 1 Week'
		end as WaitDays_group2,
		round(avg(No_show)*100,2) as avg_no_show, count(*)
from Appt_No_Show_cleaned
group by WaitDays_group2
Order by avg_no_show DESC