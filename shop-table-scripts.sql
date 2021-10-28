CREATE TABLE product
(
	ProductId			INT NOT NULL AUTO_INCREMENT,
    ProductName	VARCHAR(100) NOT NULL,
    PriceInPence 	INT NOT NULL,
    SKU 				CHAR(8) NOT NULL,
	DepartmentId	INT NOT NULL,
    
    PRIMARY KEY (ProductId)
);

/*One for customers (contains at least Name, Email, Phone Number)*/

CREATE TABLE customer
(
	CustomerId			INT NOT NULL AUTO_INCREMENT,
    CustomerName	VARCHAR(100) NOT NULL,
    CustomerEmail	VARCHAR(100) NOT NULL,
    CustomerPhone	VARCHAR(20) NOT NULL,
    
    PRIMARY KEY 	(CustomerId)
);


/*Two for orders

A header table which links the customer to the order and contains the date the order was placed and current state (how is it best to store this?)

A detail table which links all the items which were ordered (what should this contain ideally?)*/

CREATE TABLE order_header
(
	CustomerId		INT NOT NULL,
    OrderId 			INT NOT NULL AUTO_INCREMENT,
    OrderPlaced 	DATE NOT NULL,
    OrderStatus 	INT NOT NULL,
    
    PRIMARY KEY 	(OrderId),
    FOREIGN KEY	(CustomerId) 
    REFERENCES 	customer (CustomerId)
);

CREATE TABLE order_detail
(
	ProductId 						INT NOT NULL,
    OrderedProductName 	VARCHAR(100) NOT NULL,
    OrderedProductSKU 		CHAR(8) NOT NULL,
    
    PRIMARY KEY 	(ProductId),
    FOREIGN KEY 	(ProductId)
    REFERENCES 	product (ProductId)
);


