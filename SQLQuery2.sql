
use Do_An


CREATE TABLE [dbo].[Category] (
    [IDCate]   INT IDENTITY (1, 1) NOT NULL,
    [Name] NVARCHAR (500) NULL,
    PRIMARY KEY CLUSTERED ([IDCate] ASC)
);

CREATE TABLE [dbo].[Customer] (
    [IDCus]    INT  IDENTITY (1, 1) NOT NULL,
    [NameCus]  NVARCHAR (500) NULL,
    [PhoneCus] NVARCHAR (150)  NULL,
    [EmailCus] NVARCHAR (500) NULL,
    [Username] nvarchar(100) NULL,
    PRIMARY KEY CLUSTERED ([IDCus] ASC)
);




CREATE TABLE [dbo].[Product] (
    [ID_product]     INT		   IDENTITY (1, 1) NOT NULL,
    [NameProd]       NVARCHAR (max)  NULL,
    [brand] NVARCHAR (max)  NULL,
    [IDCate]        INT      NULL,
    [Price]         DECIMAL (18, 2) NULL,
    [Stock_quantity]      int  NULL,
    [image]  nvarchar(max) null ,
    [description] nvarchar(max),
    PRIMARY KEY CLUSTERED ([ID_product] ASC),
    FOREIGN KEY ([IDCate]) REFERENCES [dbo].[Category] ([IDCate])
);

CREATE TABLE [dbo].[Order] (
    [ID_order]               INT            IDENTITY (1, 1) NOT NULL,
    [DateOrder]        DATE           NULL,
    [IDCus]            INT            NULL,
    [status]     bit not null,  --1 là đã xác nhận, 0 là chưa xác nhận--
    [total_armount] float(53)  null,
    [paymentmethod] nvarchar (max),
    [shippingmethod] nvarchar(max),
    [shippingaddress] nvarchar(max),
    PRIMARY KEY CLUSTERED ([ID_order] ASC),
    FOREIGN KEY ([IDCus]) REFERENCES [dbo].[Customer] ([IDCus])
);


CREATE TABLE [dbo].[OrderDetail] (
    [ID_detail]        INT        IDENTITY (1, 1) NOT NULL,
    [IDProduct] INT        NULL,
    [IDOrder]   INT        NULL,
    [Quantity]  INT        NULL,
    [Price] FLOAT (53) NULL,
    [total_price] float(53) null,
    [bill_of_landing] nvarchar(max) null,
    PRIMARY KEY CLUSTERED ([ID_detail] ASC),
    FOREIGN KEY ([IDProduct]) REFERENCES [dbo].[Product] ([ID_product]),
    FOREIGN KEY ([IDOrder]) REFERENCES [dbo].[Order] ([ID_order])
);




 create table [dbo].[serviec](
   [id_service] int identity (1,1) not null,
   [name_service] nvarchar(max) null,
   [price] float(50) null,
   [function] nvarchar(max) null,
   primary key clustered ([id_service]ASC),
 );


 create table [dbo].[User](
    [username] nvarchar(100),
    [password] nvarchar(max),
    [permisson] bit not null, -- 0 là admin, 1 là người dùng--
    primary key clustered ([username] ASC),
    );

     alter table [dbo].[Customer] add constraint fk   foreign key  ([Username]) references [dbo].[User] ([username]);
