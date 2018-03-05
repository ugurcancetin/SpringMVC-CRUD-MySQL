package com.ugurcan.springdemo.dao;

import java.util.List;

import com.ugurcan.springdemo.entity.Student;

public interface StudentDAO {

	public List<Student> getStudents();

	public void saveStudent(Student theStudent);
}
