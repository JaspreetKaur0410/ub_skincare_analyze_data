use ub_skincare;

create table user_recommendations(
	id varchar(354) primary key,
    user_name varchar(100),
    instagram_link longtext,
    age varchar(100),
    gender varchar(100),
    skin_type varchar(100),
    favorite_cleanser varchar(254),
    reason_of_favorite_cleanser longtext,
    favorite_moisturiser varchar(254),
    reason_of_favorite_moisturiser longtext,
    favorite_sunscreen varchar(254),
    reason_of_favorite_sunscreen longtext,
    whatsapp_number varchar(100),
    source_user varchar(100) DEFAULT 'empty',
    start_date_utc varchar(100),
    end_date_utc varchar(100),
    network_id varchar(100),
    tags varchar(100)
);

LOAD DATA  INFILE 'C:/wamp/tmp/CSVS_2/user_recommendations.csv'
INTO TABLE user_recommendations
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS 
(id, user_name, instagram_link, age,gender,skin_type,favorite_cleanser,reason_of_favorite_cleanser
,favorite_moisturiser,reason_of_favorite_moisturiser,favorite_sunscreen,reason_of_favorite_sunscreen,whatsapp_number,source_user
,start_date_utc,end_date_utc,network_id,tags);

select * from user_recommendations where id="p7fsliunrt5pleago9p7fslk2luxtb5f";

/* ---------------------------------------------------------------------------------------------- */

SHOW CHARACTER SET;

LOAD DATA  INFILE 'C:/wamp/tmp/CSVS_2/derm_recommendations.csv'
INTO TABLE derm_recommendations
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS 
(id, user_name, phone_number, city,appointment_type,collaboration_flag
,top_three_cleansers_dry_skin_1,top_three_cleansers_dry_skin_2,top_three_cleansers_dry_skin_3
,top_three_cleansers_combination_skin_1,top_three_cleansers_combination_skin_2,top_three_cleansers_combination_skin_3
,top_three_cleansers_oily_skin_1,top_three_cleansers_oily_skin_2,top_three_cleansers_oily_skin_3
,top_three_moisturisers_dry_skin_1,top_three_moisturisers_dry_skin_2,top_three_moisturisers_dry_skin_3
,top_three_moisturisers_combination_skin_1,top_three_moisturisers_combination_skin_2,top_three_moisturisers_combination_skin_3
,top_three_moisturisers_oily_skin_1,top_three_moisturisers_oily_skin_2,top_three_moisturisers_oily_skin_3
,top_three_sunscreens_dry_skin_1,top_three_sunscreens_dry_skin_2,top_three_sunscreens_dry_skin_3
,top_three_sunscreens_combination_skin_1,top_three_sunscreens_combination_skin_2,top_three_sunscreens_combination_skin_3
,top_three_sunscreens_oily_skin_1,top_three_sunscreens_oily_skin_2,top_three_sunscreens_oily_skin_3
,top_three_treatment_products_acne_1,top_three_treatment_products_acne_2,top_three_treatment_products_acne_3
,top_three_treatment_products_hyperpigmentation_1,top_three_treatment_products_hyperpigmentation_2,top_three_treatment_products_hyperpigmentation_3
,top_three_treatment_products_dehydrated_skin_1,top_three_treatment_products_dehydrated_skin_2,top_three_treatment_products_dehydrated_skin_3
,start_date_utc,end_date_utc,network_id,tags
);

create table derm_recommendations(
	id varchar(100),
    user_name varchar(100),
    phone_number varchar(100),
    city varchar(100),
    appointment_type varchar(100),
    collaboration_flag boolean default 0,
    
    top_three_cleansers_dry_skin_1 varchar(254),
    top_three_cleansers_dry_skin_2 varchar(254),
    top_three_cleansers_dry_skin_3 varchar(254),
    
    top_three_cleansers_combination_skin_1 varchar(254),
    top_three_cleansers_combination_skin_2 varchar(254),
    top_three_cleansers_combination_skin_3 varchar(254),
    
    top_three_cleansers_oily_skin_1 varchar(254),
    top_three_cleansers_oily_skin_2 varchar(254),
    top_three_cleansers_oily_skin_3 varchar(254),
    
    top_three_moisturisers_dry_skin_1 varchar(254),
    top_three_moisturisers_dry_skin_2 varchar(254),
    top_three_moisturisers_dry_skin_3 varchar(254),
    
	top_three_moisturisers_combination_skin_1 varchar(254),
    top_three_moisturisers_combination_skin_2 varchar(254),
    top_three_moisturisers_combination_skin_3 varchar(254),
    
    top_three_moisturisers_oily_skin_1 varchar(254),
    top_three_moisturisers_oily_skin_2 varchar(254),
    top_three_moisturisers_oily_skin_3 varchar(254),
    
    
    top_three_sunscreens_dry_skin_1 varchar(254),
    top_three_sunscreens_dry_skin_2 varchar(254),
    top_three_sunscreens_dry_skin_3 varchar(254),
    
    top_three_sunscreens_combination_skin_1 varchar(254),
    top_three_sunscreens_combination_skin_2 varchar(254),
    top_three_sunscreens_combination_skin_3 varchar(254),
    
    top_three_sunscreens_oily_skin_1 varchar(254),
    top_three_sunscreens_oily_skin_2 varchar(254),
    top_three_sunscreens_oily_skin_3 varchar(254),
    
    top_three_treatment_products_acne_1 varchar(254),
    top_three_treatment_products_acne_2 varchar(254),
    top_three_treatment_products_acne_3 varchar(254),
    
    top_three_treatment_products_hyperpigmentation_1 varchar(254),
    top_three_treatment_products_hyperpigmentation_2 varchar(254),
    top_three_treatment_products_hyperpigmentation_3 varchar(254),
    
    top_three_treatment_products_dehydrated_skin_1 varchar(254),
    top_three_treatment_products_dehydrated_skin_2 varchar(254),
    top_three_treatment_products_dehydrated_skin_3 varchar(254),
    
    start_date_utc varchar(254),
    end_date_utc varchar(254),
    network_id varchar(254),
    tags varchar(100)
);
drop table derm_recommendations;
select * from derm_recommendations where id="wr64uxnx6uq076cpiwrnfaawlwtbr30y";

/* ---------------------------------------------------------------------------------------------- */

LOAD DATA  INFILE 'C:/wamp/tmp/CSVS_2/influencer_recommendations.csv'
INTO TABLE influencer_recommendations
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS 
(id, influencer_name, gender, age,location,skin_type
,top_three_cleansers_1,top_three_cleansers_2,top_three_cleansers_3
,top_three_moisturiser_1,top_three_moisturiser_2,top_three_moisturiser_3
,top_three_sunscreen_1,top_three_sunscreen_2,top_three_sunscreen_3
,skin_concern_1,skin_concern_2
,favourite_treatment_product_1,favourite_treatment_product_2,favourite_treatment_product_3
,favourite_treatment_product_for_1,favourite_treatment_product_for_2,favourite_treatment_product_for_3
,instagram_link,whatsapp_number
,start_date_utc,end_date_utc,network_id,tags
);

create table influencer_recommendations(
	id varchar(100),
    influencer_name varchar(100),
    gender varchar(50),
    age varchar(100),
    location varchar(254),
    skin_type varchar(100),
    
    top_three_cleansers_1 varchar(254),
    top_three_cleansers_2 varchar(254),
    top_three_cleansers_3 varchar(254),
    
    top_three_moisturiser_1 varchar(254),
    top_three_moisturiser_2 varchar(254),
    top_three_moisturiser_3 varchar(254),
    
    top_three_sunscreen_1 varchar(254),
    top_three_sunscreen_2 varchar(254),
    top_three_sunscreen_3 varchar(254),
    
    skin_concern_1 varchar(400),
    skin_concern_2 varchar(400),
    
    favourite_treatment_product_1 varchar(400),
    favourite_treatment_product_2 varchar(400),
    favourite_treatment_product_3 varchar(400),
    
	favourite_treatment_product_for_1 varchar(400),
    favourite_treatment_product_for_2 varchar(400),
    favourite_treatment_product_for_3 varchar(400),
    
    instagram_link varchar(254),
    whatsapp_number varchar(100),
    
    start_date_utc varchar(254),
    end_date_utc varchar(254),
    network_id varchar(254),
    tags varchar(100)
);

select * from influencer_recommendations;

/* ---------------------------------------------------------------------------------------------- */

LOAD DATA  INFILE 'C:/wamp/tmp/CSVS_2/ingredients_list.csv'
INTO TABLE ingredients_list
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS 
(ing_name, tags_1, tags_2, tags_3,tags_4,tags_5
);


create table ingredients_list(
	ing_name varchar(254),
    tags_1 varchar(100),
    tags_2 varchar(50),
    tags_3 varchar(100),
    tags_4 varchar(100),
    tags_5 varchar(100)
);

select * from ingredients_list;

/* ---------------------------------------------------------------------------------------------- */

/*show variables like "secure_file_priv";  
show variables like "local_infile";
SET GLOBAL local_infile = true;*/


/* ---------------------------------------------------------------------------------------------- */






