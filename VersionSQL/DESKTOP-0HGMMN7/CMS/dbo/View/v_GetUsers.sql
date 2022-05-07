/****** Object:  View [dbo].[v_GetUsers]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE VIEW [dbo].[v_GetUsers]
AS
SELECT        U1.Id, U1.Email, U1.FirstName, U1.LastName, U1.IsAdmin, U1.IsVerified, U1.ExpiresOn, U1.Deleted, U1.CreatedOn, U1.CreatedBy, U1.LastUpdatedOn, U1.LastUpdatedBy, U2.FirstName + ' ' + U2.LastName AS CreatedByName
FROM            dbo.[User] AS U1 LEFT OUTER JOIN
                         dbo.[User] AS U2 ON U2.Id = U1.CreatedBy
WHERE		  U1.Deleted = 0