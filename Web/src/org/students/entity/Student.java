package org.students.entity;

public class Student {
	private String name;
	private String studentID;
	private String major;
	private String phone;
	private String email;

	public Student() {

	}
	
	public Student(String name, String major, String phone, String email) {
		this.name = name;
		this.major = major;
		this.phone = phone;
		this.email = email;
	}

	public Student(String name, String studentID, String major, String phone, String email) {
		this.name = name;
		this.studentID = studentID;
		this.major = major;
		this.phone = phone;
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getStudentID() {
		return studentID;
	}

	public void setStudentID(String studentID) {
		this.studentID = studentID;
	}

	public String getMajor() {
		return major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String toString() {
		return this.getName() + "-" + this.getStudentID() + "-" + this.getMajor() + "-" + this.getPhone() + "-" + this.getEmail();
	}
	
	
}
