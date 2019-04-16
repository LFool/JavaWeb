package org.students.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.students.dao.IStudentDao;
import org.students.entity.Student;
import org.students.util.DBUtil;

public class StudentDaoImpl implements IStudentDao{
	
	public boolean isExist(String studentID) {
		return queryStudentBySno(studentID) == null ? false:true;
	}
	
	//增加
	public boolean addStudent(Student student) {
		
		String sql = "insert into student values(?,?,?,?,?)";
		Object[] params = {student.getName(), student.getStudentID(), student.getMajor(), student.getPhone(), student.getEmail()};
		
		return DBUtil.executeUpdate(sql, params);
		
	}
	
	//删除
	public boolean deleteStudentBySno(String studnetId) {
		
		String sql = "delete from student where studentID = ?";
		Object[] params = {studnetId};
		
		return DBUtil.executeUpdate(sql, params);
		
	}
	
	//根据学号修改信息
	public boolean updateStudentBySno(String studentID, Student student) {
		
		String sql = "update student set name = ?, major = ?, phone = ?, email = ? where studentID = ?";
		Object[] params = {student.getName(), student.getMajor(), student.getPhone(), student.getEmail(), studentID};
		
		return DBUtil.executeUpdate(sql, params);
		
	}
	
	//查询全部的学生(放到集合中)
	public List<Student> queryAllStudents() {
		
		Student student = null;
		ResultSet rs = null;
		List<Student> students = new ArrayList<Student>();
		
		try {
			String sql = "select * from student";
			rs = DBUtil.executeQuery(sql, null);
			while(rs.next()) {
				String name = rs.getString("name");
				String studentID = rs.getString("studentID");
				String major = rs.getString("major");
				String phone = rs.getString("phone");
				String email = rs.getString("email");
				student = new Student(name, studentID, major, phone, email);
				students.add(student);
			}
			return students;
	
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} 
		finally {
			DBUtil.closeAll(rs, DBUtil.pstmt, DBUtil.connection);
		}
	}
	
	
	//根据姓名查学生
	//根据年龄查学生
	//查询此人是否存在
	//根据学号查询
	
	public Student queryStudentBySno(String studentID) {
		
		Student student = null;
		ResultSet rs = null;
		String sql = "select * from student where studentID = ?";
		Object[] params = {studentID};
		
		try {
			
			rs = DBUtil.executeQuery(sql, params);
			if(rs.next()) {
				String name = rs.getString("name");
				String studentID2 = rs.getString("studentID");
				String major = rs.getString("major");
				String phone = rs.getString("phone");
				String email = rs.getString("email");
				student = new Student(name, studentID2, major, phone, email);
			}
			return student;
	
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} 
		finally {
			DBUtil.closeAll(rs, DBUtil.pstmt, DBUtil.connection);
		}
		
	}

	//查询总数据量
	public int getTotalCount() {
		String sql = "select count(1) from student";
		return DBUtil.getTotalCount(sql);
	}

	//返回具体某一页的数据集合
	public List<Student> queryStudentsByPage(int currentPage, int pageSize) {
		
		String sql = "select * from student limit ?, ?";
		
		Object[] params = {(currentPage-1) * pageSize, pageSize};
		
		List<Student> students = new ArrayList<Student>();
		ResultSet rs = DBUtil.executeQuery(sql, params);
		
		try {
			while(rs.next()) {
				Student student = new Student(rs.getString("name"), rs.getString("studentID"), rs.getString("major"), rs.getString("phone"), rs.getString("email"));
				students.add(student);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return students;
	}
	
}
