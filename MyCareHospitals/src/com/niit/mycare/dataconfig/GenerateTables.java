package com.niit.mycare.dataconfig;

import java.sql.Statement;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class GenerateTables extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=resp.getWriter();
		try {
			Connection con=DataConfig.connectDB();
			DataConfig.ps=con.prepareStatement("create table doctors(doctor_id number,doctor_name varchar(30),doctor_mail varchar(50),specialization varchar(30),gender varchar(30),login_time varchar(15),logout_time varchar(15),doctor_pwd varchar(30))");
			DataConfig.ps.addBatch();
			DataConfig.ps=con.prepareStatement("create table patients(patient_id number,patient_name varchar(30),patient_mail varchar(50),patient_age number,visited_dept varchar(20),patient_gender varchar(6),patient_dov date,patient_tov varchar(15),patient_pwd varchar(30))");
			DataConfig.ps.addBatch();
			DataConfig.ps=con.prepareStatement("create table presc(presq_id number,patient_id number,patient_name varchar(30),problem_details varchar(150),prescription_data varchar(300))");
			DataConfig.ps.addBatch();
			DataConfig.ps=con.prepareStatement("create sequence doctors_seq start with 101 increment by 1");
			DataConfig.ps.addBatch();
			DataConfig.ps=con.prepareStatement("create sequence patients_seq start with 10001 increment by 1");
			DataConfig.ps.addBatch();
			DataConfig.ps=con.prepareStatement("create sequence presc_seq start with 10000001 increment by 1");
			DataConfig.ps.addBatch();
			DataConfig.ps.executeBatch();
			con.commit();
			out.println("Tables Generated Successfully");
		} catch (Exception e) {
			// TODO: handle exception
			out.println(e.getMessage());
		}
	}
}
