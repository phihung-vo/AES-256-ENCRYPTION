/*----------------------------------------------------------
MASV: N17DCAT031
HO TEN: VÕ PHI HÙNG
LAB: 03
NGAY: 18/09/2020
----------------------------------------------------------*/

USE QLSV
GO

--Create the Database Master Key
CREATE MASTER KEY ENCRYPTION BY
PASSWORD = 'N17DCAT031'

--Create the Certificate
CREATE CERTIFICATE MY_ENCRYPT_CERT
WITH SUBJECT = 'PASSWORD'

--Creat Symetric key
CREATE SYMMETRIC KEY AES_256_ENCRYPT
WITH ALGORITHM = AES_256
ENCRYPTION BY CERTIFICATE MY_ENCRYPT_CERT