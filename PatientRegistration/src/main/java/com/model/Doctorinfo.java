package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Doctorinfo {


		    public static List<Doctor> getRecords(int i, int t) {
		        i = i - 1;
		        String sql = "SELECT id, name,address,gender,specialist,contactno FROM doctordata LIMIT " + i + "," + t;

		        List<Doctor> li = new ArrayList<Doctor>();
		        try {
		            Class.forName("com.mysql.cj.jdbc.Driver");
		            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vsb", "root", "root");
		            PreparedStatement pst = con.prepareStatement(sql);
		            ResultSet rs = pst.executeQuery();

		            while (rs.next()) {
		                Doctor s = new Doctor();
		                s.setId(rs.getInt(1));
		                s.setName(rs.getString(2)); 
		                s.setGender(rs.getString(4));
		                s.setAddress(rs.getString(3));
		                s.setSpecialist(rs.getString(4));
		                s.setContactno(rs.getString(5));
		              
		                li.add(s);
		            }
		        } catch (SQLException | ClassNotFoundException e) {
		            e.printStackTrace();
		        }
		        return li;
		    }
		}

