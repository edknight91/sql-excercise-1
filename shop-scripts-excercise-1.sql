INSERT INTO product VALUES (1, "Big bong", 1000, "BB123456", 1);

SELECT * FROM product;

/* A list of all products, ordered so the most expensive is first */

SELECT * FROM product ORDER BY PriceInPence ASC;

/* A list of all customers, ordered by Name */

SELECT * FROM customer ORDER BY  CustomerName ASC;

/* A list of all products, indicating the number of units which have been sold */

SELECT * FROM product 

/* As above, but also including the total value of sales */
