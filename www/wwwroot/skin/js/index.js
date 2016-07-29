// Copyright 2014-2015 Twitter, Inc.
// Licensed under MIT (https://github.com/twbs/bootstrap/blob/master/LICENSE)
if (navigator.userAgent.match(/IEMobile\/10\.0/)) {
  var msViewportStyle = document.createElement('style')
  msViewportStyle.appendChild(
    document.createTextNode(
      '@-ms-viewport{width:auto!important}'
    )
  )
  document.querySelector('head').appendChild(msViewportStyle)
}

$(document).ready(function() {
    $('input.nospace').keydown(function(e) {
        if (e.keyCode == 32) {
            return false;
        }
    });

    if(navigator.userAgent.indexOf("Firefox")>-1){
		var video0 = document.getElementById("media0");
	}else{
		var video0 = $("#media0");
	}
	//var video0 = $("#media0")? $("#media0"):document.getElementById("media0");
    //var video0 = document.getElementById("media0");
	video0.bind("click", function() {
        if (this.paused) {
            this.play();
        } else {
            this.pause();
        }

    });

    $(".box img").click(function(){
        $(this).css({"display":"none"});
        $("#media0").show()
    });

});
