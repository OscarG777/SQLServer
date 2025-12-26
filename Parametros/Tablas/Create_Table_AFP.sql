USE [Parametros]
GO

/****** Object:  Table [dbo].[AFP]    Script Date: 25-12-2025 22:34:47 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[AFP](
	[Code]           [int]         IDENTITY(1,1) NOT NULL,
	[CompanyName]    [varchar](60) NOT NULL,
	[ShortName]      [varchar](20) NOT NULL,
	[CompanyRut]     [varchar](10) NOT NULL,
	[CompanyWebSite] [varchar](60) NULL,
	[CurrentStatus]  [bit]         NOT NULL,
	[CreatedDate]    [date]        NOT NULL,
	[CreatedUser]    [int]         NOT NULL,
	[ModifiedDate]   [date]        NULL,
	[ModifiedUser]   [int]         NULL,
 CONSTRAINT [PK_AFP] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[AFP] ADD  DEFAULT ((1)) FOR [CurrentStatus]
GO
