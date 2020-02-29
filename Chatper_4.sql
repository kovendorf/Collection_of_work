# Chapter 4 HW Corrected

#1. 
SELECT 
    category_name,
    product_name,
    list_price
FROM
    categories
        JOIN
    products ON categories.category_id
ORDER BY category_name , product_name ASC;

#2. 
SELECT 
    first_name,
    last_name, 
    line1,
    city,
    state,
    zip_code
FROM
    customers
        JOIN
    addresses ON customers.customer_id
WHERE
    customers.email_address = "allan.sherwood@yahoo.com";
	
#3. 
SELECT 
    first_name, last_name, line1, city, state, zip_code
FROM
    customers
        JOIN
    addresses ON customers.customer_id
        AND customers.shipping_address_id = addresses.address_id;
#4. 
SELECT 
    last_name,
    first_name,
    order_date,
    product_name,
    item_price,
    discount_amount,
    quantity
FROM
    customers c
        JOIN
    orders o ON c.customer_id
        JOIN
    order_items oi ON o.order_id
        JOIN
    products p ON oi.product_id
ORDER BY last_name, order_date, product_name;

#5.
SELECT 
    p1.product_name,
    p2.list_price
FROM
    products p1
        JOIN
    products p2 ON p1.product_id
WHERE
    p1.product_id <> p2.product_id
        AND p1.list_price = p2.list_price
ORDER BY p1.product_name;

#6. 
SELECT 
    category_name, product_id
FROM
    categories
        LEFT JOIN
    products ON categories.category_id = products.category_id
WHERE
    product_id IS NULL;
    
#7.
SELECT 
    'SHIPPED' AS ship_status, order_id, order_date
FROM
    orders
WHERE
    ship_date IS NOT NULL 
UNION SELECT 
    'NOT SHIPPED' AS ship_status, order_id, order_date
FROM
    orders
WHERE
    ship_date IS NULL
ORDER BY order_date;