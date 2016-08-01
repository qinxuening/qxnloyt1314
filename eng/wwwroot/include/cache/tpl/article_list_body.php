<!DOCTYPE html>
<html lang="zh-cn">
<head>
		<meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="renderer" content="webkit">
	<!--<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">-->
	<meta name="Keywords" content="瓯宝，瓯宝官网，物联网，智能家居，智能插座，智能遥控器，智能开关" />
	<meta name="description" content="瓯宝安防科技股份有限公司，始创于1987年，致力于不断提升智能化处理技术和生物识别技术在门控行业的应用，面向全球提供智能门控、专业的行业解决方案与优质的服务，为客户持续创造更大价值" />
	<title>Loyalty</title>
	<link rel="shortcut icon" href="/skin/img/favicon.ico" type="image/x-icon" />
	<link rel="stylesheet" href="skin/css/bootstrap.min.css"><link rel="stylesheet" href="css/non-responsive.css">
	<link rel="stylesheet" href="skin/css/non-responsive.css">
	<link rel="stylesheet" href="skin/css/style.css">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
     <!--<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>-->
     <script src="skin/js/jquery.min.js"></script>
     <script src="skin/js/respond.min.js"></script>
     <script src="skin/js/jquery-migrate-1.2.1.min.js"></script>
	 <script src="skin/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="skin/css/style.css">
    <link rel="stylesheet" href="skin/css/about.css">
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=56vnitTNRp6WwAGFpEu21p4p"></script>
    <script src="skin/js/style.js"></script>

</head>
<body>

<nav class="navbar-fixed-top">
<nav class="top-header">
	<div class="container">
        <div class="row">
            <div class="col-xs-5  left_top" >
                <a href="#"><img src="skin/img/logo.png" alt=""></a>
                <!--<h3>Smart Home Leading Brand</h3>-->
            </div>
            <div class="col-xs-7 top-header-right">
				  <!--<span>Welcome!</span>-->
				  <span class="Welcome"><img src="skin/img/Welcome.png"></span>
				  <?php 
				  if(!$_SESSION['wUseID']){
				  ?>
                  <a href="http://<?php echo syExt('REG_URL');?>/?l=en-us">Login</a>
                  <span>|</span>
                  <a href="http://<?php echo syExt('REG_URL');?>/index.php/Login/?l=en-us">Register</a>
				  <?php } else{?>
				  			<a href="http://<?php echo syExt('REG_URL');?>/index.php/User/?l=en-us" class="username"><?php echo $_SESSION['wUseID']; ?></a>
						    <a href="http://<?php echo syExt('REG_URL');?>/index.php/User/out/?l=en-us" class="logout">Logout</a>
				  <?php }?>
		    	  <a class="btn-sm langw" href="http://<?php echo syExt('HOST_URL');?>/?l=zh-cn">中 文</a>
	              <a class="btn-sm" href="http://<?php echo syExt('HOST_ENURL');?>/?l=en-us">E N</a>
            </div>
        </div>
	</div>
</nav>

<nav class="top-header-tow">
    <div class="container" style="clear:both;">
        <div class="row" >
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
            <div class="col-xs-12"  style="padding:0;">
                <ul>
	                 <li class="dropdown"><a  href="http://<?php echo syExt('HOST_ENURL');?>/?l=en-us">Home</a></li>
			         <?php $vn=0;$tablev=syClass("syModel")->findSql("select tid,molds,pid,classname,gourl,litpic,title,keywords,description,orders,mrank,htmldir,htmlfile,mshow from oubao_classtype where  mshow='1' and pid=0  order by orders desc,tid limit 7");foreach($tablev as $v){ $v["tid_leafid"]=$sy_class_type->leafid($v["tid"]);$v["n"]=$vn=$vn+1; $v["classname"]=stripslashes($v["classname"]);$v["description"]=stripslashes($v["description"]); $v["url"]=html_url("classtype",$v); ?>
			         <li class="dropdown" ><a href="<?php echo $v['url'] ?>" <?php if($type['tid']==$v['tid']){ ?> class="active"<?php } ?>><?php echo $v['classname'] ?></a></li>
			         <?php } ?>
                </ul>
            </div>
        </div>
    </div>
</nav>
</nav>
<div style="clear:both;"></div>
<div class="about">
    <div class="pic">

    </div>
    <div class="about-content">
       <div class="container">
        <div class="head">
            <h2>Company Profile</h2>
        </div>
        <div class="about-content-body">
			<?php echo $type['body'] ?>
        </div>
    </div>
 </div>
 
 <div class="about-connect">
     <div class="container">
         <div class="head">
             <h2>Contact us</h2>
         </div>
         <div class="row">
             <div class="col-xs-6">
             	<div class="contact-img">
 					<img src="/skin/img/contact-img.png">
				</div>
             </div>
             <div class="col-xs-6" style="padding-left:0;padding-top:20px;">
        
                    <!--百度地图容器-->
                    <div style="height: 260px;width:480px; border: #ccc solid 1px; font-size: 12px;padding:0;"id="map">
                    </div>
              
             </div>
         </div>
     </div>
 </div>
 
</div>


<div style="clear:both"></div>
<div class="footer-top">
	<div class="container"  style="text-align:center;">
        <div class="col-xs-8" >
            <ul>
                <li><a class="main-a" href="http://<?php echo syExt('HOST_ENURL');?>/index.php?c=article&a=type&tid=24">Solution</a>
                    <ul class="child-ul">
                        <li><a href="#">Smart Home</a></li>
                        <li><a href="#">Smart Hotel</a></li>
                        <li><a href="#">Smart Office</a></li>
                        <li><a href="#">Smart Community</a></li>
                    </ul>
                </li>
                <li><a class="main-a" href="http://<?php echo syExt('HOST_ENURL');?>/index.php?c=product&a=type&tid=25">Download App</a>
                    <ul class="child-ul">
                        <li><a href="#">IOS</a></li>
                        <li><a href="#">Android</a></li>
                    </ul>
                </li>
                <!--<li><a class="main-a" href="#">技术支持</a>
                    <ul class="child-ul">
                        <li><a href="#">维修手册</a></li>
                        <li><a href="#">疑难杂症</a></li>
                    </ul>
                </li>-->
                <li><a class="main-a" href="http://<?php echo syExt('HOST_ENURL');?>/index.php?c=article&a=type&tid=26">Join Us</a>
                    <ul class="child-ul">
                        <li><a href="#">Requirements</a></li>
                        <li><a href="#">Leave a Message</a></li>
                    </ul>
                </li>
                <li><a class="main-a" href="http://<?php echo syExt('HOST_ENURL');?>/index.php?c=article&a=type&tid=27">About Us</a>
                    <ul class="child-ul">
                        <li><a href="javascript:void(0);">Company Profile</a></li>
                        <li class="top" style="display:block;"><a href="javascript:void(0)" >Services</a></li>
                    </ul>
                </li>
            </ul>
        </div>
		<div class="col-xs-4 tonline">
			<div class="footer-btn">
	            <button type="button" class="btn btn-danger">
	                	Hotline
	            </button>
			</div>
            <h1 style="color:#060001;">0755-23016026</h1>
            <p>Working Hours: Monday to Friday 8:00-19:30 (Except holidays)</p>
        </div>
    </div>
</div>
<footer id="footer">
	<div class="container">
		<p style="color:#343434;">Shenzhen Loyalty Technology Co., Ltd.</p>
		<p style="color:#a4a5a6 !important;">Loyalty Technology © copyright Guangdong ICP for 15056806-1  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Address:Room 410,Building B,NO.1 Block, Mingyou Exhibition Center,Baoyuan Road,Xixiang Subdistrict,Baoan District,Shenzhen City,Guangdong Province.</p>
	</div>
</footer>
<script type="text/javascript">
	// //设置垂直居中
	// $('.carousel-control').css('line-height', $('.carousel-inner img').height() + 'px');
	// $(window).resize(function () {
	// 	var $height = $('.carousel-inner img').eq(0).height() || 
	// 				  $('.carousel-inner img').eq(1).height() || 
	// 				  $('.carousel-inner img').eq(2).height();
	// 	$('.carousel-control').css('line-height', $height + 'px');
	// });

	//设置文字垂直居中，谷歌浏览器加载图片的顺序问题，导致高度无法获取
	$(window).load(function () {
		$('.text').eq(0).css('margin-top', ($('.auto').eq(0).height() - $('.text').eq(0).height()) / 2 + 'px');
	});
	

	$(window).resize(function () {
		$('.text').eq(0).css('margin-top', ($('.auto').eq(0).height() - $('.text').eq(0).height()) / 2 + 'px');
	});

	$(window).load(function () {
		$('.text').eq(1).css('margin-top', ($('.auto').eq(1).height() - $('.text').eq(1).height()) / 2 + 'px');
	});

	$(window).resize(function () {
		$('.text').eq(1).css('margin-top', ($('.auto').eq(1).height() - $('.text').eq(1).height()) / 2 + 'px');
	});

</script>
<script type="text/javascript">
        //创建和初始化地图函数：
        function initMap() {
            createMap(); //创建地图
            setMapEvent(); //设置地图事件
            addMapControl(); //向地图添加控件
            addMapOverlay(); //向地图添加覆盖物
        }
        function createMap() {
            map = new BMap.Map("map");
            map.centerAndZoom(new BMap.Point(113.872544, 22.574003), 20);
        }
        function setMapEvent() {
            map.enableScrollWheelZoom();
            map.enableKeyboard();
            map.enableDragging();
            map.enableDoubleClickZoom()
        }
        function addClickHandler(target, window) {
            target.addEventListener("click", function () {
                target.openInfoWindow(window);
            });
        }
        function addMapOverlay() {
            var markers = [
        { content: "深圳市宝安区西乡街道宝源路名优工业产品展示采购中心B座一区410", title: "来诚科技", imageOffset: { width: 0, height: 3 }, position: { lat: 22.574003, lng: 113.872544} }
      ];
            for (var index = 0; index < markers.length; index++) {
                var point = new BMap.Point(markers[index].position.lng, markers[index].position.lat);
                var marker = new BMap.Marker(point, { icon: new BMap.Icon("http://api.map.baidu.com/lbsapi/createmap//images/icon.png", new BMap.Size(20, 25), {
                    imageOffset: new BMap.Size(markers[index].imageOffset.width, markers[index].imageOffset.height)
                })
                });
                var label = new BMap.Label(markers[index].title, { offset: new BMap.Size(25, 5) });
                var opts = {
                    width: 200,
                    title: markers[index].title,
                    enableMessage: false
                };
                var infoWindow = new BMap.InfoWindow(markers[index].content, opts);
                marker.setLabel(label);
                addClickHandler(marker, infoWindow);
                map.addOverlay(marker);
            };
        }
        //向地图添加控件
        function addMapControl() {
            var scaleControl = new BMap.ScaleControl({ anchor: BMAP_ANCHOR_BOTTOM_LEFT });
            scaleControl.setUnit(BMAP_UNIT_IMPERIAL);
            map.addControl(scaleControl);
            var navControl = new BMap.NavigationControl({ anchor: BMAP_ANCHOR_TOP_LEFT, type: BMAP_NAVIGATION_CONTROL_LARGE });
            map.addControl(navControl);
            var overviewControl = new BMap.OverviewMapControl({ anchor: BMAP_ANCHOR_BOTTOM_RIGHT, isOpen: true });
            map.addControl(overviewControl);
        }
        var map;
        initMap();

    
    
	// //设置垂直居中
	// $('.carousel-control').css('line-height', $('.carousel-inner img').height() + 'px');
	// $(window).resize(function () {
	// 	var $height = $('.carousel-inner img').eq(0).height() || 
	// 				  $('.carousel-inner img').eq(1).height() || 
	// 				  $('.carousel-inner img').eq(2).height();
	// 	$('.carousel-control').css('line-height', $height + 'px');
	// });

	//设置文字垂直居中，谷歌浏览器加载图片的顺序问题，导致高度无法获取
	$(window).load(function () {
		$('.text').eq(0).css('margin-top', ($('.auto').eq(0).height() - $('.text').eq(0).height()) / 2 + 'px');
	});
	

	$(window).resize(function () {
		$('.text').eq(0).css('margin-top', ($('.auto').eq(0).height() - $('.text').eq(0).height()) / 2 + 'px');
	});

	$(window).load(function () {
		$('.text').eq(1).css('margin-top', ($('.auto').eq(1).height() - $('.text').eq(1).height()) / 2 + 'px');
	});

	$(window).resize(function () {
		$('.text').eq(1).css('margin-top', ($('.auto').eq(1).height() - $('.text').eq(1).height()) / 2 + 'px');
	});

</script>
</body>
</html>