#
# Twitter Delete and modify queries
# 
# Ad table
DELETE FROM ad
WHERE aid = 0002;

UPDATE ad SET ad_campaign_name = 'soda' WHERE mid = 0001;

# Card table
DELETE FROM card
WHERE ucid = 2000;

UPDATE card SET caname = 'CSCI' WHERE ucid = 3000;

# Cart table
DELETE FROM cart
WHERE pid = 0001;

UPDATE cart SET quantity = 200 WHERE mid = 0001;

# followers table
DELETE FROM followers
WHERE uid = 3000;

UPDATE followers SET username = '362' WHERE uid = 2000;

# following table
DELETE FROM following
WHERE uid = 3000;

UPDATE following SET username = '362' WHERE uid = 2000;

# merchant table
DELETE FROM merchant
WHERE mid = 0007;

UPDATE merchant SET mname = 'NotGoogle' WHERE mid = 0002;

# order table
DELETE FROM Twitter.order
WHERE pid = 0101;

UPDATE Twitter.order SET order_date = 12/20/2021 WHERE mid = 0201;

# product table
DELETE FROM product
WHERE pid = 1010;

UPDATE product SET pdescription = 'Best looking accesory' WHERE mid = 0201;

# tweets table
DELETE FROM Twitter.merchant
WHERE tid = 9999;

UPDATE tweets SET content = 'Best looking accesory ever' WHERE uid = 2000;

# user table
DELETE FROM user
WHERE uid = 3620;

UPDATE user SET uemail = 'CSCS362@ronnycoste.com' WHERE uid = 3000;

# user_card table
DELETE FROM user_card
WHERE uid = 3000;

UPDATE user_card SET ucid = '5000' WHERE uid = 3000;
