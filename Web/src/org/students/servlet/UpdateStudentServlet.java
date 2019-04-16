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
 * Servlet implementation class UpdateStudentServlet
 */
public class UpdateStudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateStudentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//修改
		request.setCharacterEncoding("utf-8");
		
		String name = request.getParameter("name");
		String studentID = request.getParameter("studentID");
		String major = request.getParameter("major");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		//封装到javabean中
		Student student = new Student(name, studentID, major, phone, email);
		
		IStudentService service = new StudentServiceImpl();
		boolean result = service.updateStudentBySno(studentID, student);
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		
		if(result) {
			//response.getWriter().println("修改成功！！");
			request.setAttribute("update_error", "noerror");
		}else {
			request.setAttribute("update_error", "error");
		}
		request.getRequestDispatcher("QueryAllStudentsServlet").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
