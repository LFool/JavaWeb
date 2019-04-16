package org.students.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.students.entity.Student;
import org.students.service.IStudentService;
import org.students.service.impl.StudentServiceImpl;

/**
 * Servlet implementation class AddStudentServlet
 */
public class AddStudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddStudentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		
		String name = request.getParameter("name");
		String studentID = request.getParameter("studentID");
		String major = request.getParameter("major");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		
		Student student = new Student(name, studentID, major, phone, email);
		
		IStudentService studentService = new StudentServiceImpl();
		boolean result = studentService.addStudent(student);
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		
		System.out.println(result);
		
		if(result) {
			request.setAttribute("message", "报名成功！");  
		}else {
			request.setAttribute("message", "此学号已报名，报名失败！");  
		}
		
		request.getRequestDispatcher("submitinfo.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
