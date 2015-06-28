package com.doublezee.services;

import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.doublezee.dao.DoubleZeeDAO;
import com.doublezee.domain.WebEnquiry;
import com.doublezee.domain.WebFeedback;

@Transactional 
public class DoubleZeeManager {
		private DoubleZeeDAO doubleZeeDAO;

		public void setDoubleZeeDAO(DoubleZeeDAO doubleZeeDAO) {
			this.doubleZeeDAO = doubleZeeDAO;
		}
		
		@Transactional(propagation=Propagation.REQUIRED)
		public void createEnquiry(WebEnquiry enquiry) {
			doubleZeeDAO.addEnquiry(enquiry);
		}
		@Transactional(propagation=Propagation.REQUIRED)
		public void createFeedback(WebFeedback feedback) {
			doubleZeeDAO.addFeedback(feedback);
		}
}
