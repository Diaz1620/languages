package com.yadiel.languages.controllers;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yadiel.languages.models.Language;
import com.yadiel.languages.services.LanguageService;

@Controller
public class LanguageController {
	
	private final LanguageService langService;
	
	public LanguageController(LanguageService langService) {
		this.langService = langService;
	}

	@RequestMapping("/languages")
	public String home(Model model, @ModelAttribute("language") Language language) {
		
		this.langService.allLangs();
		
		model.addAttribute("allLanguages", this.langService.allLangs());
		
		return "index.jsp";
	}
	
	@PostMapping("/languages")
	public String createLang(@Valid @ModelAttribute("language") Language language, BindingResult result, Model model) {
		if(result.hasErrors()) {
			model.addAttribute("allLanguages", this.langService.allLangs());
			return "index.jsp";
		}else {
			this.langService.createLang(language);
			return "redirect:/languages";
		}
	}
	
	@RequestMapping("/languages/edit/{id}")
	public String editLang(@PathVariable("id") Long id, Model model) {
		
		Language lang = this.langService.getLangById(id);
        model.addAttribute("language", lang);
		return "edit.jsp";
	}
	
	@PostMapping("/languages/{id}")
	public String updateLange(@Valid @ModelAttribute("language") Language language, BindingResult result) {
		if(result.hasErrors()) {
			return "edit.jsp";
		}else {
			this.langService.updateLang(language);
			return "redirect:/languages";
		}
	}
	
	@RequestMapping("/languages/{id}")
	public String showOneLang(@PathVariable("id") Long id, Model model) {
		Language lang = this.langService.getLangById(id);
		model.addAttribute("language", lang);
		return "show.jsp";
	}
	
	@RequestMapping(value="/languages/{id}/delete")
	public String delete(@PathVariable("id") Long id) {
		this.langService.deleteLangById(id);
		return "redirect:/languages";
	}
	
	
//	@RequestMapping(value="/books/{id}", method=RequestMethod.DELETE)
//    public String destroy(@PathVariable("id") Long id) {
//        bookService.deleteBook(id);
//        return "redirect:/books";
//    }

	
	
}
