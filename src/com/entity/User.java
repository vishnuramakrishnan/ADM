package com.entity;

import java.io.Serializable;

public class User implements Serializable {
/**
	 * 
	 */
private static final long serialVersionUID = 1L;
private int id;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
private String username;
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getMobile() {
	return mobile;
}
public void setMobile(String mobile) {
	this.mobile = mobile;
}
private String password;
private String email;
private String mobile;

}
