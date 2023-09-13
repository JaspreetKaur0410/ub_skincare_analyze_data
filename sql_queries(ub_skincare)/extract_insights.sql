use  ub_skincare;

select  distinct skin_type  from user_recommendations;

/* top 5 cleanser dry skin  */
WITH temp AS
	(select skin_type, count(favorite_cleanser) as count_cleanser_dry_skin, favorite_cleanser
	from user_recommendations
	where skin_type='dry'
	group by favorite_cleanser)
SELECT *
FROM temp 
ORDER BY count_cleanser_dry_skin DESC
LIMIT 5;

/* top 5 cleanser oily skin  */
WITH temp AS
	(select skin_type, count(favorite_cleanser) as count_cleanser_oily_skin, favorite_cleanser
	from user_recommendations
	where skin_type='oily'
	group by favorite_cleanser)
SELECT *
FROM temp 
ORDER BY count_cleanser_oily_skin DESC
LIMIT 5;

/* top 5 cleanser sensitive skin  */
WITH temp AS
	(select skin_type, count(favorite_cleanser) as count_cleanser_Sensitive_skin, favorite_cleanser
	from user_recommendations
	where skin_type='Sensitive'
	group by favorite_cleanser)
SELECT *
FROM temp 
ORDER BY count_cleanser_Sensitive_skin DESC
LIMIT 5;


/* top 5 combination oily skin  */
WITH temp AS
	(select skin_type, count(favorite_cleanser) as count_cleanser_combination_skin, favorite_cleanser
	from user_recommendations
	where skin_type='Combination'
	group by favorite_cleanser)
SELECT *
FROM temp 
ORDER BY count_cleanser_combination_skin DESC
LIMIT 5;

/* top 5 favorite_moisturiser dry skin  */
WITH temp AS
	(select skin_type, count(favorite_moisturiser) as count_moisturiser_dry_skin, favorite_moisturiser
	from user_recommendations
	where skin_type='dry'
	group by favorite_moisturiser)
SELECT *
FROM temp 
ORDER BY count_moisturiser_dry_skin DESC
LIMIT 5;

/* top 5 favorite_moisturiser oily skin  */
WITH temp AS
	(select skin_type, count(favorite_moisturiser) as count_moisturiser_oily_skin, favorite_moisturiser
	from user_recommendations
	where skin_type='oily'
	group by favorite_moisturiser)
SELECT *
FROM temp 
ORDER BY count_moisturiser_oily_skin DESC
LIMIT 5;

/* top 5 favorite_moisturiser sensitive skin  */
WITH temp AS
	(select skin_type, count(favorite_moisturiser) as count_moisturiser_sensitive_skin, favorite_moisturiser
	from user_recommendations
	where skin_type='Sensitive'
	group by favorite_moisturiser)
SELECT *
FROM temp 
ORDER BY count_moisturiser_sensitive_skin DESC
LIMIT 5;

/* top 5 favorite_moisturiser combination skin  */
WITH temp AS
	(select skin_type, count(favorite_moisturiser) as count_moisturiser_Combination_skin, favorite_moisturiser
	from user_recommendations
	where skin_type='Combination'
	group by favorite_moisturiser)
SELECT *
FROM temp 
ORDER BY count_moisturiser_Combination_skin DESC
LIMIT 5;

/* top 5 favorite_sunscreen dry skin  */
WITH temp AS
	(select skin_type, count(favorite_sunscreen) as count_sunscreen_dry_skin, favorite_moisturiser
	from user_recommendations
	where skin_type='dry'
	group by favorite_sunscreen)
SELECT *
FROM temp 
ORDER BY count_sunscreen_dry_skin DESC
LIMIT 5;

/* top 5 favorite_sunscreen oily skin  */
WITH temp AS
	(select skin_type, count(favorite_sunscreen) as count_sunscreen_oily_skin, favorite_moisturiser
	from user_recommendations
	where skin_type='oily'
	group by favorite_sunscreen)
SELECT *
FROM temp 
ORDER BY count_sunscreen_oily_skin DESC
LIMIT 5;

/* top 5 favorite_sunscreen sensitive skin  */
WITH temp AS
	(select skin_type, count(favorite_sunscreen) as count_sunscreen_sens_skin, favorite_moisturiser
	from user_recommendations
	where skin_type='Sensitive'
	group by favorite_sunscreen)
SELECT *
FROM temp 
ORDER BY count_sunscreen_sens_skin DESC
LIMIT 5;

/* top 5 favorite_sunscreen combination skin  */
WITH temp AS
	(select skin_type, count(favorite_sunscreen) as count_sunscreen_combination_skin, favorite_moisturiser
	from user_recommendations
	where skin_type='Combination'
	group by favorite_sunscreen)
SELECT *
FROM temp 
ORDER BY count_sunscreen_combination_skin DESC
LIMIT 5;

/* top 5 favorite_sunscreen combination skin  */
WITH temp AS
	(select skin_type, count(favorite_sunscreen) as count_sunscreen_combination_skin, favorite_moisturiser
	from user_recommendations
	where skin_type='Combination'
	group by favorite_sunscreen)
SELECT *
FROM temp 
ORDER BY count_sunscreen_combination_skin DESC
LIMIT 5;

/* count number of people for different skin_type */
select skin_type, count(age) as people_count
from user_recommendations
group by skin_type;


/* count number of people in different age groups */
select ur.age_range, count(*) as people_count
from (select age,
	case when age>=12 and age<=18 then '12-18'
	when age>=19 and age<=25 then '19-25'
	when age>=26 and age<=34 then '26-34'
    when age>=35 and age<=345 then '35-45'
    when age>=46 and age<55 then '46-55'
    else '55+' end as `age_range`
from user_recommendations) ur
group by ur.`age_range`;

/* count number of people in each age group*/
select ur.age_range, count(*) as people_count
from (select age,
	case when age>=12 and age<=18 then '12-18'
	when age>=19 and age<=25 then '19-25'
	when age>=26 and age<=34 then '26-34'
    when age>=35 and age<=345 then '35-45'
    when age>=46 and age<55 then '46-55'
    else '55+' end as `age_range`
from user_recommendations) ur
group by ur.`age_range`;




/*select * from user_recommendations;*/





 

    






    
