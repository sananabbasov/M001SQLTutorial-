create table Category(
   Id int Identity(1,1) Primary Key,
   Name nvarchar(100),
)
INSERT INTO Category (Name) VALUES ('Noutbook')



create table Product(
  Id int Identity (1,1) Primary Key,
  Name nvarchar (100),
  Price float,
  Color nvarchar(100)
)
ALTER TABLE Product ADD Description nvarchar(100)

INSERT INTO Product 
(Name, Price,  Color, CategoryId, Description)
VALUES('Acer Spin 3 SP314-54N', 1899.99, 'Blue', 2,'Ideal kompdur')

SELECT * FROM Product 



SELECT Product.Name, Price, Color, Description, Category.Name 
FROM Product
JOIN Category on Product.CategoryId = Category.Id



SELECT Product.Name, Price, Color, Description, Category.Name 
FROM Product
JOIN Category on Product.CategoryId = Category.Id
Where Category.Id = 1 
AND
Product.Price >500 and Product.Price <3500


GO
Create procedure FilterProducts @price int
as select * from Product where Product.Price > @price


EXEC FilterProducts @price = '65456546'