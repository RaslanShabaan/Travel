package com.arch.Entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Register", catalog = "Travel")
public class Register {

	@Id
	private String Email;
	private String Fname;
	private String Lname;
	private String Phone;
	private String Pass;
	
	
	public Register(){}
	public Register(String Email){this.Email=Email;}
	public Register(String Email, String Fname, String Lname, String Phone, String Pass){
    
		this.Email=Email;
		this.Fname=Fname;
		this.Lname=Lname;
		this.Phone=Phone;
		this.Pass=Pass;
	}
	
	
	@Column(name="Email")
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}

	@Column(name="Fname")
	public String getFname() {
		return Fname;
	}
	public void setFname(String fname) {
		Fname = fname;
	}
	
	@Column(name="Lname")
	public String getLname() {
		return Lname;
	}
	public void setLname(String lname) {
		Lname = lname;
	}
	
	@Column(name="Phone")
	public String getPhone() {
		return Phone;
	}
	public void setPhone(String phone) {
		Phone = phone;
	}
	
	@Column(name="Pass")
	public String getPass() {
	return Pass;
	}
	public void setPass(String pass) {
		Pass = pass;
	}

}

