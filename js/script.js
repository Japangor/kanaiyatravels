$(function(){
	//kwicks begin
	$('.kwicks').kwicks({
		 max : 709,
		 spacing : 1,
		 event : 'mouseenter'
	});
	
	$(".kwicks li").hover(function(){
		$(".kwicks li h4.title").stop(true, true).fadeOut("fast");
		$(this).find("span").stop(true, true).fadeOut();
		$(this).find(".description").stop().animate({bottom:"0"}, "normal")
	}, function(){
		$(".kwicks li h4.title").stop(true, true).fadeIn("fast");
		$(this).find("span").stop(true, true).fadeIn();
		$(this).find(".description").stop().animate({bottom:"-70px"}, "normal")
	});
});



function validationBooking(){
		
	if($('input[name="name"]').val() === ""){
		alert("Please enter your name");
		document.bookingform.name.focus();
		return false;
	}
				
	email= $('input[name="EmailId"]').val();
	
	if(email.indexOf(".")==-1 || email.indexOf("@")==-1){
		alert("Please enter Email ID in correct format");
		document.bookingform.EmailId.focus();
		return false;
	}
	
	if($('input[name="phone"]').val() === ""){
		alert("Please enter your phone no.");
		document.bookingform.phone.focus();
		return false;
	}
	
	if($('input[name="city"]').val() === ""){
		alert("Please enter your city");
		document.bookingform.city.focus();
		return false;
	}
 
	if($('select[name="departure_date"]').val() === ""){
		alert("Please select date");
		document.bookingform.departure_date.focus();
		return false;
	}
	
	if($('select[name="departure_date_month"]').val() === ""){
		alert("Please select month");
		document.bookingform.departure_date_month.focus();
		return false;
	}
	
	if($('select[name="departure_date_year"]').val() === ""){
		alert("Please select year");
		document.bookingform.departure_date_year.focus();
		return false;
	}
	
	
	if($('select[name="package"]').val() === ""){
		alert("Please select your package");
		document.bookingform.package.focus();
		return false;
	}
	
	 
}
