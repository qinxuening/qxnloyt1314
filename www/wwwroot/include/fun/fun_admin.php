<?php
if(!defined('APP_PATH')||!defined('DOYO_PATH')){exit('Access Denied');}
function message_a($info,$gurl,$msggo='',$time=5){
	echo '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><script src="include/js/jsmain.js" type="text/javascript"></script><link href="source/admin/template/style/admin.css" rel="stylesheet" type="text/css" />';
	if($gurl==''){echo "<script>alert('".$info."');javascript:history.go(-1);</script>";exit;}
	if($time!=0){echo '<meta http-equiv="refresh" content="'.$time.';url='.$gurl.'"><script type="text/javascript">function time(){$("#time").html(parseInt($("#time").text())-1);}setInterval("time()",1000);</script>';}
	echo "</head><body><div class='main' style='padding-top:89px;'><div class='tabmsg' style='width:400px;margin: 0 auto;'><div class='t'>".$info."</div><div class='g'>".$msggo."</div>";
	if($time!=0){echo "<div class='z'><a href='".$gurl."'><span id='time'>".$time."</span> 秒后自动跳转，如未跳转请点击此处手工跳转。</a></div>";}
	echo "</div></div></body></html>";
	exit;
}
/**
 * @author 覃雪宁
 * @param unknown $_xmlfile
 * @param unknown $_clean
 * 安卓生成文件
 */
function _set_xml_an($_xmlfile,$_clean) {


	$_fp = @fopen($_xmlfile,'w');
	if (!$_fp) {
		exit('系统错误，文件不存在！');
	}
	flock($_fp,LOCK_EX);

	$_string = "<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n";
	fwrite($_fp,$_string,strlen($_string));
	$_string = "<root>\r\n";
	fwrite($_fp,$_string,strlen($_string));
	$_string = "<apkInfo >\r\n";
	fwrite($_fp,$_string,strlen($_string));
	$_string = "\t<versionCode>{$_clean['version']}</versionCode>\r\n";
	fwrite($_fp,$_string,strlen($_string));
	$_string = "\t<versionName>{$_clean['banben']}</versionName>\r\n";
	fwrite($_fp,$_string,strlen($_string));
	$_string = "\t<minVersionCode>{$_clean['ph']}</minVersionCode>\r\n";
	fwrite($_fp,$_string,strlen($_string));
	$_string = "\t<updateInfo>{$_clean['about']}</updateInfo>\r\n";
	fwrite($_fp,$_string,strlen($_string));
	$_string = "\t<downloadUrl>{$_clean['gourl']}</downloadUrl>\r\n";
	fwrite($_fp,$_string,strlen($_string));
	$_string = "\t<fileName>O-Home.apk</fileName>\r\n";
	fwrite($_fp,$_string,strlen($_string));
	$_string = "</apkInfo>";
	fwrite($_fp,$_string,strlen($_string));
	$_string = "</root>";
	fwrite($_fp,$_string,strlen($_string));

	flock($_fp,LOCK_UN);
	fclose($_fp);
}

/**
 * @author 覃雪宁
 * @param unknown $_xmlfile
 * @param unknown $_clean
 * 苹果更新xml
 */
function _set_xml_pi($_xmlfile,$_ping) {


	$_fp = @fopen($_xmlfile,'w');
	if (!$_fp) {
		exit('系统错误，文件不存在！');
	}
	flock($_fp,LOCK_EX);

	$_string = "<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n";
	fwrite($_fp,$_string,strlen($_string));
	$_string = "<root>\r\n";
	fwrite($_fp,$_string,strlen($_string));
	$_string = "\t<versionCode>{$_ping['banben']}</versionCode>\r\n";
	fwrite($_fp,$_string,strlen($_string));
	$_string = "\t<updateInfo>{$_ping['about']}</updateInfo>\r\n";
	fwrite($_fp,$_string,strlen($_string));
	$_string = "\t<downloadUrl>{$_ping['gour']}</downloadUrl>\r\n";
	fwrite($_fp,$_string,strlen($_string));
	$_string = "</root>";
	fwrite($_fp,$_string,strlen($_string));

	flock($_fp,LOCK_UN);
	fclose($_fp);
}

function message_b($newerrors){
	foreach($newerrors as $errortxt){
		$error_txt1=$errortxt;
		foreach($error_txt1 as $msg){ 
			$error_txt=$msg;
		}
	}
	message_a($error_txt);
}
function admin_group($gid){
	$ginfo=syDB('admin_group')->find(array('gid' => $gid),null,'name');
	return $ginfo['name'];
}
function perinfo($pid){
	$perinfo=syDB('admin_per')->findAll(array('up' => $pid),null,'pid');
	foreach($perinfo as $v){
		$t.=','.$v['pid'];
	}$t=$pid.$t;
	return $t;
}
function adstype($taid){
	$adstype=syDB('adstype')->find(array('taid' => $taid));
	return $adstype['name'];
}
function linktype($taid){
	$linktype=syDB('linkstype')->find(array('taid' => $taid));
	return $linktype['name'];
}
function dykey_x($v){
	$m=strlen($v);
	if($m<7)return $v;
	$v1=substr($v,0,2);
	$v2=substr($v,-4);
	$v=$v1.str_repeat('*',$m-6).$v2;
	return $v;
}
function deleteDir($dir,$alldel=0){
	if(is_file($dir)){@unlink($dir);return true;}
	$dir=rtrim($dir,'/').'/';
	if(@rmdir($dir)==false && is_dir($dir)) {
		if($dp=@opendir($dir)) {
			while(false!==($file = readdir($dp))) {
				if($file!='.' && $file!='..') {
					if(is_dir($dir.$file)) {
						deleteDir($dir.$file);
						if($alldel==1)@rmdir($dir.$file);
					}else{
						@unlink($dir.$file);
					}
				}
			}
			@closedir($dp);
		}else{
			return false;
		}
	} 
	return true;
}
function recurse_copy($src,$dst){
    $dir = opendir($src);
    @mkdir($dst);
    while(false !== ( $file = readdir($dir)) ) {
        if (( $file != '.' ) && ( $file != '..' )) {
            if ( is_dir($src . '/' . $file) ) {
                recurse_copy($src . '/' . $file,$dst . '/' . $file);
            }
            else {
                copy($src . '/' . $file,$dst . '/' . $file);
            }
        }
    }
    closedir($dir);
}
function write_file($txt,$filename){
	$re=true;
	if(!$fp=@fopen($filename,"w"))$re=false;
	if(!@fwrite($fp,$txt))$re=false;
	@fclose($fp);
	return $re;
}