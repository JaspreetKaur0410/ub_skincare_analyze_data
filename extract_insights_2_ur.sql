use  ub_skincare;

/* select the most occurred skin type for different age groups */
select ur.age_range
from
	(select age, skin_type,
		case when age>=12 and age<=18 then '12-18'
		when age>=19 and age<=25 then '19-25'
		when age>=26 and age<=34 then '26-34'
		when age>=35 and age<=345 then '35-45'
		when age>=46 and age<55 then '46-55'
		else '55+' end as `age_range`
	from user_recommendations) ur
group by ur.`age_range`
order by ur.`age_range`;

/* select number of people in age_range with particular skin_type */
select age_range,
	MAX(CASE WHEN skin_type = 'Dry' THEN people_count_by_skin_type ELSE NULL END) AS 'Dry',
	MAX(CASE WHEN skin_type = 'Oily' THEN people_count_by_skin_type ELSE NULL END) AS 'Oily',
	MAX(CASE WHEN skin_type = 'Sensitive' THEN people_count_by_skin_type ELSE NULL END) AS 'Sensitive',
	MAX(CASE WHEN skin_type = 'Combination' THEN people_count_by_skin_type ELSE NULL END) AS 'Combination'
from(
	select ur.age_range,ur.skin_type,count(skin_type) as 'people_count_by_skin_type'
	from
		(select age, skin_type,
		case when age>=12 and age<=18 then '12-18'
		when age>=19 and age<=25 then '19-25'
		when age>=26 and age<=34 then '26-34'
		when age>=35 and age<=45 then '35-45'
		when age>=46 and age<55 then '46-55'
		else '55+' end as 'age_range'
		from user_recommendations) ur
		group by ur.age_range,skin_type
	) temp
group by temp.age_range
order by temp.age_range;
    
/* select number of people in age_range with particular favourite_cleanser */
with temp_table as
(
	select ur.age_range, ur.favorite_cleanser, count(favorite_cleanser) as 'number_of_cleansers' 
				from
					(select age,favorite_cleanser,
						case when age>=12 and age<=18 then '12-18'
						when age>=19 and age<=25 then '19-25'
						when age>=26 and age<=34 then '26-34'
						when age>=35 and age<=45 then '35-45'
						when age>=46 and age<55 then '46-55'
						else '55+' end as 'age_range'
					from user_recommendations
					) ur
	group by ur.age_range,ur.favorite_cleanser
)
select * from temp_table where (temp_table.age_range,temp_table.number_of_cleansers) 
IN (select age_range, max(number_of_cleansers) 
from temp_table
group by age_range
);

/* select number of people in age_range with particular favorite_moisturiser */
with temp_table as
(
	select ur.age_range, ur.favorite_moisturiser, count(favorite_moisturiser) as 'number_of_moisturiser' 
				from
					(select age,favorite_moisturiser,
						case when age>=12 and age<=18 then '12-18'
						when age>=19 and age<=25 then '19-25'
						when age>=26 and age<=34 then '26-34'
						when age>=35 and age<=45 then '35-45'
						when age>=46 and age<55 then '46-55'
						else '55+' end as 'age_range'
					from user_recommendations
					) ur
	group by ur.age_range,ur.favorite_moisturiser
)
select * from temp_table where (temp_table.age_range,temp_table.number_of_moisturiser) 
IN (select age_range, max(number_of_moisturiser) 
from temp_table
group by age_range
);

/* select number of people in age_range with particular favorite_sunscreen */
with temp_table as
(
	select ur.age_range, ur.favorite_sunscreen, count(favorite_sunscreen) as 'number_of_sunscreen' 
				from
					(select age,favorite_sunscreen,
						case when age>=12 and age<=18 then '12-18'
						when age>=19 and age<=25 then '19-25'
						when age>=26 and age<=34 then '26-34'
						when age>=35 and age<=45 then '35-45'
						when age>=46 and age<55 then '46-55'
						else '55+' end as 'age_range'
					from user_recommendations
					) ur
	group by ur.age_range,ur.favorite_sunscreen
)
select * from temp_table where (age_range,number_of_sunscreen) 
IN (select age_range, max(number_of_sunscreen) 
from temp_table
group by age_range
);