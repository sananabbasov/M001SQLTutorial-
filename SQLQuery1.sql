create table Products (
	Id int IDENTITY(1,1) PRIMARY KEY,
	Name nvarchar(100),
	Price decimal(2),
	Description nvarchar(500),
	Hit int,
	PhotoUrl varchar(500)
)




INSERT INTO Products 
(Name,Price,Description,Hit,PhotoUrl)
VALUES ('Iphone 13', 60, 'Cox baha telefondu', 0, 'img.jpg')

SELECT * FROM Products
WHERE Products.Price >= 20


SELECT * FROM Products
WHERE Products.Price >= 30 AND Products.Price <= 60

UPDATE Products
SET Name = 'Iphone 14'
Where Products.Id = 4

DELETE Products
where Products.Id = 4

 
SELECT * FROM Products
ORDER BY Products.Price ASC


SELECT * FROM Products



