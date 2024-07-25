package com.model;

public class Patient {
 private int pid;
 public int getPid() {
	return pid;
}
public void setPid(int pid) {
	this.pid = pid;
}
private String pname;
 public String getPname() {
	return pname;
}
public void setPname(String pname) {
	this.pname = pname;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public String getGender() {
	return gender;
}
public void setGender(String gender) {
	this.gender = gender;
}
private String address;
 private String gender;
 
 
}

//pname,address,gender,prescription