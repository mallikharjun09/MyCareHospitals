package com.niit.mycare.doctorservices;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.niit.mycare.dataconfig.DataConfig;

@WebServlet("/validate")
public class ValidateDoctor extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=resp.getWriter();
		String mail=req.getParameter("mail");
		String pwd=req.getParameter("pwd");
		Connection con=DataConfig.connectDB();
		String query="select * from doctors where doctor_mail=? and doctor_pwd=?";
		try {
			HttpSession session=req.getSession(true);
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, mail);
			ps.setString(2, pwd);
			ResultSet rs=ps.executeQuery();
			RequestDispatcher rd=null;
			if(rs.next()) {
				String id=rs.getString(1);
				String name=rs.getString(2);
				
				rd=req.getRequestDispatcher("/admin/AdminHome.jsp");
				session.setAttribute("doctor_id",id);
				session.setAttribute("doctor_name", URLEncoder.encode( name, "UTF-8" ));
				session.setAttribute("doctor_mail",mail);
				session.setAttribute("doctor_pwd",pwd);
				rd.forward(req, resp);
			}
			else {
				out.println("Sorry Invalid Details");
				rd=req.getRequestDispatcher("/admin/Login.jsp");
				rd.include(req, resp);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
