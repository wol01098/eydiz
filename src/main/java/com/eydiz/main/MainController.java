package com.eydiz.main;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("mainController")
public class MainController implements MainConstant{
	
	@Autowired
	private MainService service;
	
	@RequestMapping(value="/main", method=RequestMethod.GET)
	public String main(Model model) throws Exception {
		List<ProjectCategory> fundingCategories = null;
		List<Project> projects = null;
		try {
			fundingCategories = service.listProjectCategoryOfFunding();
			projects = service.listProject();
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute(ATTRIBUTE_FUNDING_CATEGORY, fundingCategories);
		model.addAttribute(ATTRIBUTE_PROJECT, projects);
		return ".mainLayout";
	}
}
