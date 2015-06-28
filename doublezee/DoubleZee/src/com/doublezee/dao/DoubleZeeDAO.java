package com.doublezee.dao;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.doublezee.domain.WebEnquiry;
import com.doublezee.domain.WebFeedback;

public class DoubleZeeDAO {
	@Autowired
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	@Transactional
	public void addEnquiry(WebEnquiry enquiry) {
		sessionFactory.getCurrentSession().save(enquiry);
	}

	public void addFeedback(WebFeedback feedback) {
		sessionFactory.getCurrentSession().save(feedback);	
	}
}