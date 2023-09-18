package com.skilldistillery.archery.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.archery.data.ArcheryDAO;
import com.skilldistillery.archery.entities.ArcheryPractice;

@Controller
public class ArcheryController {

	@Autowired
	private ArcheryDAO archeryDao;

	@RequestMapping(path = { "/", "home.do" })
	public String goHome(Model model) {
		model.addAttribute("ArcheryPractice", archeryDao.findAll());
		return "home";
	}

	@RequestMapping(path = "show.do")
	public String showPracticeSession(Integer sessionId, Model model) {
		model.addAttribute("ArcheryPractice", archeryDao.findById(sessionId));
		return "show";
	}

	@RequestMapping(path = "showall.do")
	public String showAllPracticeSession(Model model) {
		model.addAttribute("ArcheryPractice", archeryDao.findAll());
		return "showall";
	}
	@RequestMapping(path = "create.do", method = RequestMethod.POST )
	public String createNewSession(Model model, ArcheryPractice ap) {
		model.addAttribute("ArcheryPractice", archeryDao.create(ap));
		return "show";
	}

	@RequestMapping(path = "create.do", method = RequestMethod.GET )
	public String createNewSession( Model model) {
		return "createForm";
	}


	@RequestMapping(path= "update.do", method = RequestMethod.POST)
	public ModelAndView updateSession( ArcheryPractice ap) {
		ModelAndView mv = new ModelAndView();
		archeryDao.update(ap);
		mv.addObject("ArcheryPractice", archeryDao.findById(ap.getId()));
		mv.setViewName("show");
		return mv;
	}
	@RequestMapping(path = "updateForm.do", method = RequestMethod.GET, params = "sessionId")
	public ModelAndView updateSessionForm(@RequestParam int sessionId) {
		ModelAndView mv = new ModelAndView();
		ArcheryPractice sessionToBeUpdated = archeryDao.findById(sessionId);
		mv.addObject("ArcheryPractice", sessionToBeUpdated);
		mv.setViewName("updateForm");
		return mv;
	}
	

	
	@RequestMapping(path = "deleted.do", params = "sessionId")
	public String destroySession(Model model,@RequestParam Integer sessionId) {
		model.addAttribute("ArcheryPractice", archeryDao.deleById(sessionId));
		return "deleted";
	}
	

	
	
}
