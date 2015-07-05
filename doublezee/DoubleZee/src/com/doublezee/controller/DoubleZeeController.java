package com.doublezee.controller;

import javax.servlet.http.HttpServletRequest;

import net.tanesha.recaptcha.ReCaptchaImpl;
import net.tanesha.recaptcha.ReCaptchaResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.doublezee.domain.WebEnquiry;
import com.doublezee.domain.WebFeedback;
import com.doublezee.services.DoubleZeeManager;
//Test
@Controller
public class DoubleZeeController {
	@Autowired
	DoubleZeeManager doubleZeeManager;

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public ModelAndView getHomePage(ModelMap model) {
		return new ModelAndView("home", "model", model);
	}
	
	@RequestMapping(value = "/feedback", method = RequestMethod.GET)
	public ModelAndView getFeedbackPage(ModelMap model) {
		return new ModelAndView("feedback", "model", model);
	}
	
	@RequestMapping(value = "/about-us", method = RequestMethod.GET)
	public ModelAndView getAboutUsPage(ModelMap model) {
		return new ModelAndView("about", "model", model);
	}
	
	@RequestMapping(value = "/services", method = RequestMethod.GET)
	public ModelAndView getServicesPage(ModelMap model) {
		return new ModelAndView("services", "model", model);
	}
	@RequestMapping(value = "/enquiry", method = RequestMethod.GET)
	public ModelAndView getEnquiryPage(ModelMap model) {
		return new ModelAndView("enquiry", "model", model);
	}
	
	@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public ModelAndView getContactPage(ModelMap model) {
		return new ModelAndView("contact", "model", model);
	}
	
	
	@RequestMapping(value="/enquiry", method = RequestMethod.POST)
	public @ResponseBody WebEnquiry createEnquiry(@ModelAttribute("enquiry") WebEnquiry enquiry,
			 HttpServletRequest request, BindingResult result, ModelMap model) {
		
		if (result.hasErrors()) {
			enquiry.setResponse("some error occurred");
			return enquiry;
		}
		
		String remoteAddr = request.getRemoteAddr();
        ReCaptchaImpl reCaptcha = new ReCaptchaImpl();
        reCaptcha.setPrivateKey("6LcK3wgTAAAAAJyGcKVNETgpF-1IR7Y_ZIDi46Qw");

        String challenge = request.getParameter("recaptcha_challenge_field");
        String uresponse = request.getParameter("recaptcha_response_field");
        ReCaptchaResponse reCaptchaResponse = reCaptcha.checkAnswer(remoteAddr, challenge, uresponse);

        
        if (reCaptchaResponse.isValid()) {
        	enquiry.setResponse("Answer was entered correctly..!");
            if (enquiry != null){
            	doubleZeeManager.createEnquiry(enquiry);
            }
       	} else {
       			enquiry.setResponse("Answer is wrong..!");
        		return enquiry;
        }
        
		return enquiry;
	}

	@RequestMapping(value="/feedback", method = RequestMethod.POST)
	public @ResponseBody WebFeedback createFeedback(@ModelAttribute("feedback") WebFeedback feedback,
			 HttpServletRequest request, BindingResult result, ModelMap model) {
		
		if (result.hasErrors()) {
			feedback.setResponse("some error occurred");
			return feedback;
		}
		
		       
		String remoteAddr = request.getRemoteAddr();
        ReCaptchaImpl reCaptcha = new ReCaptchaImpl();
        reCaptcha.setPrivateKey("6LcK3wgTAAAAAJyGcKVNETgpF-1IR7Y_ZIDi46Qw");

        String challenge = request.getParameter("recaptcha_challenge_field");
        String uresponse = request.getParameter("recaptcha_response_field");
        ReCaptchaResponse reCaptchaResponse = reCaptcha.checkAnswer(remoteAddr, challenge, uresponse);

        
        if (reCaptchaResponse.isValid()) {
            feedback.setResponse("Answer was entered correctly..!");
            if (feedback != null){
            	doubleZeeManager.createFeedback(feedback);
            }
       	} else {
        		feedback.setResponse("Answer is wrong..!");
        		return feedback;
        }
        
		return feedback;
	}
}