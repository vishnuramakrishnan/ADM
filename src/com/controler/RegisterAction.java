package com.controler;

import com.entity.User;
import com.model.HibernateDAO;
import com.opensymphony.xwork2.ActionSupport;

public class RegisterAction extends ActionSupport {
/**
	 * 
	 */
	private static final long serialVersionUID = 226325206030978624L;
private User user;
HibernateDAO hibernateDAO;
public User getUser() {
	return user;
}

public void setUser(User user) {
	this.user = user;
}
public String execute()
{
	hibernateDAO=new HibernateDAO();
	if(hibernateDAO.addUser(user))
	{
		addActionMessage(getText("user.registration"));
	return "success";
	}
	else
	{
		addActionError(getText("error.registration"));
		return "error";
	}
}

}
