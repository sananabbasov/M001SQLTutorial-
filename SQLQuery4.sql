create table Movies (
	Id int identity primary key, 
	Name nvarchar(100),
	Duration int,
	Description nvarchar(500),
	IMDB float,
	ReleaseDate DateTime
)

Create table Countries(
	Id int identity primary key,
	Name nvarchar(100)
)

create table Actors(
	Id int identity primary key,
	Name nvarchar(100)
)

create table Categories(
	Id int identity primary key,
	Name nvarchar(100)
)


create table MovieCategory (
	Id int identity primary key,
	MovieId int foreign key references Movies(Id),
	CategoryId int foreign key references Categories(Id)
)


create table MovieActor (
	Id int identity primary key,
	MovieId int foreign key references Movies(Id),
	ActorId int foreign key references Actors(Id)
)


create table MovieCountry (
	Id int identity primary key,
	MovieId int foreign key references Movies(Id),
	CountryId int foreign key references Countries(Id)
)


insert into Movies 
(Name,Description,Duration,IMDB,ReleaseDate)
values
('Home Alone','An eight-year-old troublemaker must protect his house.',150,7.7,'1990/01/01'),
('Sonic the Hedgehog 2','When the manic Dr Robotnik returns',170,6.9,'2022/01/01'),
('Sonic the Hedgehog','After discovering a small, blue, fast hedgehog',99,6.5,'2020/01/01'),
('Harry Potter and the Goblet of Fire','Harry Potter finds himself competing',157,7.7,'2005/01/01')



insert into Categories
(Name)
values
('Family'),('Adventure'),('Fantasy'),('Action'),('Comedy'),('Animation')


select * from Movies
select * from Categories


insert into MovieCategory
(MovieId,CategoryId)
values 
(2,4),(2,6)

GO
create procedure GetMoviesWithCategories @CatId int, @ActorName nvarchar(100)
as
SELECT Movies.Name, Duration, Categories.Name
FROM MovieCategory
Join Movies
on MovieId= Movies.Id
Join Categories
on CategoryId = Categories.Id
where MovieId = @CatId

EXEC GetMoviesWithCategories @CatId = '1', @ActorName= ''