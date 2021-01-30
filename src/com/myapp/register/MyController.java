package com.myapp.register;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MyController {
	
	@Autowired AccService service;
	
	@RequestMapping("/addpage")
	public String addPage() {
		
		return "AddPage";
	}
	
	@RequestMapping("/")
	public String loginPage() {
		
		return "Loginpage";
	}
	
	@RequestMapping("/Registration")
	public String registrationPage() {
		
		return "Registration";
	}
	
	@RequestMapping("/searchpage")
	public String searchPage() {
		
		return "SearchPage";
	}
	
	@RequestMapping("/logout")
	public String logout() {
	 
		return "Loginpage";
	}
	
	@RequestMapping("/register")
	public ModelAndView register(@ModelAttribute("Register") AccRegistration accregister,
								@RequestParam("Phone") String phone,
								@RequestParam("matchpass") String pass2) {

		AccRegistration account = service.getCred(phone);
		
		if(!accregister.getPassword().equals(pass2)) {
			
			ModelAndView mav1 = new ModelAndView("Registration");
			mav1.addObject("msg","Password mismatch");
			
			return mav1;
		}
		else if(!account.equals(null)) {
			ModelAndView mav1 = new ModelAndView("Registration");
			mav1.addObject("msg","Record Exist");
			
			return mav1;
		}
		else if(accregister.getPassword().equals(pass2)) {
			service.saveRegister(accregister);
			ModelAndView mav1 = new ModelAndView("Loginpage");
		
			return mav1;
			}
		ModelAndView mav1 = new ModelAndView("Registration");
		
		return mav1;
	}	
	
	@RequestMapping("/loginpass")
	public ModelAndView loginPass(@RequestParam("phone") String phone,@RequestParam("password") String password) {
	
		AccRegistration Account = service.getCred(phone);
		
		 if(!Account.getUsername().equals(phone)&& !Account.getPassword().equals(password) ) {
		ModelAndView mav = new ModelAndView("Loginpage");
		mav.addObject("msg","Username or password is wrong");
		
		return mav;
		}
		 else if(Account.getUsername().equals(null)) {
			 ModelAndView mav = new ModelAndView("Loginpage");
				mav.addObject("msg","Username Doesnt Exist");
				
				return mav;
		 }
		else if(Account.getPhone().equals(phone) && Account.getPassword().equals(password)) {
			ModelAndView mav = new ModelAndView("AddPage");
			mav.addObject("Account",Account);
			
			return mav;	
		}
		ModelAndView mav = new ModelAndView("Loginpage");
		
		return mav;
	}
	
	@RequestMapping("/addrecord")
	public String addRecord(@ModelAttribute("record") AccRegistration record) {
	
		service.saveRegister(record);
		
		return "AddPage";
	}
	
	@RequestMapping("/viewpage")
	public ModelAndView viewPage() {
		
	List<AccRegistration> viewrecords	= service.findall();
		ModelAndView mav = new ModelAndView("ViewPage");
		mav.addObject("listrecord", viewrecords);
		
		return mav;
	}
	
	@RequestMapping("/editrecord")
	public ModelAndView editRecord(@RequestParam("id") String phone) {
		
		AccRegistration account = service.getCred(phone);
		ModelAndView mav = new ModelAndView("EditPage");
		mav.addObject("account", account);
		
		return mav;
	}
	
	@RequestMapping("/updaterecord")
	public ModelAndView updateRecord(@ModelAttribute("record") AccRegistration record) {
	
		service.saveRegister(record);
		List<AccRegistration> viewrecords	= service.findall();
		ModelAndView mav = new ModelAndView("ViewPage");
		mav.addObject("listrecord", viewrecords);
		
		return mav;
	}
	
	
	@RequestMapping("/delete")
	public String deleteRecord(@RequestParam("id") String phone) {
		
		service.deleteRecord(phone);
		
		return "redirect:/viewpage";
	}
	
	@RequestMapping("/searchfordelete")
	public ModelAndView searchToDelete(@RequestParam("keyword") String phone) {
		
		AccRegistration account =  service.getCred(phone);
		
		
			ModelAndView mav = new ModelAndView("deleteSearchTrue");
			mav.addObject("view", account);
			return mav;	
			
	}
	
	
	@RequestMapping(value="/search",method = RequestMethod.GET)
	public ModelAndView search(@RequestParam("keyword") String keyword) {
		
		List<AccRegistration> result = service.search(keyword);
		if(result.isEmpty()) {
			ModelAndView mav1 = new ModelAndView("NoSearch");
			return mav1;
		}
		ModelAndView mav = new ModelAndView("SearchPage");
		mav.addObject("Account", result);
		System.out.println(result);

		return mav;	
			
	}
	
	@RequestMapping("/updatepage")
	public ModelAndView updatePage() {
		
		List<AccRegistration> viewrecords	= service.findall();
		ModelAndView mav = new ModelAndView("Updatepage");
		mav.addObject("listrecord", viewrecords);
	
		return mav;
	}
	
	@RequestMapping("/deletepage")
	public ModelAndView deletePage() {
		
		List<AccRegistration> viewrecords	= service.findall();
		ModelAndView mav = new ModelAndView("Deletepage");
		mav.addObject("listrecord", viewrecords);
		
		return mav;
	}
}
