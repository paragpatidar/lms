package com.cg.library.util;

public interface QueryMapper {
	String validateUser = "SELECT u FROM Users u WHERE u.userName=:userName AND u.password=:password";
	String returnBook = "SELECT t FROM BookTransaction t WHERE t.registrationId=";
	String requestByStatus = "SELECT t FROM BookRegistration t WHERE t.status=:status";
	String bookByAuthor = "SELECT l FROM BookInventory l WHERE lower(l.author) LIKE :authorName";
	String bookByName = "SELECT l FROM BookInventory l WHERE lower(l.bookName) LIKE :bookName";// '%bookName%'
	String getAllBooks = "getAllBooks";
	String getAllRequests = "getAllRequests";
}
