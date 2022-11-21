create table if not exists Genre (
id serial primary key,
name varchar(60) not null
);

create table if not exists Performer (
id serial primary key,
name varchar(60) not null
);

create table if not exists GenrePerformer(
genre_id integer references Genre(id),
performer_id integer references Performer(id),
constraint gp primary key (genre_id, performer_id)
);

create table if not exists Album (
id serial primary key,
name varchar(60) not null,
year date
);

create table if not exists AlbumPerformer (
album_id integer references Album(id),
performer_id integer references Performer(id),
constraint ap primary key (album_id, performer_id)
);

create table if not exists Track (
id serial primary key,
name varchar(60) not null,
duration varchar(60) not null
);

create table if not exists Collection (
id serial primary key,
name varchar(60) not null,
year date
);

create table if not exists Composition (
track_id integer references Track(id),
collection_id integer references Collection(id),
constraint tc primary key (track_id, collection_id)
);