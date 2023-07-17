package com.movie.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.movie.model.Movieslist;
import com.movie.model.Registration;
import com.movie.service.Movieservice;

@Controller
public class Maincontroller {
	
	
	@Autowired
	Movieservice mov;
	
	   boolean bool = false;
	
	@RequestMapping(value="/")
	public String startpage(Model model) {
		model.addAttribute("data",mov.getdata());
		return "Start";
	}
	
	@RequestMapping(value="/login")
	public String loginpage() {
		return "login";
	}
	
	@RequestMapping(value="/register")
	public String registerpage() {
		return "register";
	}
	
	@RequestMapping(value="/contactus")
	public String ContactUsPage() {
		return "contactus";
	}
	
	@GetMapping(value="/homepage")
	public String homepage(Model model) {
		model.addAttribute("data",mov.getdata());
		if(bool) {
			return "home";
		}else {
			return "Error";
		}
		
	}
	
	@GetMapping(value="/booking")
	public String bookmymovie() {
		return "redirect:/homepage";
	}
	
	@PostMapping(value="/adding")
	public String registration(Registration reg,ModelMap map) {
		map.put("msg", "Successfully registered try to login now");
		mov.add(reg);
		return "register";
	}
	
	 @PostMapping(value="/verify")
	 public String ver(ModelMap model, @RequestParam String username ,@RequestParam String password) {
		 List<Registration> data = mov.data();
		 for(Registration reg : data) {
			 if(reg.getUsername().equals(username)&& reg.getPassword().equals(password)) {
				 bool=true;
				 return "redirect:/homepage";
			 }
		 }
		 model.put("err", "Credential Missmatch");
		 return "login";
	 }
	 
	 @RequestMapping(value="/logout")
		public String logoutpage() {
		 bool=false;
			return "redirect:/";
		}
	 
	 @RequestMapping(value="/conf")
	  public String Confirmation() {
		 return "confirmation";
	 }
	 
	 @RequestMapping(value = "/book")
	   public String paymentdone() {
		 return "payment";
	 }
	 
	 @RequestMapping(value="/search")
	 public String searchpage() {
		 return "search";
	 }
	 
	 
//	 @GetMapping(value="/find")
//	 public String searchresult(@PathVariable("name") String name, Model model) {
//		 model.addAttribute("result", mov.findByNamesearch(name));
//		 return "search";
//	 }
	 
	 @GetMapping(value="/find")
	 public String getDetails(@RequestParam("name") String name, Model model) {
	     model.addAttribute("result", mov.findByNamesearch(name));
	     return "search";
	 }

	
	 
	 
	 
	 
}
