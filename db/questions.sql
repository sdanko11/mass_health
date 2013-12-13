--What 3 towns have the highest population of citizens that are 65 years and older?

SELECT geography FROM mass_health_data WHERE age_65_2005 > 1 AND geography != 'Massachusetts Total' 
ORDER BY age_65_2005 DESC LIMIT 3;

--What 3 towns have the highest population of citizens that are 19 years and younger?

SELECT geography FROM mass_health_data WHERE age_0_19_2005 > 0 AND geography != 'Massachusetts Total'
ORDER BY age_0_19_2005 DESC LIMIT 3;

--What 5 towns have the lowest per capita income?

SELECT geography FROM mass_health_data WHERE per_capita_income_year_2000  > 0 AND geography 
!= 'Massachusetts Total' ORDER BY per_capita_income_year_2000 LIMIT 5;

--Omitting Boston, Becket, and Beverly, what town has the highest percentage of teen births?

SELECT geography FROM mass_health_data WHERE geography != 'Massachusetts ToTal' AND geography 
!= 'Boston' AND geography != 'Becket' AND geography != 'Beverly' 
ORDER BY percentage_of_teen_births_2005_2008 DESC LIMIT 1;

--Omitting Boston, what town has the highest number of infant mortalities?

SELECT geography FROM mass_health_data WHERE geography != 'Massachusetts Total' 
AND geography != 'Boston' ORDER BY infant_mortality_rate_2005_2008 DESC LIMIT 1;