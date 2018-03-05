package com.ugurcan.springdemo.service;

import java.util.List;

import com.ugurcan.springdemo.entity.Student;

public interface StudentService {
	
	public List<Student> getStudents();

	public void saveStudent(Student theStudent);
}
