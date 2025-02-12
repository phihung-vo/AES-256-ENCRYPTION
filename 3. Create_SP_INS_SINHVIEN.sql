﻿/*----------------------------------------------------------
MASV: N17DCAT031
HO TEN: VÕ PHI HÙNG
LAB: 03
NGAY: 18/09/2020
----------------------------------------------------------*/
USE QLSV
GO
CREATE PROC SP_INS_SINHVIEN (
	@MASV NVARCHAR(20) ,
	@HOTEN NVARCHAR(100) ,
	@NGAYSINH DATETIME ,
	@DIACHI NVARCHAR(200),
	@MALOP VARCHAR (20) , 
	@TENDN NVARCHAR(100), 
	@MATKHAU VARCHAR(32)  )
AS
BEGIN
	DECLARE @MK VARBINARY (256)				--có thể là 256 hoặc max đều được
	SET @MK = HASHBYTES('MD5', @MATKHAU )
	INSERT INTO SINHVIEN(MASV, HOTEN, NGAYSINH, DIACHI, MALOP, TENDN, MATKHAU)
	VALUES(@MASV, @HOTEN, @NGAYSINH, @DIACHI, @MALOP, @TENDN, @MK)
END