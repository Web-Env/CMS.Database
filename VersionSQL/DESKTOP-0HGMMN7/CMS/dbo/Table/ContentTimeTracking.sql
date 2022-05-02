/****** Object:  Table [dbo].[ContentTimeTracking]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[ContentTimeTracking](
	[Id] [uniqueidentifier] NOT NULL,
	[ContentId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[TotalTime] [int] NOT NULL,
	[LastSeen] [datetime] NOT NULL,
 CONSTRAINT [PK_ContentTimeTracking] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[ContentTimeTracking] ADD  CONSTRAINT [DF_ContentTimeTracking_Id]  DEFAULT (newsequentialid()) FOR [Id]
ALTER TABLE [dbo].[ContentTimeTracking]  WITH CHECK ADD  CONSTRAINT [FK_ContentTimeTracking_Content] FOREIGN KEY([ContentId])
REFERENCES [dbo].[Content] ([Id])
ALTER TABLE [dbo].[ContentTimeTracking] CHECK CONSTRAINT [FK_ContentTimeTracking_Content]
ALTER TABLE [dbo].[ContentTimeTracking]  WITH CHECK ADD  CONSTRAINT [FK_ContentTimeTracking_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
ALTER TABLE [dbo].[ContentTimeTracking] CHECK CONSTRAINT [FK_ContentTimeTracking_User]