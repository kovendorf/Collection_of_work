# Chapter 3 HW Corrected

# 1.
SELECT 
    product_code, product_name, list_price, discount_percent
FROM
    products
ORDER BY list_price DESC;

#2.
SELECT 
    CONCAT(last_name, ' ', first_name) AS full_name
FROM
    customers
WHERE
    last_name > 'L'
ORDER BY last_name ASC;

#3.
SELECT 
    product_name, list_price, date_added
FROM
    products
WHERE
    list_price BETWEEN 500 AND 2000
ORDER BY date_added DESC;

#4.
SELECT 
    product_name,
    list_price,
    discount_percent,
    ROUND(list_price*(discount_percent/100),2) AS discount_amount,
    ROUND(list_price-(list_price*(discount_percent/100)),2) AS discount_price
FROM
    products
ORDER BY discount_price DESC
LIMIT 5;
#5.
SELECT
	item_id,
    item_price,
    discount_amount,
    quantity,
    item_price*quantity AS price_total,
    discount_amount*quantity AS discount_total,
    (item_price-discount_amount)*quantity AS item_total
FROM
	order_items
WHERE
	(item_price-discount_amount)*quantity>500
ORDER BY item_total DESC;

#6.
SELECT 
    order_id, order_date, ship_date
FROM
    orders
WHERE
    ship_date IS NULL;

#7.
SELECT
	DATE_FORMAT(CURRENT_DATE, '%m/%d/%y') AS today_unformatted,
    DATE_FORMAT(CURRENT_DATE, '%e-%b-%Y') AS today_formatted;

#8. 
SELECT 
    100 AS 'price($)',
    7 AS 'tax_rate(%)',
    100 * 0.07 AS tax_amount,
    100 + (100 * 0.07) AS total;


	
    