<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="net.tanesha.recaptcha.ReCaptcha" %>
<%@ page import="net.tanesha.recaptcha.ReCaptchaFactory" %>
<%@ page import="java.util.Properties" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>DoubleZee : feedback</title>
	
	<link rel="shortcut icon" type="image/x-icon" href="<c:url value="/resources/images/icons/favicon.ico"/>" />
	<meta name="description" content="DoubleZee car services" />
	<meta http-equiv="imagetoolbar" content="no" />
	<script type="text/javascript">
		function getContextPath() {
			return "${pageContext.request.contextPath}";
		}
	</script>
	<link href="<c:url value="/resources/css/DoubleZee.css"/>" rel="stylesheet" type="text/css" />
	<link href="<c:url value="/resources/css/Generic.css"/>" rel="stylesheet" type="text/css" />
	<link href="<c:url value="/resources/css/menumatic.css"/>" rel="stylesheet" type="text/css" />
     <script type="text/javascript" src="<c:url value="/resources/js/mootools-1.2.5-core.js"/>" ></script>
    <script type="text/javascript" src="<c:url value="/resources/js/mootools-1.2.5.1-more.js"/>" ></script>
    <script src="<c:url value="/resources/js/MenuMatic_0.68.3.js"/>" type="text/javascript" ></script>
    
	<script type="text/javascript">
	    window.addEvent('domready', function() {
		    var myMenu = new MenuMatic('');
	    });		
</script>
</head>
<body>
<form id="myForm" method="post">
     <!-- Top strip starts -->
    <div class="topStrip">
        <div class="mrgAuto w980">
            <span class="hLine flr">Service Helpline: (020) 12345678 / 12345678</span>
            <div class="clrFlt"></div>
        </div>
    </div>
    <!-- Top strip ends -->
    <!-- Header starts -->
    <div id="header">
    <div class="mrgAuto w980">
        <img alt="" src="<c:url value="/resources/images/logo.jpg"/>" class="fll logo" />
        <img alt="" src="<c:url value="/resources/images/logo.png"/>" class="flr logoB" />
        <div class="clrFlt"></div>
    </div>
    </div>
    <!-- Header ends -->
    <!-- Page wrapper 980 starts -->
    <div class="mrgAuto w980">
        <div id="menu">
            <ul id="nav">
                <li><a href="${contextPath}/home">Home</a></li>
                <li><a href="${contextPath}/about-us">About Us</a></li>
                <li><a href="${contextPath}/services">Service</a></li>
				<li><a href="${contextPath}/enquiry">Enquiry</a></li>
                <li><a href="${contextPath}/contact">Contact US</a></li>
                <li><a id="current-hnav-link" href="${contextPath}/feedback">Feedback</a></li>
            </ul>
        </div>
        <!-- Content starts -->
            <div id="page_content">
                <div class="pad20">
                    
    <div class="col680 fll">
    
<h1>Feedback</h1>

	<h4 class="mrgB15">All&nbsp; &nbsp;<span class="redStar">*</span>&nbsp;&nbsp;fields are mandatory</h4>
    <div id="ctl00_ctl00_CPHParent_CPHParent_UpdatePanel1">
	
    <table class="form_table">
        <tr>
           <td style="width:23%" class="tar fBold">Name:</td>
           <td style="width:5%"><span class="redStar">*</span></td>
           <td><input name="name"  type="text" id="name" class="input" style="width:250px;" required/></td>
        </tr>
        <tr>
           <td style="width:23%" class="tar fBold">Phone:</td>
           <td></td>
           <td><input name="phone" type="text" id="phone" class="input" style="width:250px;" /></td>
        </tr>
        <tr>
           <td style="width:23%" class="tar fBold">Email:</td>
           <td style="width:5%"><span class="redStar">*</span></td>
           <td><input name="email" type="email" id="email" class="input" style="width:250px;" required/></td>
        </tr>
        <tr>
           <td style="width:23%" class="tar fBold">Message:</td>
           <td style="width:5%"><span class="redStar">*</span></td>
           <td><textarea name="message" rows="2" cols="20" id="message" class="input" style="height:100px;width:250px;" required></textarea></td>
        </tr>
         <tr>
            <td style="width:23%" class="tar fBold">Recaptcha</td>
            <td style="width:5%"><span class="redStar">*</span></td>
            <td><div>
	             <%
	             	ReCaptcha c = ReCaptchaFactory.newReCaptcha("6LcK3wgTAAAAAEgYdUi8_ozYpndEp40hO7o7ti5p", "6LcK3wgTAAAAAJyGcKVNETgpF-1IR7Y_ZIDi46Qw", false);
	             	Properties options = new Properties();
	             	options.setProperty("theme", "clean");
	             	out.print(c.createRecaptchaHtml(null, options));
	        	 %></div>
            </td>
         </tr>
        <tr>
           <td></td>
           <td></td>
           <td>
         		<input type="submit" value="Submit" class="button fll mrgR10" />
                <div id="" style="display:none;">
                	<img alt="progress" src="<c:url value="/resources/images/ajax-loader.gif"/>" class="loader fll" />                
				</div>   
            </td>
        </tr>
    </table>
     
</div> 

</div>
<div class="col230 fll">
<div id="ctl00_ctl00_CPHParent_sidebar">

</div>
 
 <div class="sbMenuHead">Quick navigation</div>
      
      <div id="ctl00_ctl00_CPHParent_about">
      <ul class="sbLink">
          <li><a id="actSb" href="">About  Group</a></li>
          <li><a id="actSb" href="">DoubleZee</a></li>
          <li><a id="actSb" href="">Facilities</a></li>
          <li><a id="actSb" href="">News & Events</a></li>
          <li><a id="actSb" href="">Accolades</a></li>
          <li><a id="actSb" href="" class="noBorder">Careers</a></li>
      </ul>
      </div>
</div>
<div class="clrFlt"></div>

                </div>
            </div>
        <!-- Content Ends -->
          <!-- Tagbox starts -->
        <div id="Tagbox">
        <div class="pad20">
          <div class="col150 fll">
                <h3>Products</h3>
                <ul class="Tagbox-nav">
                    <li><a href="">favourite BRIO</a></li>
                    <li><a href="">favourite Amaze</a></li>
                    <li><a href="">favourite All New City</a></li>
                    <li><a href="">All New Mobilio</a></li>
                    <li><a href="">favourite CR-V</a></li>
                </ul>
           </div>
           <div class="col150 fll">
            <h3>Sales Department</h3>
                <ul class="Tagbox-nav">
                    <li><a href="">Know Your customer</a></li>
                    <li><a href="">Corporate sales</a></li>
                    <li><a href="">Finance</a></li>
                </ul>
           </div>
           <div class="col150 fll">
            <h3>Service Department</h3>
                <ul class="Tagbox-nav">
                    <li><a href="">Car renewal serivce</a></li>
                    <li><a href="">Extended Warranty</a></li>
                    <li><a href="">Insurance(assure)</a></li>
                </ul>
           </div>
            <div class="clrFlt"></div>
         </div>
        </div>
		<!-- Tagbox ends -->
          <!-- Footer Starts -->
          <div id="footer" class="posRlt">
                <span class="fll">Copyright © 2015 DoubleZee, All Right Reserved.</span>
                <a href="" target="_blank"class="insys" title="Website Design and Development service by Intellect Systems">Website by SWVibes Technologies</a>
                <div class="clrFlt"></div>
                <div class="social">
                    <a href="https://www.facebook.com/DoubleZee" target="_blank" title="Facebook: DoubleZee official page"><img alt="" src="<c:url value="/resources/images/social-facebook.gif"/>" class="smLink" /></a>
                    <a href="https://twitter.com/DoubleZee" target="_blank" title="Twitter: DoubleZee official page"><img alt="" src="<c:url value="/resources/images/social-twitter.gif"/>" class="smLink" /></a>
                </div>
          </div>
          <!-- Footer ends -->
   </div> 
   </form>
<script src="<c:url value="/resources/js/jquery-latest.js"/>"></script> 
				<script type="text/javascript">
				
				
				jQuery(document).ready(function() {
					jQuery("#myForm").submit(function(e) {
						jQuery.ajax({
							url : getContextPath() + '/feedback',
							type : 'post',
							data : jQuery(this).serialize()
						}).done(function(data, status) {
							if (status === "success") {
 								if(data.response=='Answer was entered correctly..!'){
 									alert('Your feedback was submitted successfully..!')
 									document.getElementById("myForm").reset();
 									Recaptcha.reload();
 								}else if(data.response=='Answer is wrong..!'){
 									alert('Please enter correct recaptcha');
 									Recaptcha.reload();
 								}
							} else {
								alert("Error Occured: "+ status);
							}
						}).fail(function(data, status) {
							alert("Server failed to process request; Error :"+data);
						});
						return false;
					});
				});

				function validateForm() {
				    var x = document.forms["myForm"]["fname"].value;
				    if (x == null || x == "") {
				        alert("Name must be filled out");
				        return false;
				    }
				}
				
</script>
</body>
</html>

