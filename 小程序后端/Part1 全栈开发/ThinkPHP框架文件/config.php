<?php
return array(
	//'配置项'=>'配置值'
	'DB_TYPE'=>'mysql',     // 数据库类型
	'DB_HOST'=>'127.0.0.1', //localhost地址
	'DB_NAME'=>'news',      //数据库名字
	'DB_USER'=>'news_admin',//账号名
	'DB_PWD'=>'123456',     //密码
	'DB_PORT'=>3306,        //端口
	'DB_PARAMS'=>array(),
	'DB_CHARSET'=>'utf8',   //编码格式
	'DB_DEBUG'=>TRUE,       //允许调试
    'MODULE_ALLOW_LIST'    =>    array('Home'),
    'DEFAULT_MODULE'       =>    'Home',
    'DEFAULT_CONTROLLER' => 'Index', // 默认控制器名称
);