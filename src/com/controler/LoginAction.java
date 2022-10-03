package com.controler;

import java.util.Map;

import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

import com.entity.User;
import com.model.HibernateDAO;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport implements SessionAware {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private User user;
	private SessionMap<String, Object> sessionMap;
	HibernateDAO hibernateDAO=null;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	public String execute()
	{
		hibernateDAO=new HibernateDAO();
		if(hibernateDAO.findUser(user))
		{
			sessionMap.put("login", true);
			sessionMap.put("name", getUser());
			return "success";
		}
		else
		{
		addActionError(getText("error.login"));
		return "error";
		}
		
	}

	public void setSession(Map<String, Object> map) {
	sessionMap=(SessionMap<String, Object>) map;
		
	}
	
}
