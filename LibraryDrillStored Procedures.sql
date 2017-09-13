/*PROCEDURE 1*/

CREATE PROCEDURE dbo.TheLostTribe 
AS
    SELECT Book.Title, Book_Copies.No_Of_Copies, Library_Branch.BranchName
	FROM Book 
	INNER JOIN Book_Copies
	ON Book.BookID = Book_Copies.BookID
	INNER JOIN Library_Branch
	On Book_Copies.BranchID = Library_Branch.BranchID
	WHERE Book.Title = 'The Lost Tribe' AND Library_Branch.BranchName = 'Sharpstown' 


/*PROCEDURE 2*/		
CREATE PROCEDURE dbo.TheLostTribeCopies
AS
	SELECT Book.Title, Library_Branch.BranchName, Book_Copies.No_Of_Copies
	FROM Book_Copies
	INNER JOIN Book 
	ON Book_Copies.BookId = Book.BookId
	INNER JOIN Library_Branch
	ON Book_Copies.BranchId = Library_Branch.BranchId
	WHERE Book_Copies.BookId = '3'


/*PROCEDURE 3*/
CREATE PROCEDURE dbo.NoLoanBorrowers
AS
    SELECT * FROM Borrower
	LEFT JOIN Book_Loans
	ON  Borrower.CardNo = Book_Loans.CardNo
	WHERE Book_Loans.BookId IS NULL


/*PROCEDURE 4*/
		 
CREATE PROCEDURE dbo.SharpstownDueToday
AS
	SELECT Library_Branch.BranchName, Book_Loans.DueDate, Book.Title, Borrower.Name, Borrower.[Address] 
	FROM Book 
	INNER JOIN Book_Loans
	ON Book.BookId = Book_Loans.BookId
	INNER JOIN Library_Branch
	ON Book_Loans.BranchId = Library_Branch.BranchId
	INNER JOIN Borrower
	ON Book_Loans.CardNo = Borrower.CardNo
	WHERE Library_Branch.BranchName = 'Sharpstown' AND Book_Loans.DueDate = '10/16/2017' 

/*PROCEDURE 5*/

CREATE PROCEDURE dbo.LoanedOutFromBranch
AS 
	SELECT Library_Branch.BranchName, Count(Library_Branch.BranchName) AS [Number of Current Loans]
	FROM Library_Branch
	INNER JOIN Book_Loans
	ON Library_Branch.BranchID = Book_Loans.BranchId 
	GROUP BY Library_Branch.BranchName

/*PROCEDURE 6*/
		
CREATE PROCEDURE dbo.BorrowersWithFivePlusBooksOut
AS
	SELECT Borrower.Name, Borrower.[Address], Count(Book_Loans.CardNo) AS [Number of Books Checked Out]
	FROM Borrower
	INNER JOIN Book_Loans
	ON Borrower.CardNo = Book_Loans.CardNo
	GROUP BY Borrower.Name, Borrower.[Address]
	HAVING Count(Book_Loans.CardNo) > 5
	
/*PROCEDURE 7*/

CREATE PROCEDURE dbo.CopiesOfStephenKingAtCenteral
AS
	SELECT Book.Title, Book_Copies.No_Of_Copies, Library_Branch.BranchName
	FROM Book
	INNER JOIN Book_Authors
	ON Book.Bookid = Book_Authors.Bookid
	INNER JOIN Book_Copies
	ON Book.BookId = Book_Copies.BookId
	INNER JOIN Library_Branch
	ON Book_Copies.BranchId = Library_Branch.BranchId
	WHERE Book_Authors.AuthorName = 'Stephen King' AND Library_Branch.BranchName = 'Centeral'
