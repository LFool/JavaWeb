package org.students.service.impl;

import java.util.List;

import org.students.dao.IStudentDao;
import org.students.dao.impl.StudentDaoImpl;
import org.students.entity.Student;
import org.students.service.IStudentService;

//业务逻辑层，逻辑性的增删改查
public class StudentServiceImpl implements IStudentService{
	IStudentDao studentDao = new StudentDaoImpl();
	
	//根据学号查询学生
	public Student queryStudentBySno(String studentID){
		return studentDao.queryStudentBySno(studentID);
	}
	
	//查询全部学生
	public List<Student> queryAllStudents(){
		return studentDao.queryAllStudents();
	}
	
	//修改
	public boolean updateStudentBySno(String studentID, Student student) {
		if(studentDao.isExist(studentID))
			return studentDao.updateStudentBySno(studentID, student);
		else
			return false;
	}
	
	//删除
	public boolean deleteStudentBySno(String studentID) {
		if(studentDao.isExist(studentID))
			return studentDao.deleteStudentBySno(studentID);
		else
			return false;
	}
	
	//增加
	public boolean addStudent(Student student) {
		if(!studentDao.isExist(student.getStudentID())) 
			return studentDao.addStudent(student);
		else 
			return false;
		
	}

	//查询总体据数大小
	public int getTotalCount() {
		return studentDao.getTotalCount();
	}

	//currentPage：当前页（页码）pageSize：页面大小（每一页显示的数据条数）
	public List<Student> queryStudentsByPage(int currentPage, int pageSize) {
		return studentDao.queryStudentsByPage(currentPage, pageSize);
	} 
}
