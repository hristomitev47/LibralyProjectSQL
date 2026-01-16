create database library_db;
use library_db;

create table books
(
  book_id int primary key,
  title varchar(100),
  isbn varchar(20) unique,
  published_year smallint not null,
  copies_total int
);

create table authors
(
  author_id int primary key,
  full_name varchar(100) not null,
  country varchar(100),
  birth_year smallint,
  death_year smallint null
);

create table book_author
(
  book_id int not null,
  author_id int not null,
  primary key (book_id, author_id),
  constraint fk_book_author_books foreign key (book_id) references books(book_id),
  constraint fk_book_author_authors foreign key (author_id) references authors(author_id)
);

create table genres
(
  genre_id int primary key,
  name varchar(60) not null unique,
  description varchar(200)
);

create table book_genre
(
  book_id int not null,
  genre_id int not null,
  primary key (book_id, genre_id),
  constraint fk_book_genre_books foreign key (book_id) references books(book_id),
  constraint fk_book_genre_genres foreign key (genre_id) references genres(genre_id)
);

create table members 
(
  member_id int primary key,
  first_name varchar(120) not null,
  last_name varchar(120) not null,
  membership_type varchar(20) default "standard",
  books_read int default 1,
  email varchar(150) unique,
  phone varchar(30) unique,
  join_date date not null
);

create table staff
(
  staff_id int primary key,
  first_name varchar(30) not null,
  last_name varchar(30) not null,
  role varchar(40) not null,
  email varchar(150) unique,
  phone varchar(30) unique,
  hire_date date not null,
  salary int not null
);

create table loans
(
  loan_id int primary key,
  member_id int not null,
  book_id int not null,
  staff_id int not null,
  loan_date date not null,
  due_date date not null,
  return_date date,
  loan_status varchar(50),
  constraint fk_loans_members foreign key (member_id) references members(member_id),
  constraint fk_loans_books foreign key (book_id) references books(book_id),
  constraint fk_loans_staff foreign key (staff_id) references staff(staff_id)
);