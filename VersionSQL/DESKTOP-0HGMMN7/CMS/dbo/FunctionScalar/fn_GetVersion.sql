/****** Object:  Function [dbo].[fn_GetVersion]    Committed by VersionSQL https://www.versionsql.com ******/

-- =============================================
-- Author:		<Adam Barry-O'Donovan>
-- Create date: <06/02/2021>
-- Description:	<Returns Datbase Versiom>
-- =============================================
CREATE FUNCTION fn_GetVersion
(
)
RETURNS VARCHAR
AS
BEGIN
	
	RETURN '0.0.1'

END