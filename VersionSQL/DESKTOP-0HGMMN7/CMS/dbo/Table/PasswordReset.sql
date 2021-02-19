/****** Object:  Table [dbo].[PasswordReset]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[PasswordReset](
	[Id] [uniqueidentifier] NOT NULL,
	[ResetIdentifier] [varchar](32) NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[Expiry] [datetime] NOT NULL,
	[RequesterAddress] [varchar](15) NOT NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_PasswordReset] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[PasswordReset] ADD  CONSTRAINT [DF_PasswordReset_Id]  DEFAULT (newsequentialid()) FOR [Id]
ALTER TABLE [dbo].[PasswordReset] ADD  CONSTRAINT [DF_PasswordReset_Active]  DEFAULT ((1)) FOR [Active]