<!DOCTYPE html>
<html lang="zh-cn">
<head>
		<meta charset="UTF-8">
    <!--<meta http-equiv="X-UA-Compatible" content="IE=edge">-->
	<meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1" />
	<meta http-equiv="X-UA-Compatible" content="IE=9" />
	<meta name="renderer" content="webkit">
	<!--<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">-->
	<meta name="Keywords" content="深圳市来诚科技有限责任公司，来诚科技，来诚科技官网，物联网，智能家居，智能插座，智能遥控器，智能开关，平移窗，闭门器，网络摄像头，煤气报警器，水浸报警器，智能电动窗帘，七彩灯，触摸开关" />
	<meta name="description" content="深圳市来诚科技有限责任公司，专注于物联网技术的开发和应用，是一家极具创新精神的高新技术产业公司。坚持“客户诚意、团队忠诚、产品实诚、公司诚信”的创立之本，致力于智能化产品的研发、生产与销售。" />
	<title>来诚科技</title>
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

</head>
<body>

<nav class="navbar-fixed-top">
<nav class="top-header">
	<div class="container">
        <div class="row">
            <div class="col-xs-5  left_top" >
                <a href="#"><img src="/skin/img/logo.png" alt=""></a>
            </div>
            <div class="col-xs-7 top-header-right">
                  <!--<span>Welcome!</span>-->
				   <span class="Welcome"><img src="skin/img/Welcome.png"></span>
				  <?php 
				  if(!$_SESSION['wUseID']){
				  ?>
                  <a href="http://<?php echo syExt('REG_URL');?>/?l=zh-cn">登录</a>
                  <span>|</span>
                  <a href="http://<?php echo syExt('REG_URL');?>/index.php/Login/?l=zh-cn">注册</a>
				  <?php } else{?>
				  			<a href="http://<?php echo syExt('REG_URL');?>/index.php/User/?l=zh-cn" class="username"><?php echo $_SESSION['wUseID']; ?></a>
						    <a href="http://<?php echo syExt('REG_URL');?>/index.php/User/out/?l=zh-cn" class="logout">退出</a>
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
	                 <li class="dropdown"><a  href="http://<?php echo syExt('HOST_URL');?>/?l=zh-cn"><div class="main-cn">首页</div><div class="main-en">Home</div></a></li>
			         <?php $vn=0;$tablev=syClass("syModel")->findSql("select tid,molds,pid,classname,gourl,litpic,title,keywords,description,orders,mrank,htmldir,htmlfile,mshow from oubao_classtype where  mshow='1' and pid=0  order by orders desc,tid limit 7");foreach($tablev as $v){ $v["tid_leafid"]=$sy_class_type->leafid($v["tid"]);$v["n"]=$vn=$vn+1; $v["classname"]=stripslashes($v["classname"]);$v["description"]=stripslashes($v["description"]); $v["url"]=html_url("classtype",$v); ?>
			         <li class="dropdown" ><a href="<?php echo $v['url'] ?>" <?php if($type['tid']==$v['tid']){ ?> class="active"<?php } ?>><div class="main-cn"><?php echo $v['classname'] ?></div><div class="main-en"><?php echo $v['description'] ?></div></a></li>
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
            <h2>公司简介</h2>
			<h3><img src="/skin/img/Company Profile.png"></h3>
        </div>
        <div class="about-content-body">
			<?php echo $type['body'] ?>
        </div>
    </div>
 </div>
 
 <div class="about-connect">
     <div class="container">
         <div class="head">
             <h2>联系我们</h2>
			 <h3><img src="/skin/img/Contact us.png"></h3>
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
  <div class="clear-none"></div>  
</div>


<div style="clear:both"></div>
<div class="footer-top">
	<div class="container">
        <div class="col-xs-8" style="text-align:center;">
            <ul>
                <li><a class="main-a" href="http://<?php echo syExt('HOST_URL');?>/index.php?c=article&a=type&tid=24">解决方案</a>
                    <ul class="child-ul">
                        <li><a href="#">智能家庭</a></li>
                        <li><a href="#">智能酒店</a></li>
                        <li><a href="#">智能办公</a></li>
                        <li><a href="#">智能社区</a></li>
                    </ul>
                </li>
                <li><a class="main-a" href="http://<?php echo syExt('HOST_URL');?>/index.php?c=product&a=type&tid=25">APP下载</a>
                    <ul class="child-ul">
                        <li><a href="#">IOS</a></li>
                        <li><a href="#">安卓</a></li>
                    </ul>
                </li>
                <!--<li><a class="main-a" href="#">技术支持</a>
                    <ul class="child-ul">
                        <li><a href="#">维修手册</a></li>
                        <li><a href="#">疑难杂症</a></li>
                    </ul>
                </li>-->
                <li><a class="main-a" href="http://<?php echo syExt('HOST_URL');?>/index.php?c=article&a=type&tid=26">代理加盟</a>
                    <ul class="child-ul">
                        <li><a href="#">加盟条件</a></li>
                        <li><a href="#">在线留言</a></li>
                    </ul>
                </li>
                <li><a class="main-a" href="http://<?php echo syExt('HOST_URL');?>/index.php?c=article&a=type&tid=27">关于我们</a>
                    <ul class="child-ul">
                        <li><a href="javascript:void(0);">公司简介</a></li>
                        <li class="top" style="display:block;"><a href="javascript:void(0)" >服务中心</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <div class="col-xs-4 tonline">
        	<div class="footer-btn">
	            <button type="button" class="btn btn-danger">
	                	服务热线
	            </button>
			</div>
            <h1 style="color:#060001;">0755-23016026</h1>
            <p>周一至周五8：00-19：30（节假日除外）</p>
        </div>
    </div>
</div>
<footer id="footer">
	<div class="container">
		<p style="color:#343434;">深圳市来诚科技有限责任公司</p>
		<p style="color:#a4a5a6 !important;">来诚科技 © 版权所有 粤ICP备15056806号-1 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 深圳市宝安区西乡街道宝源路名优工业产品展示采购中心B座一区410</p>
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