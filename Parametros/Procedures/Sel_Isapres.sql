USE [Parametros]
GO
/****** Object:  StoredProcedure [dbo].[Sel_Isapres]    Script Date: 25-12-2025 22:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Sel_Isapres] 
    @Code int
As 
BEGIN
    IF	@Code = 0
		SELECT	Code, CompanyName, ShortName, CompanyRut, CompanyWebSite, CurrentStatus, CreatedDate, CreatedUser, ModifiedDate, ModifiedUser
		FROM	[dbo].[AFP]
	ELSE
		SELECT	Code, CompanyName, ShortName, CompanyRut, CompanyWebSite, CurrentStatus, CreatedDate, CreatedUser, ModifiedDate, ModifiedUser
		 FROM	[dbo].[AFP]
		WHERE	Code = @Code
END