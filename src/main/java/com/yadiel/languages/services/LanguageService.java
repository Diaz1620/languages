package com.yadiel.languages.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.yadiel.languages.models.Language;
import com.yadiel.languages.repositories.LanguageRepository;

@Service
public class LanguageService {
	private final LanguageRepository langRepository;
	
	public LanguageService(LanguageRepository langRepository) {
		this.langRepository = langRepository;
	}
	
//	Gets all languages from repository
	public List<Language> allLangs(){
		return this.langRepository.findAll();
	}
	
//	creates a language
	public Language createLang(Language l) {
		return this.langRepository.save(l);
	}
	
//	Get one language
	public Language getLangById(Long id) {
		
		return this.langRepository.findById(id).orElse(null);
	}
	
//	Update language
	public Language updateLang(Language lang) {
		return this.langRepository.save(lang);
	}

//	Delete language
	public void deleteLangById(Long id) {
		this.langRepository.deleteById(id);
	}





//@Service
//public class BookService {
//    // adding the book repository as a dependency
//    private final BookRepository bookRepository;
//    
//    public BookService(BookRepository bookRepository) {
//        this.bookRepository = bookRepository;
//    }
//    // returns all the books
//    public List<Book> allBooks() {
//        return bookRepository.findAll();
//    }
//    // creates a book
//    public Book createBook(Book b) {
//        return bookRepository.save(b);
//    }
//    // retrieves a book
//    public Book findBook(Long id) {
//        Optional<Book> optionalBook = bookRepository.findById(id);
//        if(optionalBook.isPresent()) {
//            return optionalBook.get();
//        } else {
//            return null;
//        }
//    }
}