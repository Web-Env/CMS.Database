/****** Object:  Table [dbo].[Section]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[Section](
	[Id] [uniqueidentifier] NOT NULL,
	[Title] [varchar](250) NOT NULL,
	[Path] [nvarchar](150) NOT NULL,
	[Active] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[LastUpdatedOn] [datetime] NOT NULL,
	[LastUpdatedBy] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Section] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[Section] ADD  CONSTRAINT [DF_Section_Id]  DEFAULT (newsequentialid()) FOR [Id]
ALTER TABLE [dbo].[Section]  WITH CHECK ADD  CONSTRAINT [FK_Section_User] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([Id])
ALTER TABLE [dbo].[Section] CHECK CONSTRAINT [FK_Section_User]
ALTER TABLE [dbo].[Section]  WITH CHECK ADD  CONSTRAINT [FK_Section_User1] FOREIGN KEY([LastUpdatedBy])
REFERENCES [dbo].[User] ([Id])
ALTER TABLE [dbo].[Section] CHECK CONSTRAINT [FK_Section_User1]