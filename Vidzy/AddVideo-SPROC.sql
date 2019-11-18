USE [Vidzy]
GO
/****** Object:  StoredProcedure [dbo].[spAddVideo]    Script Date: 11/18/2019 5:57:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[spAddVideo]
(
	@Name varchar(255),
	@ReleaseDate datetime,
	@Genre varchar(255),
	@Classification	tinyint
)
AS

	DECLARE @GenreId tinyint
	SET @GenreId = (SELECT Id FROM Genres WHERE Name = @Genre)

	INSERT INTO Videos (Name, ReleaseDate, GenreId, Classification)
	VALUES (@Name, @ReleaseDate, @GenreId, @Classification)