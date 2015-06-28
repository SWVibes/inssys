//<![CDATA[
	var url = getContextPath();
  window.addEvent('domready', function()
  {
	var data = {
	    'slide-img0.jpg': {caption: '' },
		'slide-img1.jpg': {caption: '' },
		'slide-img2.jpg': {caption: '' },
		'slide-img3.jpg': {caption: '' },
		'slide-img4.jpg': {caption: '' },
		'slide-img5.jpg': {caption: '' },
		'slide-img6.jpg': {caption: '' },
		'slide-img7.jpg': {caption: '' }
		
  };
	var myShow = new Slideshow('banSlide', data, {
		captions : false,
		controller : true,
		height : 450,
		hu : url + '/resources/images/slide/',
		thumbnails : false,
		width : 980
	});
  });
//]]>