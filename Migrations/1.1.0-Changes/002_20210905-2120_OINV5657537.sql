-- <Migration ID="a5f05562-7a3d-450e-ae9e-0acd26da54a9" />
GO

PRINT N'Creating [dbo].[Employee1]'
GO
CREATE TABLE [dbo].[Employee1]
(
[PersonID] [int] NULL,
[LastName] [varchar] (255) NULL,
[FirstName] [varchar] (255) NULL,
[Address] [varchar] (255) NULL,
[City] [varchar] (255) NULL
)
GO
