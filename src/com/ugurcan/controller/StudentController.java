package com.ugurcan.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ugurcan.springdemo.entity.Student;
import com.ugurcan.springdemo.service.StudentService;

@Controller
@RequestMapping("/student")
public class StudentController {

	@Autowired
	private StudentService studentService;
	
	
//	@RequestMapping(path="/list", method=RequestMethod.GET)
	@GetMapping("/list")
	public String listStudents(Model theModel) {
		
		List<Student> theStudent = studentService.getStudents();
		
		theModel.addAttribute("students", theStudent);
		
		return "list-student";
	}
	
	@GetMapping("/showStudentForm")
	public String showStudentForm(Model theModel) {
		
		Student theStudent = new Student();
		theModel.addAttribute("student", theStudent);
		
		return "student-form";
	}

	@PostMapping("/saveStudent")
	public String saveStudent(@ModelAttribute("student") Student theStudent) {
		
		studentService.saveStudent(theStudent);
		
		return "redirect:/student/list";
	}
}
