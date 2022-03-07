create database Twitter;

CREATE TABLE Twitter.user
#good practice of creating the schema with the new tables name.
(  username    varchar(15) not null,   
ufname    varchar(15) not null,  
lname    varchar(15) not null,  
uemail varchar(50) not null,  
uid     integer(4), 
unique (username), 
primary key (uid));
#creation of the primary key.

CREATE TABLE Twitter.merchant 
#Same as the table above.
(  mname        varchar(25) not null,  
mid      integer(4),  
memail       varchar(25) not null,
primary key (mid),  
unique (mname));

CREATE TABLE Twitter.product
(  pid   integer(4),  
mid    integer(4),
pname varchar(15) not null,
pprice decimal(4) not null,
pdescription varchar(25),
pcategory varchar(15), 
primary key (pid,mid),  
foreign key (mid) references Twitter.merchant(mid));

CREATE TABLE Twitter.order
	(  order_date   char(8),
    pprice decimal(4,2),
    order_quantity integer(2),
    ucid integer(4),
    pid integer(4),
    mid integer(4),
    uid integer(4),
    primary key (uid, mid, pid, order_date),  
    #primary key is a combination of a foreign key and local file.
    foreign key (uid) references Twitter.user(uid),
    foreign key (mid) references Twitter.merchant(mid),
    foreign key (pid) references Twitter.product(pid),
    foreign key (ucid) references Twitter.card(ucid));
    #Foreign key referencing to an outside table.

CREATE TABLE Twitter.ad
(  ad_campaign_name      varchar(25) not null,  
ad_budget    decimal(4,2) not null,  
ad_description  varchar(15),  
ad_target      varchar(15) not null,  
aid integer(4),
mid integer(4),
primary key (aid),  
foreign key (mid) references Twitter.merchant(mid));

CREATE TABLE Twitter.cart
( quantity       integer(2),  
mid integer(4),
pid integer(4),
price decimal(4,2),
uid integer(4),  
primary key (mid, pid, uid),  
foreign key (mid) references Twitter.merchant(mid),
foreign key (pid) references Twitter.product(pid),
foreign key (uid) references Twitter.user(uid));

CREATE TABLE Twitter.user_card
( uid integer(4),
ucid integer(4),
primary key (uid, ucid),
foreign key (uid) references Twitter.user(uid),
foreign key(ucid) references Twitter.card(ucid));

CREATE TABLE Twitter.card
(ucid integer(4),
cacvv char(3) not null,
castreet varchar(25) not null,
cazip char(5) not null,
castate char(2) not null,
cacity varchar(10) not null,
caexp date,
cacompany varchar(10) not null,
caname varchar(15) not null,
primary key (ucid));

CREATE TABLE Twitter.followers
(followers_count varchar(10),
uid integer(4),
username varchar(15),
primary key (uid),
foreign key(uid) references Twitter.user(uid));

CREATE TABLE Twitter.following
(following_count varchar(10),
uid integer(4),
username varchar(15),
primary key(uid),
foreign key(uid) references Twitter.user(uid));

CREATE TABLE Twitter.tweets
(tcount varchar(5),
tid integer(4),
uid integer(4),
tdate date,
content varchar(140) not null,
primary key(uid, tid),
foreign key(uid) references Twitter.user(uid));

