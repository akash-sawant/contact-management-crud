package org.techhub.Controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.techhub.Entity.ContactModel;
import org.techhub.Service.ContactService;
import org.techhub.Service.ContactServiceImpl;

import jakarta.servlet.http.HttpSession;

import org.springframework.ui.Model;

@Controller
public class ContactController {

  
	@Autowired
	private ContactService service;

	@GetMapping("/")
	public String homePage() {
		return "home";
		
	}
	
	@GetMapping("/form")
	public String showForm(Model model) {
		model.addAttribute("contact", new ContactModel());
		return "addContact";
	}
	
	@PostMapping("/add")
	public String addContact(@ModelAttribute ("contact")ContactModel contact) {
		service.addContact(contact);
		System.out.println(contact);
		return "redirect:/view";
	}
	
	@GetMapping("/view")
	public String viewList(Map<String,Object>map) {
		List<ContactModel>list=service.getAllContact();
		map.put("contactList", list);
		System.out.println(list);
		return "view";
	}
	
	@GetMapping("/delete")
	public String deleteById(HttpSession ses,@RequestParam("id") int id) {
		String deleteContact=service.deleteById(id);
		ses.setAttribute("resultmsg", deleteContact);
		return "redirect:/view";
		
	}
	
	@GetMapping("/update")
	public String ShowUpdateForm(@RequestParam ("id")int id,@ModelAttribute("contact")ContactModel contact) {
		ContactModel contactId=service.getContactById(id);
		BeanUtils.copyProperties(contactId,contact);
		return "update";
	}
	
	@PostMapping("/update")
	public String updateContact(HttpSession ses,@ModelAttribute("contact") ContactModel contact) {
		String msg=service.updateContact(contact);
		ses.setAttribute("resultMsg", msg);
		return "redirect:/view";
	}
	
	
}
