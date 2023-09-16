package com.skilldistillery.archery.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.archery.data.ArcheryDAO;

@Controller
public class ArcheryController {
		
	@Autowired
	private ArcheryDAO archeryDao;
	
	@RequestMapping(path= {"/", "home.do"})
	public String goHome(Model model) {
		model.addAttribute("ArcheryPractice", archeryDao.findAll());
		return "home";
	}
	
	
}
