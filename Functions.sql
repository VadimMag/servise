`123`142413245ythr356nduy6
CREATE FUNCTION GetAllUsers ()
    RETURNS TABLE
    AS RETURN 
	(select name from OneUser)


create proc RegisterUser (@name varchar(max), @password varchar(max), @foto varbinary(max), @age int, @rating int,@ratingAnswers int,@ratingQwery int,@about nvarchar(max))
    as 
	begin 
	insert into OneUser(name, password, foto,age,rating,ratingAnswers,ratingQwery,about)
	values
	(@name,	@password, @foto, @age, @rating, @ratingAnswers, @ratingQwery, @about)
	end


CREATE FUNCTION GetUserPassword (@name nvarchar(max))
    RETURNS TABLE
    AS RETURN 
	(select password from OneUser where name = @name)


CREATE FUNCTION GetCategoryList ()
    RETURNS TABLE
    AS RETURN 
	(select distinct category from Qwery)


CREATE FUNCTION GetQwery (@Id int)
    RETURNS TABLE
    AS RETURN 
	(select * from Qwery where Id=@Id)
	
CREATE FUNCTION GetAnsversIdQwery (@QweryId int)
    RETURNS TABLE
    AS RETURN 
	(select * from Ansver where QweryId=@QweryId)
