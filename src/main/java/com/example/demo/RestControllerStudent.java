package com.example.demo;

import java.util.List;
import java.util.NoSuchElementException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class RestControllerStudent {
	@Autowired
	private StudentService service;
	
	@GetMapping("/Students")
	public String getAllStudent(Model model) {
		List<Student> theList=service.getList();
		model.addAttribute("studentList", theList);
		model.addAttribute("mode", "view-student");
		return "index";
	}
	
	@GetMapping("/form")
	public String getForm(Model model) {
		Student theStudent=new Student();
		model.addAttribute(theStudent);
		return "form-page";
	}
	
	@PostMapping("/process")
	public String save(@ModelAttribute("student") Student student) {
		service.save(student);
		return "redirect:/Students";
	}
	
	
	
	@GetMapping("/edit")
	public ModelAndView getEditForm(Integer id) {
		ModelAndView mv = new ModelAndView("edit-page");
		Student student=service.getOne(id);
		mv.addObject(student);
		return mv;
		}
	
	
	@GetMapping("/delete")
	public String delete(Integer id) {
		service.delete(id);
		return "redirect:/Students";
	}
	
	
	
	
	
	
	
	
	
	
	
	/*
	 * @GetMapping("/process") public ResponseEntity<Student> getone( Integer id) {
	 * try { Student student=service.getOne(id); return new
	 * ResponseEntity<Student>(student, HttpStatus.OK); } catch
	 * (NoSuchElementException e) { return new
	 * ResponseEntity<Student>(HttpStatus.NOT_FOUND); } }
	 * 
	 * @PostMapping("add") public void save(Student student) {
	 * service.save(student); }
	 */
}



