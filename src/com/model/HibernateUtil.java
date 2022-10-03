package com.model;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {
	private static SessionFactory sessionFactory=bulidSessionFactory();

	private static SessionFactory bulidSessionFactory() {
		try
		{
			return new Configuration().configure().buildSessionFactory();
		}catch(Throwable ex)
		{
			System.out.println("Initial Sessionfactory creation faild"+ex);
			throw new ExceptionInInitializerError(ex);
		}
	}
	public static SessionFactory getSessionFactory() {
		return sessionFactory;
		
	}

}
