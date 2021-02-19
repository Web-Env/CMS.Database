/****** Object:  Table [dbo].[Entry]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[Entry](
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

ALTER TABLE [dbo].[Entry] ADD  CONSTRAINT [DF_Entry_Id]  DEFAULT (newsequentialid()) FOR [Id]
ALTER TABLE [dbo].[Entry]  WITH CHECK ADD  CONSTRAINT [FK_Entry_Section] FOREIGN KEY([SectionId])
REFERENCES [dbo].[Section] ([Id])
ALTER TABLE [dbo].[Entry] CHECK CONSTRAINT [FK_Entry_Section]
ALTER TABLE [dbo].[Entry]  WITH CHECK ADD  CONSTRAINT [FK_Entry_User] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([Id])
ALTER TABLE [dbo].[Entry] CHECK CONSTRAINT [FK_Entry_User]
ALTER TABLE [dbo].[Entry]  WITH CHECK ADD  CONSTRAINT [FK_Entry_User1] FOREIGN KEY([LastUpdatedBy])
REFERENCES [dbo].[User] ([Id])
ALTER TABLE [dbo].[Entry] CHECK CONSTRAINT [FK_Entry_User1]