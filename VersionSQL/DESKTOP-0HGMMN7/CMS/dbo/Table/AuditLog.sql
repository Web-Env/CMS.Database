/****** Object:  Table [dbo].[AuditLog]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[AuditLog](
	[Id] [uniqueidentifier] NOT NULL,
	[ActionCategory] [smallint] NOT NULL,
	[Action] [smallint] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[UserAddress] [varchar](15) NOT NULL,
	[OccuredOn] [datetime] NOT NULL,
 CONSTRAINT [PK_AuditLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[AuditLog] ADD  CONSTRAINT [DF_AuditLog_Id]  DEFAULT (newsequentialid()) FOR [Id]
ALTER TABLE [dbo].[AuditLog]  WITH CHECK ADD  CONSTRAINT [FK_AuditLog_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
ALTER TABLE [dbo].[AuditLog] CHECK CONSTRAINT [FK_AuditLog_User]