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
    <link rel="stylesheet" href="skin/css/products.css">
     <script type="text/javascript" src="skin/js/products.js"></script>
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
<div class="products">
	<div class="container top">
		<div class="row">
			 <div class="col-xs-8 left">
				<div class="row">
					<a href="http://<?php echo syExt('HOST_ENURL');?>/index.php?c=channel&molds=goods&id=12">
						<div class="col-xs-12 light">
								<img src="/skin/img/light.png" alt="">
								<h2>Colorful Light</h2>
								<!--<p>给您一个多彩的世界</P>-->
						</div>
					</a>			
					<a href="http://<?php echo syExt('HOST_ENURL');?>/index.php?c=channel&molds=goods&id=4">		
						<div class="col-xs-6 remote">
							    <img src="/skin/img/remote.png" alt="">
								<h2>Smart Remote</h2>
								<!--<p class="p1">极致的遥控体验</P>
								<p class="p2">简单操作一目了然</P>-->
						</div>
					</a>
				   <a href="http://<?php echo syExt('HOST_ENURL');?>/index.php?c=channel&molds=goods&id=5">										
						<div class="col-xs-6 web">
								<img src="/skin/img/Smart Outlet.png" alt="">
								<h2>Smart Outlet</h2>
								<!--<p>家庭安全的守护者</P>-->
						</div>
				   </a>					
				</div>
			</div>
			<a href="http://<?php echo syExt('HOST_ENURL');?>/index.php?c=channel&molds=goods&id=10">	
			<div class="col-xs-4 closer">
					<img src="/skin/img/closer.png" alt="">
					<h2>Electric Door Closer</h2>
					<!--<p>安全家居好帮手</P>-->
			</div>
	       </a>			
	</div>
	</div>
</div>
<div class="products-more" >
    <div class="container">
        <div class="head">
	        <h2>More Products</h2>
        </div>
        <div class="row">
            <div class="col-xs-12">
                <ul class="pro">
                	<?php foreach( $lists as $v){ ?>
						<?php if($v['id']!=4&&$v['id']!=5&&$v['id']!=10&&$v['id']!=12){ ?>
	                     <li>
	                     <a href="<?php echo $v['url'] ?>"><img src="<?php echo $v['simg'] ?>" alt="<?php echo $v['title'] ?>">
	                     <p class="img-word"><?php echo $v['title'] ?></p>
	                     </a>
	                    </li>
						<?php } ?>
					<?php } ?>
                </ul>
            </div>
			<div class="pages">
				<ul>
		      	 <?php echo $pages ?>
			   </ul>
		    </div>
        </div>
    </div>
</div>
<div class="clear-none"></div>
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
</body>
</html>