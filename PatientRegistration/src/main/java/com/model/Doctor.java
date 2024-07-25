package com.model;

public class Doctor {
private int id;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public String getSpecialist() {
	return Specialist;
}
public void setSpecialist(String specialist) {
	Specialist = specialist;
}
public String getContactno() {
	return contactno;
}
public void setContactno(String contactno) {
	this.contactno = contactno;
}
private String name;
private String address;
private String Specialist;
private String contactno;
private String gender;
public String getGender() {
	return gender;
}
public void setGender(String gender) {
	this.gender = gender;
}
}
