package com.niit.mycare.doctorservices;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.niit.mycare.dataconfig.DataConfig;

public class AddDoctor extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		resp.setContentType("text/html");
		PrintWriter out=resp.getWriter();
		RequestDispatcher rd=null;
		String name=req.getParameter("doctorName");
		String mail=req.getParameter("doctorMail");
		String special=req.getParameter("doctorSpecialization");
		String gender=req.getParameter("gender");
		String login=req.getParameter("doctorLogin");
		String logout=req.getParameter("doctorLogout");
		String password=req.getParameter("doctorPassword");
		String query="insert into doctors values(doctors_seq.nextval,?,?,?,?,?,?,?)";
		try {
			DataConfig.ps=DataConfig.connectDB().prepareStatement(query);
			DataConfig.ps.setString(1,name);
			DataConfig.ps.setString(2,mail);
			DataConfig.ps.setString(3,special);
			DataConfig.ps.setString(4,gender);
			DataConfig.ps.setString(5,login);
			DataConfig.ps.setString(6,logout);
			DataConfig.ps.setString(7,password);
			DataConfig.ps.execute();
			rd=req.getRequestDispatcher("/admin/Login.jsp");
			//out.println("Doctor Successfully Registered");
			//rd.include(req, resp);
			rd.forward(req, resp);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			out.println(e.getMessage());
		}
	}
}
