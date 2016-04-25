<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta charset="utf-8" />
    <title>JEEWX微信企业号平台</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
    <script type="text/javascript" src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
    <!-- bootstrap & fontawesome -->
    <link rel="stylesheet" href="http://demo.jeewx.com/qywx/plug-in/ace/css/bootstrap.css" />
    <link rel="stylesheet" href="/static/font-awesome/css/font-awesome.css" />
    <link rel="stylesheet" type="text/css" href="http://demo.jeewx.com/qywx/plug-in/accordion/css/accordion.css">
    <!-- text fonts -->
    <link rel="stylesheet" href="/static/css/fonts.css" />

    <link rel="stylesheet" href="http://demo.jeewx.com/qywx/plug-in/ace/css/jquery-ui.css" />
    <!-- ace styles -->
    <link rel="stylesheet" href="http://demo.jeewx.com/qywx/plug-in/ace/css/ace.css" class="ace-main-stylesheet" id="main-ace-style" />
    <!--[if lte IE 9]>
    <link rel="stylesheet" href="http://demo.jeewx.com/qywx/plug-in/ace/css/ace-part2.css" class="ace-main-stylesheet" />
    <![endif]-->

    <!--[if lte IE 9]>
    <link rel="stylesheet" href="http://demo.jeewx.com/qywx/plug-in/ace/css/ace-ie.css" />
    <![endif]-->
    <!-- ace settings handler -->
    <script src="http://demo.jeewx.com/qywx/plug-in/ace/js/ace-extra.js"></script>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

    <!--[if lte IE 8]>
    <script src="http://demo.jeewx.com/qywx/plug-in/ace/js/html5shiv.js"></script>
    <script src="http://demo.jeewx.com/qywx/plug-in/ace/js/respond.js"></script>
    <![endif]-->

</head>
<body class="login-layout light-login">
<div class="main-container">
    <div class="main-content">
        <div class="row">
            <div class="col-sm-10 col-sm-offset-1">
                <div class="login-container">
                    <div class="center">
                        <h1 id="id-text2" class="grey">
                            <i class="ace-icon fa fa-leaf green"></i>
                            JEEWX微信企业号平台
                        </h1>
                        <h4 class="blue" id="id-company-text">www.jeewx.com</h4>
                    </div>
                    <div class="space-6"></div>
                    <div class="position-relative">
                        <div id="login-box" class="login-box visible widget-box no-border">
                            <div class="widget-body">
                                <form id="loinForm" class="form-horizontal"  check="loginController.do?checkuser"  role="form" action="loginController.do?login"  method="post">
                                    <div class="widget-main">
                                        <div class="alert alert-warning alert-dismissible" role="alert" id="errMsgContiner">
                                            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                            <div id="showErrMsg"></div>
                                        </div>
                                        <h4 class="header blue lighter bigger">
                                            <i class="ace-icon fa fa-coffee green"></i>
                                            用户登录
                                        </h4>
                                        <div class="space-6"></div>
                                        <label class="block clearfix">
								<span class="block input-icon input-icon-right">
									<input type="text"  name="userName" class="form-control" placeholder="请输入用户名"  id="userName" value="ceshi"/>
									<i class="ace-icon fa fa-user"></i>
								</span>
                                        </label>
                                        <label class="block clearfix">
								<span class="block input-icon input-icon-right">
									<input type="password" name="password" class="form-control" placeholder="请输入密码" id="password" value="123456"/>
									<i class="ace-icon fa fa-lock"></i>
								</span>
                                        </label>
                                        <label class="block clearfix">
                                            <div class="input-group">
                                                <input type="text" style="width:150px" name="randCode" class="form-control" placeholder="请输入验证码"  id="randCode" onkeydown="randCodeKeyDown()"/>
                                                <span class="input-group-addon" style="padding: 0px;"><img id="randCodeImage" src="randCodeImage"  /></span>
                                            </div>
                                        </label>
                                        <div class="space"></div>
                                        <div class="clearfix">
                                            <label class="inline">
                                                <input type="checkbox" class="ace" id="on_off"  name="remember" value="yes"/>
                                                <span class="lbl">记住用户名</span>
                                            </label>
                                            <button type="button" id="but_login"  onclick="checkUser()" class="width-35 pull-right btn btn-sm btn-primary">
                                                <i class="ace-icon fa fa-key"></i>
                                                <span class="bigger-110" >登录</span>
                                            </button>
                                        </div>
                                        <div class="space-4"></div>

                                    </div>
                                    <div class="toolbar clearfix">
                                        <div style="float: right">
                                            <a href="#"  class="forgot-password-link">
                                                语言
                                                <i class="ace-icon fa fa-arrow-right"></i>
                                                <select name="langCode" style="padding:2px; width:80px;" id="langCode"> <option value="">---请选择--- </option> <option value="en">English </option> <option value="zh-cn" selected="selected">中文 </option></select>
                                            </a>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="center"><h4 class="blue" id="id-company-text">&copy; JEECG版权所有 v_1.0</h4></div>
                        <div class="navbar-fixed-top align-right">
                            <br />
                            &nbsp;
                            <a id="btn-login-dark" class="blue" href="#" onclick="darkStyle()">Dark</a>
                            &nbsp;
                            <span class="blue">/</span>
                            &nbsp;
                            <a id="btn-login-blur" class="blue" href="#" onclick="blurStyle()">Blur</a>
                            &nbsp;
                            <span class="blue">/</span>
                            &nbsp;
                            <a id="btn-login-light" class="blue" href="#" onclick="lightStyle()">Light</a>
                            &nbsp; &nbsp; &nbsp;
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<script src="http://demo.jeewx.com/qywx/plug-in/ace/js/bootstrap.js"></script>
<script src="http://demo.jeewx.com/qywx/plug-in/ace/js/bootbox.js"></script>

</body>
</html>