package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Patientinfo {

	    public static List<Patient> getRecords(int i, int t) {
	        i = i - 1;
	        String sql = "SELECT pid, pname,address,gender FROM patientdata LIMIT " + i + "," + t;

	        List<Patient> li = new ArrayList<Patient>();
	        try {
	            Class.forName("com.mysql.cj.jdbc.Driver");
	            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vsb", "root", "root");
	            PreparedStatement pst = con.prepareStatement(sql);
	            ResultSet rs = pst.executeQuery();

	            while (rs.next()) {
	                Patient s = new Patient();
	                s.setPid(rs.getInt(1));
	                s.setPname(rs.getString(2)); 
	                s.setAddress(rs.getString(3));
	                s.setGender(rs.getString(4));
	                li.add(s);
	            }
	        } catch (SQLException | ClassNotFoundException e) {
	            e.printStackTrace();
	        }
	        return li;
	    }
	}
