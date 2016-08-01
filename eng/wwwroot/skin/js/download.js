$(document).ready(function(){
    //alert($(".about-content ul li").length);
    $(".about-content ul li:odd").css("background-color","#f2f2f2");
    //alert($(".about-content ul li:even"));
	 $('#Android').hover(function(){
        $("#Android-code").show();
    }, function(){
        $("#Android-code").hide();
    });
    
    $('#Ios').hover(function(){
        $("#Ios-code").show();
    }, function(){
        $("#Ios-code").hide();
    });
});