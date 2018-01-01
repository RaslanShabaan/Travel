package com.arch.Entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Offer", catalog = "Travel")
public class Offer {

	@Id
	@GeneratedValue
	private int Id;
	private String Company;
	private String Country;
	private String Price;
	private String Days;
	private String Description;
	private String Picture;
    
	
	public Offer(){}
	public Offer(int Id){this.Id=Id;}
	public Offer(int Id, String Company, String Country, String Price, String Days, String Description, String Picture){
		
		this.Id=Id;
		this.Company=Company;
		this.Country=Country;
		this.Price=Price;
		this.Days=Days;
		this.Description=Description;
		this.Picture=Picture;
		
	}
	
	@Column(name="Id")
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	
	@Column(name="Company")
	public String getCompany() {
		return Company;
	}
	public void setCompany(String company) {
		Company = company;
	}
	
	@Column(name="Country")
	public String getCountry() {
		return Country;
	}
	public void setCountry(String country) {
		Country = country;
	}
	
	@Column(name="Price")
	public String getPrice() {
		return Price;
	}
	public void setPrice(String price) {
		Price = price;
	}
	
	@Column(name="Days")
	public String getDays() {
		return Days;
	}
	public void setDays(String days) {
		Days = days;
	}
	
	@Column(name="Description")
	public String getDescription() {
		return Description;
	}
	public void setDescription(String description) {
		Description = description;
	}
	
	@Column(name="Picture")
	public String getPicture() {
		return Picture;
	}
	public void setPicture(String picture) {
		Picture = picture;
	}
	
    
}
