package com.yadiel.languages.repositories;


import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.yadiel.languages.models.Language;

public interface LanguageRepository extends CrudRepository<Language, Long>{
	
	List<Language> findAll();
	
}
