<?php
return array(
    'TOKEN_ON'=>true,  // 是否开启令牌验证   
    'TOKEN_NAME'=>'__hash__',    // 令牌验证的表单隐藏字段名称   
    'TOKEN_TYPE'=>'md5',  //令牌哈希验证规则 默认为MD5
	'TOKEN_RESET'   =>    true,
	'VAR_FILTERS'=>'htmlspecialchars,stripslashes,strip_tags', //开启过滤规则
	'DB_FIELDTYPE_CHECK'=>true,  // 开启字段类型验证
	'DEFAULT_FILTER'=>'strip_tags,stripslashes,htmlspecialchars',
	'DB_TYPE' => 'mysql', //数据库类型
	'DB_HOST' => '127.0.0.1',//数据库服务器
	'DB_NAME' => 'vip',  //数据库名称
	'DB_USER' => 'root',   //数据库用户
	'DB_PWD' => '314233',  //数据库密码
	'DB_PORT' => '3306',   //端口
	'DB_PREFIX' => '',     //表前缀
	'SHOW_ERROR_MSG' => false, // 显示错误信息
	'SHOW_PAGE_TRACE' =>true,
	
	'private' => '',          //密匙
	'modulus' => '',
	'keylength' => '128',
	
	
    'public_key' => '',                //js公匙
	'public_length' => '10001',
		
	//模板替换变量
	'TMPL_PARSE_STRING' => array(
		'HOST_URL' =>'www..com',
		'REG_URL' => 'member..com',
		'HOST_ENURL' =>'eng..com',
	),
	'URL_HTML_SUFFIX'=>'', 
);
//定义过滤函数，过滤htm php 反斜杠
?>