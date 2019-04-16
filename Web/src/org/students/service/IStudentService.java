package org.students.service;

import java.util.List;

import org.students.entity.Student;

public interface IStudentService {
		//根据学号查询学生
		public Student queryStudentBySno(String studnetId);
		
		//查询全部学生
		public List<Student> queryAllStudents();
		
		//修改
		public boolean updateStudentBySno(String studnetId, Student student);
		
		//删除
		public boolean deleteStudentBySno(String studnetId);
		
		//增加
		public boolean addStudent(Student student);
		
		//查询总体据数大小
		public int getTotalCount();
		
		//currentPage：当前页（页码）pageSize：页面大小（每一页显示的数据条数）
		public List<Student> queryStudentsByPage(int currentPage, int pageSize);
}
