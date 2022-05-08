/****** Object:  Table [dbo].[Announcement]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[Announcement](
	[Id] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](250) NOT NULL,
	[Path] [nvarchar](500) NOT NULL,
	[Active] [bit] NOT NULL,
	[Views] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[LastUpdatedOn] [datetime] NOT NULL,
	[LastUpdatedBy] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Announcement] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[Announcement] ADD  CONSTRAINT [DF_Announcement_Id]  DEFAULT (newsequentialid()) FOR [Id]
ALTER TABLE [dbo].[Announcement] ADD  CONSTRAINT [DF_Announcement_Active]  DEFAULT ((1)) FOR [Active]
ALTER TABLE [dbo].[Announcement] ADD  CONSTRAINT [DF_Announcement_Views]  DEFAULT ((0)) FOR [Views]
ALTER TABLE [dbo].[Announcement]  WITH CHECK ADD  CONSTRAINT [FK_Announcement_User_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([Id])
ALTER TABLE [dbo].[Announcement] CHECK CONSTRAINT [FK_Announcement_User_CreatedBy]
ALTER TABLE [dbo].[Announcement]  WITH CHECK ADD  CONSTRAINT [FK_Announcement_User_LastUpdatedBy] FOREIGN KEY([LastUpdatedBy])
REFERENCES [dbo].[User] ([Id])
ALTER TABLE [dbo].[Announcement] CHECK CONSTRAINT [FK_Announcement_User_LastUpdatedBy]