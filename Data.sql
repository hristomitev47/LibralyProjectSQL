insert into books (book_id, title, isbn, published_year, copies_total) 
values
(1, 'Dune', '9781234117511', 1965, 6),
(2, 'Pride and Prejudice', '9789967166929', 1813, 3),
(3, 'The Hobbit', '9787559979032', 1937, 5),
(4, 'Norwegian Wood', '9788793046207', 1987, 3),
(5, '1984', '9788512092348', 1949, 5),
(6, 'The Catcher in the Rye', '9787782724058', 1951, 3),
(7,'Harry Potter 1', '9787559274168', 1997, 6),
(8, 'Crime and Punishment', '9782369644460', 1866, 4),
(9, 'Animal Farm', '9786108809066', 1945, 4),
(10, 'The Great Gatsby', '9783688530199', 1925, 3),
(11, 'Fahrenheit 451', '9787379964836', 1953, 5),
(12, 'Good Omens', '9781343966437', 1990, 4),
(13, 'Brave New World', '9783848735464', 1932, 4),
(14, 'The Old Man and the Sea', '9782431945860', 1952, 2),
(15, 'The Lord of the Rings', '9789512969494', 1954, 7);

insert into authors (author_id, full_name, country, birth_year, death_year) 
values
(1, 'Haruki Murakami', 'Japan', 1949, null),
(2, 'Jane Austen', 'UK', 1775, 1817),
(3, 'Frank Herbert', 'USA', 1920, 1986),
(4, 'George Orwell', 'UK', 1903, 1950),
(5, 'Neil Gaiman', 'UK', 1960, null),
(6, 'Fyodor Dostoevsky', 'Russia', 1821, 1881),
(7, 'J.K. Rowling', 'UK', 1965, null),
(8, 'Ray Bradbury', 'USA', 1920, 2012),
(9, 'F. Scott Fitzgerald', 'USA', 1896, 1940),
(10, 'J.D. Salinger', 'USA', 1919, 2010),
(11, 'Aldous Huxley', 'UK', 1894, 1963),
(12, 'Ernest Hemingway', 'USA', 1899, 1961),
(13, 'Agatha Christie', 'UK', 1890, 1976),
(14, 'J.R.R. Tolkien', 'UK', 1892, 1973);

insert into book_author (book_id, author_id) 
values
(1, 3),   
(2, 2),   
(3, 14),  
(4, 1),   
(5, 4),   
(6, 10),  
(7, 7),   
(8, 6),   
(9, 4),   
(10, 9),  
(11, 8),  
(12, 5),  
(13, 11), 
(14, 12),
(15, 14);

insert into genres (genre_id, name, description) 
values
(1, 'Fantasy', 'Magic and imaginary worlds'),
(2, 'Classic', 'Timeless literary works'),
(3, 'Science Fiction', 'Futuristic and sci-fi themes'),
(4, 'Romance', 'Love and relationships'),
(5, 'Dystopian', 'Dark future societies'),
(6, 'Adventure', 'Action and journeys'),
(7, 'Mystery', 'Crime and investigations'),
(8, 'Satire', 'Humor and social criticism'),
(9, 'Philosophy', 'Deep philosophical ideas'),
(10, 'Novel', 'General novel category'),
(11, 'Drama', 'Emotional storytelling'),
(12, 'Historical', 'Historical fiction'),
(13, 'Thriller', 'Suspense and tension'),
(14, 'Horror', 'Fear and terror'),
(15, 'Mythology', 'Myths and legends');

insert into book_genre (book_id, genre_id) 
values
(1, 3),   
(2, 4),   
(3, 1),   
(4, 10),  
(5, 5),   
(6, 2),   
(7, 1),   
(8, 9),  
(9, 8),   
(10, 2),  
(11, 3),  
(12, 1),  
(13, 5),  
(14, 2),  
(15, 6);  

insert into members (member_id, first_name, last_name, membership_type, books_read, email, phone, join_date) 
values
(1, 'Ivan','Petrov','standard',1,'ivan.petrov@gmail.com','+359884636901','2025-09-10'),
(2, 'Maria','Ivanova','premium',3,'maria.ivanova@gmail.com','+359885183178','2025-09-11'),
(3, 'Georgi','Dimitrov','standard',2,'georgi.dimitrov@gmail.com','+359882081873','2025-07-01'),
(4, 'Elena','Stoyanova','premium',5,'elena.stoyanova@gmail.com','+359884702007','2025-06-05'),
(5, 'Nikolay','Georgiev','standard',1,'nikolay.georgiev@gmail.com','+359888377880','2025-10-10'),
(6, 'Petya','Koleva','premium',4,'petya.koleva@gmail.com','+359885483967','2025-08-12'),
(7, 'Dimitar','Marinov','standard',2,'dimitar.marinov@gmail.com','+359887935850','2025-10-20'),
(8, 'Radoslav','Angelov','premium',6,'radoslav.angelov@gmail.com','+359880981234','2025-03-07'),
(9, 'Teodora','Nikolova','standard',1,'teodora.nikolova@gmail.com','+359883458179','2025-11-05'),
(10, 'Stela','Hristova','premium',3,'stela.hristova@gmail.com','+359887394778','2025-09-10'),
(11, 'Martin','Petkov','standard',2,'martin.petkov@gmail.com','+359889121638','2025-11-15'),
(12, 'Svetlana','Popova','premium',5,'svetlana.popova@gmail.com','+359886194990','2025-04-20');

insert into staff (staff_id, first_name, last_name, role, email, phone, hire_date, salary) 
values
(1, 'Katerina','Georgieva','librarian','k.georgieva@gmail.com','+359885412156','2020-01-15',2500),
(2, 'Plamen','Stoyanov','librarian','p.stoyanov@gmail.com','+359888392004','2020-02-10',2500),
(3, 'Yana','Petrova','manager','y.petrova@gmail.com','+359889278904','2021-03-05',3500),
(4, 'Borislav','Ivanov','cleaner','b.ivanov@gmail.com','+359880580021','2021-05-01',1500),
(5, 'Silvia','Hristova','cleaner','s.hristova@gmail.com','+359883859950','2024-05-20',1500);

insert into loans (loan_id, member_id, book_id, staff_id, loan_date, due_date, return_date, loan_status) 
values
(1,1, 5, 1, '2025-12-15','2025-12-29','2025-12-25','returned'),
(2,1, 3, 3, '2026-01-05','2026-01-19',null,'active'),
(3,3, 1, 2, '2025-12-01','2025-12-15','2025-12-10','returned'),
(4,4, 7, 3, '2026-01-04','2026-01-18',null,'active'),
(5,8, 9, 2, '2026-01-10','2026-01-24',null,'active'),
(6,8, 2, 2, '2025-12-03','2025-12-17','2025-12-16','returned'),
(7,7, 12, 3, '2026-01-09','2026-01-23',null,'active'),
(8,11, 6, 1, '2025-12-03','2025-12-17','2025-12-12','returned'),
(9,9, 11, 1, '2026-01-03','2026-01-17',null,'active'),
(10,10, 13, 3, '2025-12-07','2025-12-21','2025-12-20','returned'),
(11,9, 8, 2, '2025-12-08','2025-12-22','2025-12-15','returned'),
(12,2, 15, 3, '2026-01-01','2026-01-14','2026-01-15','overdue returned'),
(13,1, 14, 1, '2026-01-02','2026-01-13','2026-01-14','overdue returned'),
(14,4, 10, 2, '2026-01-01', '2026-01-14', null, 'overdue'),
(15,7, 1, 1, '2025-12-25', '2026-01-09', null, 'overdue'),
(16,3, 15, 2, '2025-12-01', '2025-12-15', '2025-12-12', 'returned'),
(17,3, 13, 3, '2026-01-01', '2026-01-15', '2026-01-13', 'returned'),
(18,4, 13, 2, '2026-01-02', '2026-01-16', '2026-01-15', 'returned'),
(19,3, 5, 2, '2025-12-01', '2025-12-15', '2025-12-12', 'returned'),
(20,9, 13, 2, '2025-12-08','2025-12-22','2025-12-15','returned'),
(21,3, 9, 2, '2025-12-01', '2025-12-15', '2025-12-12', 'returned');