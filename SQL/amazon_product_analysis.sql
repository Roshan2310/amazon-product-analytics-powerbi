use Amazon_Analytics;
go
-- =====================================================
-- AMAZON PRODUCT ANALYTICS
-- SQL ANALYSIS
-- SQL SERVER
-- =====================================================

-- =====================================================
-- 1. OVERALL KPIs
-- =====================================================

-- Query 1: Total Number of Products

select count(distinct product_id) as total_products
from AmazonProducts;

-- Query 2: Total Number of Main Categories
select count(distinct
left(category, charindex('|', category + '|') -1 )
) as total_categories
from AmazonProducts;

-- Query 3: Average Actual Price vs Average Discounted Price
select
avg(actual_price) as avg_actual_price,
avg(discounted_price) as avg_discounted_price
from AmazonProducts;

-- Query 4: Average Discount %
select
avg(discount_percentage) as avg_discount_percentage
from AmazonProducts;

-- Query 5: Average Discount Amount
select
avg(actual_price - discounted_price) as avg_discount_amount
from AmazonProducts;



-- =====================================================
-- 2. CATEGORY ANALYSIS
-- =====================================================

-- Query 6: Products by Main Category
select
left(category, CHARINDEX('|', category + '|') - 1) as main_category,
count(distinct product_id) as product_count
from AmazonProducts
group by left(category, CHARINDEX('|', category + '|') - 1)
order by product_count desc;


-- Query 7: Average Rating by Main Category
select
left(category, CHARINDEX('|', category + '|') - 1) as main_category,
avg(rating) as avg_rating
from AmazonProducts
group by left(category, CHARINDEX('|', category + '|') - 1)
order by avg_rating desc;


-- Query 8: Average Discount % by Main Category
select
left(category, CHARINDEX('|', category + '|') - 1) as main_category,
avg(discount_percentage) as avg_discount_percentage
from AmazonProducts
group by left(category, CHARINDEX('|', category + '|') - 1)
order by avg_discount_percentage desc;


-- Query 9: Average Rating Count by Main Category

select
left(category, CHARINDEX('|', category + '|') - 1) as main_category,
avg(rating_count) as avg_rating_count
from AmazonProducts
group by left(category, CHARINDEX('|', category + '|') - 1)
order by avg_rating_count desc;



-- =====================================================
-- 3. PRICE BAND ANALYSIS
-- =====================================================

-- Query 10: Average Rating by Price Band
select
case
	when actual_price < 500 then 'Under 500'
	when actual_price < 1000 then '500 - 999'
	when actual_price < 5000 then '1,000 - 4,999'
	else '5,000+' end as price_band,
	avg(rating) as avg_rating
from AmazonProducts
group by 
case
	when actual_price < 500 then 'Under 500'
	when actual_price < 1000 then '500 - 999'
	when actual_price < 5000 then '1,000 - 4,999'
	else '5,000+' end
order by avg_rating desc;


-- Query 11: Average Rating Count by Price Band
select
case
	when actual_price < 500 then 'Under 500'
	when actual_price < 1000 then '500 - 999'
	when actual_price < 5000 then '1,000 - 4,999'
	else '5,000+' end as price_band,
	avg(rating_count) as avg_rating_count
from AmazonProducts
group by 
case
	when actual_price < 500 then 'Under 500'
	when actual_price < 1000 then '500 - 999'
	when actual_price < 5000 then '1,000 - 4,999'
	else '5,000+' end
order by avg_rating_count desc;

-- Query 12: Average Discount % by Price Bandselect
case
	when actual_price < 500 then 'Under 500'
	when actual_price < 1000 then '500 - 999'
	when actual_price < 5000 then '1,000 - 4,999'
	else '5,000+' end as price_band,
	avg(discount_percentage) as avg_discount_percentage
from AmazonProducts
group by 
case
	when actual_price < 500 then 'Under 500'
	when actual_price < 1000 then '500 - 999'
	when actual_price < 5000 then '1,000 - 4,999'
	else '5,000+' end
order by avg_discount_percentage desc;




-- =====================================================
-- 4. PRODUCT ANALYSIS
-- =====================================================

-- Query 13: Top 10 Most Expensive Products
select top 10
product_name, actual_price
from AmazonProducts
order by actual_price desc;

-- Query 14: Top 10 Most Reviewed Products
select top 10
product_name, rating_count
from AmazonProducts
order by rating_count desc;

-- Query 15: Top 10 Products by Rating
select top 10
product_name, rating
from AmazonProducts
order by rating desc;

-- Query 16: Top 10 Products by Discount %
select top 10
product_name,
discount_percentage
from AmazonProducts
order by discount_percentage desc,rating_count desc;



-- =====================================================
-- 5. PRICING ANALYSIS
-- =====================================================

-- Query 17: Average Discounted Price by Main Category
select
left(category, CHARINDEX('|', category + '|') - 1) as main_category,
avg(discounted_price) as avg_discounted_price
from AmazonProducts
group by left(category, CHARINDEX('|', category + '|') - 1)
order by avg_discounted_price desc;


-- Query 18: Actual vs Discounted Price by Main Category
select
left(category, CHARINDEX('|', category + '|') -1) as main_category,
avg(actual_price) as avg_actual_price,
avg(discounted_price) as avg_discounted_price
from AmazonProducts
group by left(category, CHARINDEX('|', category + '|') -1)
order by avg_actual_price desc;



-- =====================================================
-- 6. DISCOUNT & RATING ANALYSIS
-- =====================================================

-- Query 19: Discount % vs Product Rating
select
discount_percentage,
rating
from AmazonProducts
where discount_percentage is not null
and rating is not null
order by discount_percentage, rating;
