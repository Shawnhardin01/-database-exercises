create table Users
(
    firstname varchar(50) not null,
    lastname  varchar(50) not null,
    username   varchar(50)  not null
        unique,
    email      varchar(50)  not null
        unique,
    password   varchar(50)  not null
        unique,
    id   int  not null AUTO_INCREMENT
);
create table Item
(
    `Poster `   varchar null
        unique,
    category    varchar null,
    description text null,
    ItemID     int     null
        primary key
        unique
);
create table Ads
(
    Poster  varchar(50) not null
        unique,
    category varchar(50) not null
        unique,
    ItemID int not null
         unique AUTO_INCREMENT,
        primary key (ItemID)

);

select `Poster `
from Item
inner join Ads A on Item.ItemID = A.ItemID






