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
    //tabs2(".top-header-tow li a");	
    
    function tabs2(obj){
	        var len= $(obj).length;
			//$(obj).first().addClass("active");
			//$(obj).parent().siblings(".more:first").show();
			//$(obj).parent().parent().siblings(".tabli:first").show();
	        $(obj).click(function(){
			   		var index=$(obj).index(this);
                    //alert(index);
	                $(obj).removeClass("active").eq(index).addClass("active");
					//$(obj).parent().siblings(".more").hide().eq(index).show();
					//$(obj).parent().parent().siblings(".tabli").hide().eq(index).show();
			});
	}
    
    
    
    //3检测Internet Explorer版本
    if (navigator.userAgent.match(/msie/i) ){
        alert('I am an old fashioned Internet Explorer');
    }
    //4平稳滑动到页面顶部
    $(".top").click(function() {
        $("html, body").animate({ scrollTop: 0 }, "slow");//scrollTop() 方法返回或设置匹配元素的滚动条的垂直位置。
        //animate() 方法执行 CSS 属性集的自定义动画
        return false;
    });

    //5.固定在顶部
    var $win = $(window)
    var $nav = $('.navbar-fixed-top1');
    var navTop = $('.navbar-fixed-top1').length && $('.navbar-fixed-top1').offset().top;
    var isFixed=0;
    processScroll()
    $win.on('scroll', processScroll)
    function processScroll() {
        var i, scrollTop = $win.scrollTop()

        if (scrollTop >= navTop && !isFixed) {
            isFixed = 1
            $nav.addClass('fixed')
        } else if (scrollTop <= navTop && isFixed) {
            isFixed = 0
            $nav.removeClass('top')
        }
    }

    //6.jQuery使得用另外一个东西取代html标志很简单。可以利用的余地无穷无尽。
    /*$('li').replaceWith(function(){
      return $("<div />").append($(this).contents());
    });*/
    
    //alert($(window).width());
    
    //7.自动定位并修复损坏图片
    //如果你的站点比较大而且已经在线运行了好多年，你或多或少会遇到界面上某个地方有损坏的图片。这个有用的函数能够帮助检测损坏图片并用你中意的图片替换它，并会将此问题通知给访客
    $('img').error(function(){
	    $(this).attr('src', 'img/broken.png');
    });
    
    //8.遇到外部链接自动添加target=”blank”的属性
    /*var root = location.protocol + '//' + location.host;
    $('a').not(':contains(root)').click(function(){
            this.target = "_blank";
    });
    
    
    //9.在图片上停留时逐渐增强或减弱的透明效果
    /*$("img").fadeTo("slow", 0.6); // This sets the opacity of the thumbs to fade down to 60% when the page loads
    $("img").hover(function(){
        $(this).fadeTo("slow", 1.0); // This should set the opacity to 100% on hover
    },function(){
        $(this).fadeTo("slow", 0.6); // This should set the opacity back to 60% on mouseout
    });*/
    
    //10、在文本或密码输入时禁止空格键
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
