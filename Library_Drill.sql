
CREATE DATABASE library

USE library

CREATE TABLE Publisher 
( 
/*PRIMARY KEY*/ Name varchar (30) PRIMARY KEY,
[Address] varchar (30),
Phone varchar (30)  
)

CREATE TABLE Library_Branch 
( 
/*PRIMARY KEY*/ BranchId int PRIMARY KEY IDENTITY (1000,1),
BranchName varchar (30),
[Address] varchar (50)  
)

CREATE TABLE Borrower 
( 
/*PRIMARY KEY*/ CardNo int PRIMARY KEY IDENTITY (100,1),
Name varchar (30),
[Address] varchar (30), 
Phone varchar (30)
)


CREATE TABLE Book 
( 
/*PRIMARY KEY*/ BookID int PRIMARY KEY,
Title varchar (50),
/*FOREIGN KEY*/ PublisherName varchar (30) FOREIGN KEY REFERENCES Publisher(Name)
)

CREATE TABLE Book_Authors 
( 
/*FOREIGN KEY*/ BookID INT FOREIGN KEY REFERENCES Book(BookId),
AuthorName varchar (30) 
)


CREATE TABLE Book_Copies
( 
/*FOREIGN KEY*/ BookId INT FOREIGN KEY REFERENCES Book(BookId) ,
/*FOREIGN KEY*/ BranchId INT  FOREIGN KEY REFERENCES Library_Branch(BranchId),
No_Of_Copies varchar (30) 
)


CREATE TABLE Book_Loans 
( 
/*FOREIGN KEY*/ BookId INT  FOREIGN KEY REFERENCES Book(BookId),
/*FOREIGN KEY*/ BranchId INT FOREIGN KEY REFERENCES Library_Branch(BranchId),
/*FOREIGN KEY*/ CardNo INT  FOREIGN KEY REFERENCES Borrower(CardNo),
DateOut varchar (30), 
DueDate varchar (30)
)



INSERT INTO Publisher (/*PRIMARY KEY*/Name, [Address], Phone)
VALUES
('Random House','1743 Broadway NYC','(212) 782-9000'), 
('Scholastic','557 Broadway NYC','(800) 724-6527'), 
('Readers Digest','123 W Main NYC','(800) 304-2807'),
('Harper Collins','195 Broadway NYC','(212) 207-7000')
;


INSERT INTO Library_Branch (/*PRIMARY KEY BranchId*/ BranchName, [Address]) 
VALUES 
('Sharpstown','111 N Hill ST'),
('Centeral','222 E Beach BLVD '),
('Estacada','333 S River RD'),
('Portland','444 W Mountain LN '),
('Multnomah','555 N Tree WY')
;


INSERT INTO Borrower (/*PRIMARY KEY-CardNo*/ Name, [Address], Phone)
VALUES
('Jane Doe','123 Main St', '(123) 546-7890')

('Darth Vader','123 Death Star LN','(123) 456-7891'),
('Princess Leia','234 Planet Alderaan WY','(234) 456-6789'),
('Luke Skywalker','345 Planet Tatooine PL','(345) 678-9012'),
('Han Solo','456 Planet Corellia ST','(456) 789-0123'),
('ObiWan Kenobi','567 Planet Stewjon CT','(567) 890-1234'),
('Boba Fett','678 Planet Kamino DR','(678) 901-2345'),
('R2 D2','789 Machine Island LN','(789) 012-3456'),
('C 3PO','891 BeepBeep WY','(890) 123-4567'),
('Sir Chewbacca','112 Wookie PL','(901) 234-5678'),
('Master Yoda','223 Dagobah ST','(112) 345-6789')
;



INSERT INTO Book (BookId, Title, /*FOREIGN KEY*/PublisherName)
VALUES
(2, 'IT', 'Random House'), 
(3, 'The Lost Tribe', 'Random House'), 
(4, 'The Kite Runner', 'Random House'), 
(5, 'The Great Gatsby', 'Random House'), 
(6, 'Of Mice and Men', 'Random House'), 
(7, 'Catcher in the Rye', 'Random House'),
(8, 'To Kill A Mockingbird', 'Scholastic'), 
(9, 'Perks of Being a Wallflower', 'Scholastic'), 
(10, 'Where the Wild Things Are', 'Scholastic'), 
(11, 'A Clockwork Orange', 'Scholastic'), 
(12, 'Neverwhere', 'Scholastic'),
(13, 'The Silence of the Lambs', 'Readers Digest'), 
(14, 'The Devil Wears Prada', 'Readers Digest'), 
(15, 'Extreamly Loud & Incredibly Close', 'Readers Digest'), 
(16, 'Their Eyes Were Watching God', 'Readers Digest'), 
(17, 'A Wrinkle in Time', 'Readers Digest'),
(18, 'For Whom the Bell Tolls', 'Harper Collins'), 
(19, 'Fear and Loathing in Las Vegas', 'Harper Collins'), 
(20, 'No Country for Old Men', 'Harper Collins'),
(21, 'Brave New World', 'Harper Collins')
;



INSERT INTO Book_Authors (/*FOREIGN KEY -*/BookId, AuthorName)
VALUES
(2, 'Stephen King'), 
(3, 'Mark Lee'), 
(4, 'Khaled Hosseini'), 
(5, 'F. Scott Fitzgerald'), 
(6, 'John Stinebeck'), 
(7, 'J.D. Salinger'),
(8, 'Harper Lee'), 
(9, 'Stephen Chboskey'), 
(10, 'Maurice Sendak'), 
(11, 'Anthony Burgess'), 
(12, 'Neil Gaimen'),
(13, 'Thomas Harris'), 
(14, 'Lauren Weisberger'), 
(15, 'Jonathan Safran Foer'), 
(16, 'Zora Neale Hurston'), 
(17, 'Madeleine L-Engle'),
(18, 'Earnest Hemingway'), 
(19, 'Hunter S. Thompson'), 
(20, 'Cormac McCarthy'), 
(21, 'Aldous Huxley') 
;


INSERT INTO Book_Copies (/*FOREIGN KEY*/BookId, /*FOREIGN KEY*/BranchId, No_Of_Copies)
VALUES

/*BRANCH 1001*/
(2, 1001,'5'),
(3, 1001,'5'),
(4, 1001,'5'),
(5, 1001,'5'),
(6, 1001,'5'),
(7, 1001,'5'),
(8, 1001,'5'),
(9, 1001,'5'),
(10, 1001,'5'),
(11, 1001,'5'),
(12, 1001,'5'),
(13, 1001,'5'),
(14, 1001,'5'),
(15, 1001,'5'),
(16, 1001,'5'),
(17, 1001,'5'),
(18, 1001,'5'),
(19, 1001,'5'),
(20, 1001,'5'),
/*BRANCH 1002*/
(2, 1002,'5'),
(3, 1002,'5'),
(4, 1002,'5'),
(5, 1002,'5'),
(6, 1002,'5'),
(7, 1002,'5'),
(8, 1002,'5'),
(9, 1002,'5'),
(10, 1002,'5'),
(11, 1002,'5'),
(12, 1002,'5'),
(13, 1002,'5'),
(14, 1002,'5'),
(15, 1002,'5'),
(16, 1002,'5'),
(17, 1002,'5'),
(18, 1002,'5'),
(19, 1002,'5'),
(20, 1002,'5'),
/*BRANCH 1003*/
(2, 1003,'5'),
(3, 1003,'5'),
(4, 1003,'5'),
(5, 1003,'5'),
(6, 1003,'5'),
(7, 1003,'5'),
(8, 1003,'5'),
(9, 1003,'5'),
(10, 1003,'5'),
(11, 1003,'5'),
(12, 1003,'5'),
(13, 1003,'5'),
(14, 1003,'5'),
(15, 1003,'5'),
(16, 1003,'5'),
(17, 1003,'5'),
(18, 1003,'5'),
(19, 1003,'5'),
(20, 1003,'5'),
/*BRANCH 1004*/
(2, 1004,'5'),
(3, 1004,'5'),
(4, 1004,'5'),
(5, 1004,'5'),
(6, 1004,'5'),
(7, 1004,'5'),
(8, 1004,'5'),
(9, 1004,'5'),
(10, 1004,'5'),
(11, 1004,'5'),
(12, 1004,'5'),
(13, 1004,'5'),
(14, 1004,'5'),
(15, 1004,'5'),
(16, 1004,'5'),
(17, 1004,'5'),
(18, 1004,'5'),
(19, 1004,'5'),
(20, 1004,'5')
;



INSERT INTO Book_Loans (/*FOREIGN KEY*/BookId, /*FOREIGN KEY*/BranchId, /*FOREIGN KEY*/CardNo, DateOut, DueDate)
VALUES
(2, 1000, 101, '09/16/2017', '10/16/2017'),
(2, 1001, 101, '09/16/2017', '10/16/2017'),
(2, 1002, 102, '09/16/2017', '10/16/2017'),
(2, 1003, 103, '09/16/2017', '10/16/2017'),
(3, 1004, 101, '09/16/2017', '10/16/2017'),
(3, 1001, 102, '09/16/2017', '10/16/2017'),
(3, 1002, 103, '09/16/2017', '10/16/2017'),
(4, 1003, 101, '09/16/2017', '10/16/2017'),
(4, 1004, 102, '09/16/2017', '10/16/2017'),
(4, 1001, 103, '09/16/2017', '10/16/2017'),
(5, 1002, 101, '09/16/2017', '10/16/2017'),
(5, 1003, 102, '08/16/2017', '09/16/2017'),
(5, 1004, 103, '08/16/2017', '09/16/2017'),
(6, 1001, 101, '08/16/2017', '09/16/2017'),
(6, 1002, 102, '08/16/2017', '09/16/2017'),
(6, 1003, 103, '08/16/2017', '09/16/2017'),
(7, 1004, 104, '08/16/2017', '09/16/2017'),
(7, 1001, 105, '08/16/2017', '09/16/2017'),
(7, 1002, 106, '08/16/2017', '09/16/2017'),
(8, 1003, 107, '08/16/2017', '09/16/2017'),
(8, 1004, 108, '08/16/2017', '09/16/2017'),
(8, 1001, 109, '07/16/2017', '08/16/2017'),
(9, 1002, 100, '07/16/2017', '08/16/2017'),
(9, 1003, 101, '07/16/2017', '08/16/2017'),
(9, 1004, 102, '07/16/2017', '08/16/2017'),
(10, 1001, 103, '07/16/2017', '08/16/2017'),
(10, 1002, 104, '07/16/2017', '08/16/2017'),
(10, 1003, 105, '07/16/2017', '08/16/2017'),
(11, 1004, 106, '07/16/2017', '08/16/2017'),
(11, 1001, 107, '07/16/2017', '08/16/2017'),
(11, 1002, 108, '07/16/2017', '08/16/2017'),
(12, 1003, 109, '11/16/2017', '12/16/2017'),
(12, 1004, 100, '11/16/2017', '12/16/2017'),
(12, 1001, 101, '11/16/2017', '12/16/2017'),
(13, 1002, 102, '11/16/2017', '12/16/2017'),
(13, 1003, 103, '11/16/2017', '12/16/2017'),
(13, 1004, 104, '11/16/2017', '12/16/2017'),
(14, 1001, 105, '11/16/2017', '12/16/2017'),
(14, 1002, 106, '11/16/2017', '12/16/2017'),
(15, 1003, 107, '11/16/2017', '12/16/2017'),
(15, 1004, 108, '11/16/2017', '12/16/2017'),
(16, 1001, 109, '11/16/2017', '12/16/2017'),
(16, 1002, 100, '11/16/2017', '12/16/2017'),
(17, 1003, 101, '11/16/2017', '12/16/2017'),
(17, 1004, 102, '11/16/2017', '12/16/2017'),
(18, 1001, 103, '11/16/2017', '12/16/2017'),
(18, 1002, 104, '11/16/2017', '12/16/2017'),
(18, 1003, 105, '11/16/2017', '12/16/2017'),
(19, 1004, 106, '11/16/2017', '12/16/2017'),
(20, 1001, 107, '11/16/2017', '12/16/2017'),
(20, 1002, 108, '11/16/2017', '12/16/2017')
; 