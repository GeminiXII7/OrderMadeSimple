--restaurant
INSERT INTO restaurant VALUES (DEFAULT,'joojak');
INSERT INTO restaurant VALUES (DEFAULT,'szechuan restaurant');

--dishes
INSERT INTO dish (dish_ver_id) 
	SELECT 0;
INSERT INTO dish (dish_ver_id) 
	SELECT 0;
INSERT INTO dish (dish_ver_id) 
	SELECT 0;
INSERT INTO dish (dish_ver_id) 
	SELECT 0;
INSERT INTO dish (dish_ver_id) 
	SELECT 0;


-- INSERT INTO dish (dish_name, dish_ver_id, description, restaurant_name, price, menu_flag) 
-- 	SELECT 'pork','',restaurant_name,13.99,'lunch special' from restaurant where restaurant_name = 'szechuan restaurant';
-- INSERT INTO dish (dish_name, dish_ver_id, description, restaurant_name, price, menu_flag) 
-- 	SELECT 'chilly chicken','super spicy',restaurant_name,11.99,'all day' from restaurant where restaurant_name = 'szechuan restaurant';
-- INSERT INTO dish (dish_name, dish_ver_id, description, restaurant_name, price, menu_flag) 
-- 	SELECT 'rice','just steamed rice',restaurant_name,10.99,'all day' from restaurant where restaurant_name = 'joojak';
-- INSERT INTO dish (dish_name, dish_ver_id, description, restaurant_name, price, menu_flag) 
-- 	SELECT 'noodle','hand pulled',restaurant_name,5.99,'lunch special' from restaurant where restaurant_name = 'joojak';

--dish_ver
INSERT INTO dish_ver (version_number, dish_id, dish_name, description, restaurant_name, price, menu_flag) 
	SELECT 1, 1,'pork','description of pork','szechuan restaurant',13.99,'lunch special1';

INSERT INTO dish_ver (version_number, dish_id, dish_name, description, restaurant_name, price, menu_flag) 
	SELECT 1, 2,'fish','description of fish','szechuan restaurant',12.99,'lunch special2';

INSERT INTO dish_ver (version_number, dish_id, dish_name, description, restaurant_name, price, menu_flag) 
	SELECT 1, 3,'chicken','description of chicken','szechuan restaurant',11,'lunch special3';

INSERT INTO dish_ver (version_number, dish_id, dish_name, description, restaurant_name, price, menu_flag) 
	SELECT 1, 4,'beef','description beef','joojak',5,'lunch special4';

INSERT INTO dish_ver (version_number, dish_id, dish_name, description, restaurant_name, price, menu_flag) 
	SELECT 1, 5,'stuff','description stuff','joojak',10,'lunch special5';

UPDATE dish SET dish_ver_id = 1 WHERE dish_id = 1;
UPDATE dish SET dish_ver_id = 2 WHERE dish_id = 2;
UPDATE dish SET dish_ver_id = 3 WHERE dish_id = 3;
UPDATE dish SET dish_ver_id = 4 WHERE dish_id = 4;
UPDATE dish SET dish_ver_id = 5 WHERE dish_id = 5;

--orders
INSERT INTO order_order (time,restaurant_name,status,table_number) values(TIMESTAMP '2004-10-19 10:23:54+02','joojak','new','3');
INSERT INTO order_order (time,restaurant_name,status,table_number) values(TIMESTAMP '2018-11-12 10:23:54+02','joojak','done','1');

--order order_details
INSERT INTO order_details (order_id, dish_ver_id, status) values(1,1,'new');
INSERT INTO order_details (order_id, dish_ver_id, status) values(2,2,'done');
INSERT INTO order_details (order_id, dish_ver_id, status) values(1,4,'done');
INSERT INTO order_details (order_id, dish_ver_id, status) values(1,3,'in progress');

--user 
--default user password 'password' SHA-1 hashed：5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8
INSERT INTO user_user (username,password,restaurant_id) values('joojak', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8',1);
