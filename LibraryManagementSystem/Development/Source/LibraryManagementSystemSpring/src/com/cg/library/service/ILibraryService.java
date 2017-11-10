package com.cg.library.service;

import java.util.List;

import com.cg.library.entities.BookInventory;
import com.cg.library.entities.BookRegistration;
import com.cg.library.entities.Users;

public interface ILibraryService {

	public abstract BookInventory getBookById(String id)
			throws Exception;

	public abstract Users getUserDetails() throws Exception;

	public abstract BookInventory deleteBookById(String bookIdDelete)
			throws Exception;

	public abstract BookInventory insertBook(BookInventory book)
			throws Exception;

	public abstract List<BookInventory> getAllBooks() throws Exception;

	public abstract BookRegistration requestBook(BookRegistration bookRequest)
			throws Exception;

	public abstract int validateUser(String userName, String password)
			throws Exception;

	public abstract int returnBook(int inpRegId) throws Exception;

	public abstract void issueBook(int registrationId) throws Exception;

	public abstract List<BookRegistration> getAllRequest()
			throws Exception;

	public abstract Users addUser(Users user) throws Exception;

	public abstract List<BookRegistration> getRequestByStatus(String status)
			throws Exception;

	public abstract List<BookInventory> searchBookByAuthor(String author)
			throws Exception;

	public abstract List<BookInventory> searchBookByName(String bookName)
			throws Exception;

}