select * from Products

select Min(Name)
from Products

select Max(Name)
from Products

select Avg(Price)
from Products

select Sum(Price)
from Products

select Count(Price)
from Products

create table Author(
	Id int Identity(1,1) Primary key,
	Name nvarchar(100),
	Surname nvarchar(100),
	About nvarchar(300),
	BirthDay DateTime,
	DeathDate DateTime,
)


create table Books(
	Id int IDENTITY(1,1) PRIMARY KEY,
	Name nvarchar(100),
	Description nvarchar(500),
	Page int,
	Price float,
	AuthorId int FOREIGN KEY references Author(Id)
)



insert into Author
(Name, Surname, About, BirthDay, DeathDate)
values(N'İmadəddin', 'Nəsimi', N'Azərbaycan şairi, mütəfəkkir və filosof, Azərbaycan ədəbiyyatı tarixində divan janrının ən məşhur və görkəmli nümayəndələrindən biri.','1999/01/01','1999/01/01')


insert into Books 
(Name,Description,Page,Price,AuthorId)
values(N'Yeni bir eser','Qəşəng şeirdi.',500,200,12)



select * from Books


SELECT Books.Name, Books.Description, Author.Name, Author.Surname
from Books
Left JOIN Author
on Books.AuthorId = Author.Id 