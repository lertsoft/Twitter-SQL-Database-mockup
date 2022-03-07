#######################################################
# Merchant focused databases
#
# Beggining of the merchant database
INSERT INTO merchant (mname, mid, memail) 
VALUES ('CocaCola', 0007, 'cocacola@test.com');

INSERT INTO merchant (mname, mid, memail) 
VALUES ('albirds', 0001, 'albirds@test.com');

INSERT INTO merchant (mname, mid, memail) 
VALUES ('Motorola', 0101, 'motorola@test.com');

INSERT INTO merchant (mname, mid, memail) 
VALUES ('Microsoft', 0002, 'microsoft@test.com');

INSERT INTO merchant (mname, mid, memail) 
VALUES ('CSCI', 0362, 'csci@test.com');
# End of merchant database

# Beggining of the ad database
INSERT INTO ad (ad_campaign_name, ad_budget, ad_description, ad_target, aid, mid) 
VALUES ('Soda', '100.00', 'Coca-cola vs pepsi', 'Young people', 0001, 0007);

INSERT INTO ad (ad_campaign_name, ad_budget, ad_description, ad_target, aid, mid) 
VALUES ('Shoes', '1000', 'This is not nike', 'Athletes', 0002, 0001);

INSERT INTO ad (ad_campaign_name, ad_budget, ad_description, ad_target, aid, mid) 
VALUES ('Laptop', '50', 'Best maclook', 'CS majors', 0101, 0101);

INSERT INTO ad (ad_campaign_name, ad_budget, ad_description, ad_target, aid, mid) 
VALUES ('Phone', '99.99', 'pixel bing', 'Google employees', 0003, 0002);

INSERT INTO ad (ad_campaign_name, ad_budget, ad_description, ad_target, aid, mid) 
VALUES ('Hairstylish', '362', 'get it done with hairess', 'people with hair', 0004, 0362);
#End of ad database

# Beggining of product database
INSERT INTO product (pid, mid, pname, pprice, pdescription, pcategory) 
VALUES (1010, 0101, 'Maclook pro', 69.420, 'Best looking laptop on the planet', 'CSCI362');

INSERT INTO product (pid, mid, pname, pprice, pdescription, pcategory) 
VALUES (0001, 0101, 'Maclook Air', 420.69, 'Best looking laptop on the planet', 'CSCI362');

INSERT INTO product (pid, mid, pname, pprice, pdescription, pcategory) 
VALUES (0011, 0101, 'lookMac', 9999, 'Best looking desktop on the planet', 'CSCI362');

INSERT INTO product (pid, mid, pname, pprice, pdescription, pcategory) 
VALUES (0201, 0101, 'airlook', 29.99, 'Best looking accesory finder', 'CSCI362');
# End of product database

# Beggining of cart database
INSERT INTO cart (quantity, mid, pid, price, uid) 
VALUES (1, 0101, 0001, 420.69, 0362);

INSERT INTO cart (quantity, mid, pid, price, uid) 
VALUES (10, 0201, 0001, 29.99, 0362);
# End of cart database

# Begginging of orders database
INSERT INTO Twitter.order (order_date, pprice, order_quantity, ucid, pid, mid, uid) 
VALUES (12/05/2021, 420.69, 1, 1000, 0101, 0001, 0362);

INSERT INTO Twitter.order (order_date, pprice, order_quantity, ucid, pid, mid, uid) 
VALUES (12/05/2021, 29.99, 10, 1000, 0201, 0001, 0362);
# End of orders database

##################################################################
# User focused databases
#
# Beggining of user database
INSERT INTO user (username, ufname, lname, uemail, uid) 
VALUES ('CSCI', 'CS', 'CI', 'test@CSCI.com', 3620);

INSERT INTO user (username, ufname, lname, uemail, uid) 
VALUES ('paula', 'paul', 'la', 'test@paula.com', 1000);

INSERT INTO user (username, ufname, lname, uemail, uid) 
VALUES ('remy', 'remy', 'la', 'test@remy.com', 2000);

INSERT INTO user (username, ufname, lname, uemail, uid) 
VALUES ('hugo', 'hugo', 'boss', 'test@hugo.com', 3000);

INSERT INTO user (username, ufname, lname, uemail, uid) 
VALUES ('lv', 'louis', 'vuitton', 'test@louis.com', 4000);
# End of user database

# Beggining of user_card database
INSERT INTO user_card (uid, ucid) 
VALUES (4000, 1000);

INSERT INTO user_card (uid, ucid) 
VALUES (3000, 2000);

INSERT INTO user_card (uid, ucid) 
VALUES (2000, 3000);
# End of user_card database

# Beggining of card database
INSERT INTO card (ucid, cacvv, castreet, cazip, castate, caexp, cacompany, caname) 
VALUES (1000, 362, '0000 some st', 42069, 'ca', 11/1/3000, 'visa', 'CSCI');

INSERT INTO card (ucid, cacvv, castreet, cazip, castate, caexp, cacompany, caname) 
VALUES (2000, 362, '0000 some st', 42069, 'ca', 11/1/3000, 'American Express', 'hugo');

INSERT INTO card (ucid, cacvv, castreet, cazip, castate, caexp, cacompany, caname) 
VALUES (3000, 362, '0000 some st', 42069, 'ca', 11/1/3000, 'mastercard', 'remy');
# End of card database

# Beggining of followers database
INSERT INTO followers (followers_count, uid, username) 
VALUES (100, 2000, 'hugo');

INSERT INTO followers (followers_count, uid, username) 
VALUES (100, 4000, 'lv');
# End of followers database

# Beggining of following database
INSERT INTO following (following_count, uid, username) 
VALUES (50, 2000, 'hugo');

INSERT INTO following (following_count, uid, username) 
VALUES (50, 4000, 'lv');
# End of following database

# Beggining of tweets database
INSERT INTO tweets (tcount, tid, uid, tdate, content) 
VALUES (100, 9000, 2000, 12/05/2021, 'Good project but long project');

INSERT INTO tweets (tcount, tid, uid, tdate, content) 
VALUES (120, 9999, 2000, 12/05/2021, 'Good project but long project');
# End of tweets database
