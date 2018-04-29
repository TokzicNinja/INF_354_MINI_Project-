use [ProjectDB ]
go

create table GameGenre(
GameGenreID				 int		 not null,
GameGenre				 varchar(50) not null,
primary key(GameGenreID)
);

create table Games(
GameID					  int			not null,
GameName				  varchar(50)	not null, --Assassin's Creed, Metal Gear Solid, F1,Gears of War,God of War etc.--
GameReleaseDate			  date			not null, --When was it released--
GamePurchaseProfit		  money			not null, --The profit that has been made from the game's sales--
GamePlatform			  varchar(50)	not null, --How many platforms are available in the game console--
GamePlatformName		  varchar(50)	not null,  --Platforms such as Xboxm,Playstation,or Nintendo
GameGenreID				  int,			
primary key(GameID),
foreign key (GameGenreID) references GameGenre(GameGenreID)
);

create table ClientType(
ClientTypeID				int			 not null,
ClientType					varchar(20)	 not null  --ClientType as in regular 
primary key (ClientTypeID)
);

create table Subscription(
SubscriptionID				 int			not null,
Subscription				 varchar(50)	not null,
SubscriptionLength			 int			not null,
primary key (SubscriptionID)
);

create table GameClient(
ClientID					int			not null,
ClientName					varchar(50) not null,
ClientSurname				varchar(50) not null,
ClientPurchaseCount			int			not null, --Total count of the games purchased--
ClientAge					int			not null,
ClientAddress				varchar(200)	not null,
SubscriptionID				int			not null, --subscription such as xbox live and ps network--
ClientTypeID				int			not null,
primary key (ClientID),
foreign key (ClientTypeID)	 references ClientType(ClientTypeID),
foreign key (SubscriptionID) references Subscription(SubscriptionID)
);

drop table GameClient
