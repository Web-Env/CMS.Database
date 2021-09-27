/****** Object:  Table [dbo].[UserVerification]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[UserVerification](
	[Id] [uniqueidentifier] NOT NULL,
	[Identifier] [char](64) NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[ExpiryDate] [datetime] NOT NULL,
	[Active] [bit] NOT NULL,
	[RequesterAddress] [varchar](15) NOT NULL,
	[UsedOn] [datetime] NULL,
	[UsedByAddress] [varchar](15) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastUpdatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_UserVerification] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[UserVerification] ADD  CONSTRAINT [DF_UserVerification_Id]  DEFAULT (newsequentialid()) FOR [Id]
ALTER TABLE [dbo].[UserVerification]  WITH CHECK ADD  CONSTRAINT [FK_UserVerification_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
ALTER TABLE [dbo].[UserVerification] CHECK CONSTRAINT [FK_UserVerification_User]