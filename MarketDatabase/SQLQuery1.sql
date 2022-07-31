INSERT INTO [dbo].[ALSAT_DETAY]  values (1,1,200,'kg',15)
INSERT INTO [dbo].[ALSAT_DETAY]  values (6,2,8,'kg',10)
INSERT INTO [dbo].[ALSAT_DETAY]  values (10,3,17,'kg',60)
INSERT INTO [dbo].[ALSAT_DETAY]  values (2,1,24,'kg',14)

SELECT * FROM [dbo].[ALSAT_DETAY]



 SELECT TOP 1 S.STOK_ADI, SUM(AD.MIKTAR) FROM ALIS_SATIS A 
 JOIN ALSAT_DETAY AD ON AD.ALSAT_NO = A.ALSAT_NO
 JOIN CARI C ON C.CARI_NO=A.CARI_NO
 JOIN STOK S ON S.STOK_NO = AD.STOK_NO
WHERE A.�SLEM_YONU = 1 

GROUP BY S.STOK_ADI
ORDER BY SUM(AD.MIKTAR) DESC 


SELECT TOP 1 C.CARI_ADI, SUM(AD.MIKTAR) FROM ALIS_SATIS A
JOIN ALSAT_DETAY AD ON AD.ALSAT_NO = A.ALSAT_NO
JOIN CARI C ON C.CARI_NO=A.CARI_NO
JOIN STOK S ON S.STOK_NO=AD.STOK_NO
WHERE A.�SLEM_YONU=-1
GROUP BY C.CARI_ADI

ORDER BY SUM(AD.MIKTAR) DESC

SELECT * FROM ALSAT_DETAY 

ALTER TABLE [dbo].[ALSAT_DETAY]
DROP COLUMN FIYAT

ALTER TABLE [dbo].[ALSAT_DETAY]
ADD FIYAT real

UPDATE [dbo].[ALSAT_DETAY]  SET FIYAT=12 WHERE DETAY_NO=1
UPDATE [dbo].[ALSAT_DETAY]  SET FIYAT=10 WHERE DETAY_NO=2
UPDATE [dbo].[ALSAT_DETAY]  SET FIYAT=120 WHERE DETAY_NO=3
UPDATE [dbo].[ALSAT_DETAY]  SET FIYAT=120 WHERE DETAY_NO=4