package com.controler;

import java.util.Map;

import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

import com.entity.Admin;
import com.model.HibernateDAO;
import com.opensymphony.xwork2.ActionSupport;

public class AdminAction extends ActionSupport implements SessionAware{
	private Admin admin;
	public Admin getAdmin() {
		return admin;
	}
	public void setAdmin(Admin admin) {
		this.admin = admin;
	}
	private SessionMap<String, Object> sessionMap;
	HibernateDAO hibernateDAO=null;
public String execute()
{
	hibernateDAO=new HibernateDAO();
	if(hibernateDAO.findAdmin(admin))
	{
		sessionMap.put("login", true);
		sessionMap.put("name", getAdmin());
		return "success";
	}
	else
	{
		addActionError(getText("error.login"));
		return "error";
	}
	
	}
public void setSession(Map<String, Object> map) {
	
	sessionMap=(SessionMap<String, Object>)map;
}
}
