create database quanlybanhang;
use quanlybanhang;
create table Customer(
    cID int primary key auto_increment,
    name varchar(25),
    cAge tinyint
);
create table `Order`(
    oID int primary key ,
    cID int ,
    oDate datetime,
    oTotalPrice int,
    foreign key (cID) references customer(cID)
);
create table Product
(
    pID   int primary key,
    pName varchar(25),
    pPrice int
);
create table OrderDetail(
    oID int,
    pID int,
    odQTY int,
    foreign key (oID) references `Order`(oID),
    foreign key (pID) references Product(pID)
);

select oID,oDate,oTotalPrice from `Order`;
select name , pName , odQTY
from Product join OrderDetail OD on Product.pID = OD.pID
             join `Order` O on O.oID = OD.oID
             join customer c on O.cID = c.cID;

select name,oID
from Customer
left join `Order` O on Customer.cID = O.cID
where oID is null
union
select name, oID
from customer
right join `Order` O2 on Customer.cID = O2.cID
where oID is null;


