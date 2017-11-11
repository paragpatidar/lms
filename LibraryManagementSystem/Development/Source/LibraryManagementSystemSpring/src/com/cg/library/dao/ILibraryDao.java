package com.cg.library.dao;

import java.util.List;

import com.cg.library.entities.BookInventory;
import com.cg.library.entities.BookRegistration;
import com.cg.library.entities.BookTransaction;
import com.cg.library.entities.Users;

public interface ILibraryDao {

	public abstract BookInventory getBookById(String id);

	public abstract Users getUserDetails();

	public abstract BookTransaction returnBookTransaction(int inpRegId) throws Exception;
	
	public abstract void issueBook(BookTransaction bookTransaction) throws Exception;

	public abstract List<BookInventory> getAllBooks() throws Exception;

	public abstract Users validateUser(String userName, String password)
			throws Exception;

	public abstract BookRegistration requestBook(BookRegistration bookRequest)
			throws Exception;

	public abstract BookRegistration validRegId(int inpRegId)
			throws Exception;

	public abstract BookInventory updateBookQuan(String bookId, int updateBy)
			throws Exception;

	public abstract int getCountOfBooks(String bookId) throws Exception;

	public abstract List<BookRegistration> getAllRequest()
			throws Exception;

	public abstract Users addUser(Users user) throws Exception;

	public abstract List<BookRegistration> getRequestByStatus(String status)
			throws Exception;

	public abstract List<BookInventory> searchBookByAuthor(String author)
			throws Exception;

	public abstract List<BookInventory> searchBookByName(String bookName)
			throws Exception;

	public abstract void updateBookTransaction(BookTransaction tran) throws Exception;

	public abstract void updateBookRegistration(BookRegistration registration)
			throws Exception;

	public abstract BookInventory deleteBookById(String bookId) throws Exception;

	BookInventory insertBook(BookInventory book) throws Exception;

}