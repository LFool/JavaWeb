package org.students.dao;

import java.util.List;

import org.students.entity.Student;

public interface IStudentDao {
	public boolean isExist(String studentID);
	
	//增加
	public boolean addStudent(Student student); 
	
	//根据学号删除信息
	public boolean deleteStudentBySno(String studentID);
	
	//根据学号修改信息
	public boolean updateStudentBySno(String studentID, Student student);
	
	//查询全部的学生(放到集合中)
	public List<Student> queryAllStudents();
	
	
	//根据姓名查学生
	//根据年龄查学生
	//查询此人是否存在
	//根据学号查询
	public Student queryStudentBySno(String studentID);
	
	//查询总体据数大小
	public int getTotalCount();
	
	//currentPage：当前页（页码）pageSize：页面大小（每一页显示的数据条数）
	public List<Student> queryStudentsByPage(int currentPage, int pageSize);
}
