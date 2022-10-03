package com.model;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.entity.Admin;
import com.entity.User;

public class HibernateDAO {
	boolean status=false;
	Session session;
	public boolean findUser(User user)
	{
		
		session=HibernateUtil.getSessionFactory().openSession();
		List<User> userlist=new ArrayList<User>();
		session.beginTransaction();
		Query query=session.createQuery("from User where username=:user and password=:pass");
		query.setParameter("user", user.getUsername());
		query.setParameter("pass", user.getPassword());
		userlist=query.list();
		session.getTransaction().commit();
		session.close();
		if(userlist.size()>0)
		{
			status=true;
		}
		return status;
	}
	public boolean findAdmin(Admin admin)
	{
		session=HibernateUtil.getSessionFactory().openSession();
		List<Admin> admins=new ArrayList<Admin>();
		session.beginTransaction();
		Query query=session.createQuery("from Admin where username=:user and password=:pass");
		query.setParameter("user", admin.getUsername());
		query.setParameter("pass", admin.getPassword());
		admins=query.list();
		session.getTransaction().commit();
		session.close();
		if(admins.size()>0)
		{
			status=true;
		}
		else
		{
			status=false;
		}
		return status;
	}
	public boolean addUser(User user)
	{
		
		
		session=HibernateUtil.getSessionFactory().openSession();
		session.beginTransaction();
		Query query=session.createQuery("from User where username=:user");
		query.setParameter("user", user.getUsername());
		List<User> userlist=query.list();
		if(userlist.size()>0)
		{
			status=false;
		
		}
		else
		{
			int i=(Integer) session.save(user);
			if(i!=0)
			{
				status=true;
			}
		}
		session.getTransaction().commit();
		return status;
	}

}
