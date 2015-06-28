<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>DoubleZee : home</title>
	
	<link rel="shortcut icon" type="image/x-icon" href="<c:url value="/resources/images/icons/favicon.ico"/>" />
	<meta name="description" content="DoubleZee services" />
	<meta http-equiv="imagetoolbar" content="no" />
	<script type="text/javascript">
		function getContextPath() {
			return "${pageContext.request.contextPath}";
		}
	</script>
	<link href="<c:url value="/resources/css/DoubleZee.css"/>" rel="stylesheet" type="text/css" />
	<link href="<c:url value="/resources/css/Generic.css"/>" rel="stylesheet" type="text/css" />
	<link href="<c:url value="/resources/css/menumatic.css"/>" rel="stylesheet" type="text/css" />
     <script type="text/javascript" src="<c:url value="/resources/js/mootools-1.2.5-core.js"/>" charset="utf-8"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/mootools-1.2.5.1-more.js"/>" charset="utf-8"></script>
    <script src="<c:url value="/resources/js/MenuMatic_0.68.3.js"/>" type="text/javascript" charset="utf-8"></script>
    
	<script type="text/javascript">
	    window.addEvent('domready', function() {
		    var myMenu = new MenuMatic('');
	    });		
    </script>
     <!-- Slide show mootools resources -->
    <link href="<c:url value="/resources/css/slideshow.css"/>" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="<c:url value="/resources/js/slideshow.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/home-page-slideshow.js"/>"></script>

</head>
<body>
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
                <li><a id="current-hnav-link" href="${contextPath}/home">Home</a></li>
                <li><a href="${contextPath}/about-us">About Us</a></li>
                <li><a href="${contextPath}/services">Service</a></li>
				<li><a href="${contextPath}/enquiry">Enquiry</a></li>
                <li><a href="${contextPath}/contact">Contact US</a></li>
                <li><a href="${contextPath}/feedback">Feedback</a></li>
            </ul>
        </div>
        <!-- Banner starts -->
        <div id="banner">
            <div id="banSlide">
                 <img alt="" src="<c:url value="/resources/images/slide/slide-img1.jpg"/>" class="slide" />
            </div>
        </div>
        <!-- Banner ends -->
        <!-- Tag links starts -->
        <div id="tag">
            <ul id="tagNav">
                <li><a href="" class="sCenter">SERVICE CENTER<span>Get online service request for your favourite car now</span></a></li>
                <li><a href="" class="tDrive">Test Drive Ride<span>Post your interest to have test drive of favourite car</span></a></li>
                <li class="bgImgNone"><a href="" class="finance">Auto Finance<span>Planning for new favourite car, then apply for finance</span></a></li>
            </ul>
        </div>
        <!-- Tag links ends -->
        <!-- Content starts -->
        <div id="contHome">
            <div class="pad20">
                <div class="fll col660 mrgR20">
                    <div class="grayHeader">Customer Feedbacks</div>
                    <ul id="carNav">
                        <li class="mrgR15"><a href="" class="feedback">The best service ever seen. very nice. The best service ever seen. very nice service ever seen.
                        	<span>- Amol Dahe</span></a></li>
                        <li class="mrgR15"><a href="" class="feedback">The best service ever seen. very nice. The best service ever seen. very nice service ever seen.
                        	<span>- Amol Dahe</span></a></li>
						<li class=""><a href="" class="feedback">The best service ever seen. very nice. The best service ever seen. very nice service ever seen.
                        	<span>- Amol Dahe</span></a></li>
                    </ul>
                </div>
                <div class="fll col260">
                    <div class="redHeader">Latest News</div>
                    <div id="news">
                            <a href="" class="newsnav">favourite INDIA TO LAUNCH ALL NEW JAZZ  - 2015<span>12 May 2015 | DoubleZee</span></a>
                            <span class="news-data">favourite India is all set to launch 2015 All New favourite Jazz.</span>
                            <div class="grayline mrgB10 mrgT10"></div>
                     
                            <a href="" class="newsnav">BEST EXCHANGE PRICE CHALLENGE<span>09 May 2015 | DoubleZee</span></a>
                            <span class="news-data">Any car now be turned into a favourite with EASY EXCHANGE fro</span>
                            <div class="grayline mrgB10 mrgT10"></div>
                     
                            <a href="" class="newsnav">WISH YOU ALL A HAPPY AKSHAYA TRITIYA !<span>18 Apr 2015 | DoubleZee</span></a>
                            <span class="news-data">!! May lord Vishnu bless you with Happiness, Prosperity a</span>
                            <div class="grayline mrgB10 mrgT10"></div>
                     
                    </div>
                  
                </div>
                <div class="clrLeft"></div>
            </div>
        </div>
        <!-- Conten ends -->
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
                    <a href="https://www.facebook.com/amoldahe" target="_blank" title="Facebook: Official page"><img alt="" src="<c:url value="/resources/images/social-facebook.gif"/>" class="smLink" /></a>
                    <a href="https://twitter.com/amoldahe" target="_blank" title="Twitter: Official page"><img alt="" src="<c:url value="/resources/images/social-twitter.gif"/>" class="smLink" /></a>
                </div>
          </div>
          <!-- Footer ends -->
    </div>
    <!-- Page wrapper 980 ends -->
</body>
</html>