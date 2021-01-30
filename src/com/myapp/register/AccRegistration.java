package com.myapp.register;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class AccRegistration {
	
	private String username;
	private String email;
	@Id
	private String phone;
	private String password;
	
	
	@Override
	public String toString() {
		return "AccRegistration [username=" + username + ", email=" + email + ", phone=" + phone + ", password="
				+ password + "]";
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	

}
