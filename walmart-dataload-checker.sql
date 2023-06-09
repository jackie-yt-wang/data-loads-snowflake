
---- INSERT ROWS TO LATER OBSERVE CHANGES -----
INSERT INTO walmart.SALES
VALUES
(302836,540260,3220,'2012-12-31',18,37.80,3.58,129.42,0.01,300.72,-150.37,5.47),
(312076,399912,3220,'2013-01-01',7,29.00,145.45,3773.59,0.02,3486.71,731.32,17.85),
(337584,135665,1104,'2013-01-02',18,11.00,41.32,447.09,0.09,365.40,89.03,8.66);


INSERT INTO walmart.INVENTORY
VALUES
('2012-12-31',1103,540260,26.46,75.60,1,0.00,'FALSE','2012-12-31'),
('2012-12-31',1103,904715,27.09,21.07,0,1.00,'FALSE','2012-12-31'),
('2013-01-01',1104,135665,11.00,14.30,1,0.00,'FALSE','2012-12-31'),
('2013-01-01',1104,200147,6.72,5.88,0,0.00,'TRUE','2012-12-31'),
('2013-01-02',1104,399912,7.83,46.98,1,1.00,'TRUE','2012-12-31');


UPDATE walmart.PRODUCT SET PROD_NAME='CHANGE-1' WHERE PROD_KEY=657768;
UPDATE walmart.PRODUCT SET PROD_NAME='CHANGE-2' WHERE PROD_KEY=293693;
INSERT INTO walmart.PRODUCT VALUES (999999,'ADD-1',2.22, 88.88, 'brand-999', 1, 'active', 4, 'category-4', 1, 'subcategory-1');

---- CHECK TO SEE IF INSERT IS SUCCESSFUL -----

SELECT * FROM walmart.PRODUCT  WHERE PROD_KEY IN(657768,293693,999999);
SELECT * FROM walmart.sales  WHERE TRANS_ID IN(302836,312076,337584);
SELECT * FROM walmart.INVENTORY WHERE PROD_KEY IN(540260) ;

---- CHECK FOR TLOG_ACTIVE_FLG AND UPDATE_TIME -----

SELECT min(cal_Dt), MAX(cal_dt) FROM walmart_anl.sales_inv_store_dy;

SELECT * FROM walmart_anl.product_dim WHERE PROD_KEY=657768;
SELECT * FROM walmart_anl.product_dim WHERE PROD_KEY=293693;
SELECT * FROM walmart_anl.product_dim WHERE PROD_KEY=999999;

