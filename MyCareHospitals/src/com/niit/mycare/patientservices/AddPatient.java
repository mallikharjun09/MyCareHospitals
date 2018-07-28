package com.niit.mycare.patientservices;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.niit.mycare.dataconfig.DataConfig;

public class AddPatient extends HttpServlet{
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	// TODO Auto-generated method stub
    	resp.setContentType("text/html");
    	PrintWriter out=resp.getWriter();
    	
    	String name=req.getParameter("patientName");
    	String mail=req.getParameter("patientMail");
    	int age=Integer.parseInt(req.getParameter("patientAge"));
    	String gender=req.getParameter("gender");
    	String dov=req.getParameter("dov");
    	String tov=req.getParameter("tov");
    	String pwd=req.getParameter("patientPassword");
    	String vdept=req.getParameter("doctorId");
    	String status="valid";
    	String query="insert into patients values(patients_seq.nextval,?,?,?,?,?,?,?,?)";
    	String query2="select patients_seq.currval from dual";
    	try{
    		DataConfig.ps=DataConfig.connectDB().prepareStatement(query);
    		DataConfig.ps.setString(1, name);
    		DataConfig.ps.setString(2, mail);
    		DataConfig.ps.setInt(3, age);
    		DataConfig.ps.setString(4, vdept);
    		DataConfig.ps.setString(5, gender);
    		DataConfig.ps.setString(6, dov);
    		DataConfig.ps.setString(7, tov);
    		DataConfig.ps.setString(8, status);
    		DataConfig.ps.execute();
    		PreparedStatement prepare=DataConfig.connectDB().prepareStatement(query2);
    		ResultSet rs=prepare.executeQuery();
    		if(rs.next()) {
    		   out.println("<script type=\"text/javascript\">");
    		   out.println("alert(\"Patient Booked an Appointment \n patient ID : \""+rs.getString(1)+")");
    		   out.println("location='Booking.jsp';");
    		   out.println("</script>");
    		}
    	}catch(Exception e) {
    		out.println(e.getMessage());
    	}
    }
}
