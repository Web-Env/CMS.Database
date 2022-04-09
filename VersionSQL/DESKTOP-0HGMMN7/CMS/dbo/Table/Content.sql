/****** Object:  Table [dbo].[Content]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[Content](
	[Id] [uniqueidentifier] NOT NULL,
	[Title] [varchar](250) NOT NULL,
	[SectionId] [uniqueidentifier] NULL,
	[Path] [nvarchar](500) NOT NULL,
	[Url] [nvarchar](250) NOT NULL,
	[Active] [bit] NOT NULL,
	[Views] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[LastUpdatedOn] [datetime] NOT NULL,
	[LastUpdatedBy] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Entry] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[Content] ADD  CONSTRAINT [DF_Entry_Id]  DEFAULT (newsequentialid()) FOR [Id]
ALTER TABLE [dbo].[Content]  WITH CHECK ADD  CONSTRAINT [FK_Content_Section] FOREIGN KEY([SectionId])
REFERENCES [dbo].[Section] ([Id])
ALTER TABLE [dbo].[Content] CHECK CONSTRAINT [FK_Content_Section]
ALTER TABLE [dbo].[Content]  WITH CHECK ADD  CONSTRAINT [FK_Content_User] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([Id])
ALTER TABLE [dbo].[Content] CHECK CONSTRAINT [FK_Content_User]
ALTER TABLE [dbo].[Content]  WITH CHECK ADD  CONSTRAINT [FK_Content_User1] FOREIGN KEY([LastUpdatedBy])
REFERENCES [dbo].[User] ([Id])
ALTER TABLE [dbo].[Content] CHECK CONSTRAINT [FK_Content_User1]