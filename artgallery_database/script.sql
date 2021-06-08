create table address
(
    AddressID int auto_increment
        primary key,
    Building  text not null,
    City      text not null,
    Country   text not null,
    Street    text not null
);

create table artist
(
    ArtistID int auto_increment
        primary key,
    Name     text null
);

create table gallery
(
    GalleryID int auto_increment
        primary key,
    AddressID int  not null,
    Name      text not null,
    constraint gallery_address_AddressID_fk
        foreign key (AddressID) references address (AddressID)
);

create table exhibition
(
    ExhibitionID int auto_increment
        primary key,
    GalleryID    int          not null,
    Date         varchar(255) not null,
    ArtistID     int          not null,
    Name         text         not null,
    constraint exhibition_artist_ArtistID_fk
        foreign key (ArtistID) references artist (ArtistID),
    constraint exhibition_gallery_GalleryID_fk
        foreign key (GalleryID) references gallery (GalleryID)
);

create table style
(
    StyleID int auto_increment
        primary key,
    Name    text not null
);

create table artwork
(
    ArtID       int auto_increment
        primary key,
    Title       text     not null,
    ArtistID    int      not null,
    Year        int      not null,
    StyleID     int      not null,
    Price       int      not null,
    Description longtext null,
    imageSource text     null,
    constraint artwork_artist_ArtistID_fk
        foreign key (ArtistID) references artist (ArtistID),
    constraint artwork_style_StyleID_fk
        foreign key (StyleID) references style (StyleID)
);

create table other
(
    ArtID  int  not null
        primary key,
    MadeOf text null,
    constraint other_artwork_ArtID_fk
        foreign key (ArtID) references artwork (ArtID)
);

create table painting
(
    ArtID       int  not null
        primary key,
    TypeOfPaint text not null,
    constraint Painting_artwork_ArtID_fk
        foreign key (ArtID) references artwork (ArtID)
);

create table sculpture
(
    ArtID    int   not null
        primary key,
    Material text  not null,
    Width    float not null,
    Height   float not null,
    Depth    float null,
    constraint sculpture_artwork_ArtID_fk
        foreign key (ArtID) references artwork (ArtID)
);

create table user
(
    UserID    int auto_increment
        primary key,
    username  varchar(255) not null,
    firstname varchar(255) not null,
    lastname  varchar(255) not null,
    email     varchar(255) not null,
    phone     varchar(255) not null,
    password  varchar(255) not null
);

create table customer
(
    UserID    int auto_increment
        primary key,
    AddressID int not null,
    constraint customer_address_AddressID_fk
        foreign key (AddressID) references address (AddressID),
    constraint customer_user_UserID_fk
        foreign key (UserID) references user (UserID)
);

create table orders
(
    OrderID     int auto_increment
        primary key,
    ArtID       int  not null,
    CustomerID  int  not null,
    OrderStatus text not null,
    constraint orders_artwork_ArtID_fk
        foreign key (ArtID) references artwork (ArtID),
    constraint orders_customer_UserID_fk
        foreign key (CustomerID) references customer (UserID)
);


