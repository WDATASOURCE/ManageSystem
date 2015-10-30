<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>导入</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		
	<link rel="stylesheet" href="assets/css/fonts/fontawesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="assets/css/bootstrap.css">
	<link rel="stylesheet" href="assets/css/xenon-core.css">
	<link rel="stylesheet" href="assets/css/xenon-forms.css">
	<link rel="stylesheet" href="assets/css/xenon-components.css">
	<link rel="stylesheet" href="assets/css/xenon-skins.css">
	<link rel="stylesheet" href="assets/css/custom.css">
		
	<script src="assets/js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript">
        function fun(){       
            var s=document.form1.file.value; 
            if(s==""){
                alert("请选择文件后再上传");
                document.form1.file.focus();
                return;
            }
            show_loading_bar(100);
            document.form1.submit();
        }
	</script>
  </head>
  
  <body class="page-body">
	<div class="page-loading-overlay">
		<div class="loader-2"></div>
	</div>
	
	<div class="settings-pane">			
		<a href="#" data-toggle="settings-pane" data-animate="true">
			&times;
		</a>		
		<div class="settings-pane-inner">			
			<div class="row">			
				<div class="col-md-4">					
					<div class="user-info">						
						<div class="user-image">
								<img src="assets/images/user-2.png" class="img-responsive img-circle" />
						</div>
						
						<div class="user-details">
							
							<h3>
								${currUser.userName }						
								<!-- Available statuses: is-online, is-idle, is-busy and is-offline -->
								<span class="user-status is-online"></span>
							</h3>
							
							<p class="user-title">管理员</p>							
							<div class="user-links">
								<a href="MotifyUser" class="btn btn-primary">修改资料</a>
							</div>
							
						</div>
						
					</div>
					
				</div>
				
				<div class="col-md-8 link-blocks-env">
										
					<div class="links-block left-sep">
						<h4>
								<span>帮助</span>
						</h4>
						
						<ul class="list-unstyled">
							<li>
									<i class="fa-angle-right"></i>
									联系我们
							</li>						
						</ul>
					</div>
					
				</div>
				
			</div>
		
		</div>
		
	</div>
	
	<div class="page-container"><!-- add class "sidebar-collapsed" to close sidebar by default, "chat-visible" to make chat appear always -->		
		<!-- Add "fixed" class to make the sidebar fixed always to the browser viewport. -->
		<!-- Adding class "toggle-others" will keep only one menu item open at a time. -->
		<!-- Adding class "collapsed" collapse sidebar root elements and show only icons. -->
		<div class="sidebar-menu toggle-others fixed">			
			<div class="sidebar-menu-inner">					
				<header class="logo-env">					
					<!-- logo -->
					<div class="logo">
						<a href="Events" class="logo-expanded">
							<img src="assets/images/logo@2x.png" width="" alt="" />
						</a>
						
						<a href="Events" class="logo-collapsed">
							<img src="assets/images/logo-collapsed@2x.png" width="40" alt="" />
						</a>
					</div>					
					<!-- This will open the popup with user profile settings, you can use for any purpose, just be creative -->
					<div class="settings-icon">
						<a href="#" data-toggle="settings-pane" data-animate="true">
							<i class="fa-cog"></i>
						</a>
					</div>
					
								
				</header>
						
				
						
				<ul id="main-menu" class="main-menu">
					<!-- add class "multiple-expanded" to allow multiple submenus to open -->
					<!-- class "auto-inherit-active-class" will automatically add "active" class for parent elements who are marked already with class "active" -->
					<li>
						<a href="Events">
							<i class="fa-search"></i>
							<span class="title">搜索</span>
						</a>
					</li>
					<li>
						<a href="newStatistics">
							<i class="fa-area-chart"></i>
							<span class="title">统计</span>
						</a>
						<ul>
							<li>
								<a href="newStatistics">
									<span class="title">饼图</span>
								</a>
							</li>
							<li>
								<a href="Statistics_column">
									<span class="title">柱状图</span>
								</a>
							</li>								
						</ul>
					</li>
					<li>
						<a href="importFile">
							<i class="fa-upload"></i>
							<span class="title">导入</span>
						</a>
					</li>
				</ul>			
			</div>
			
		</div>
		
		<div class="main-content">
					
			<!-- User Info, Notifications and Menu Bar -->
			<nav class="navbar user-info-navbar" role="navigation">
				
				<!-- Left links for user info navbar -->
				<ul class="user-info-menu left-links list-inline list-unstyled">				
					<li class="hidden-sm hidden-xs">
						<a href="#" data-toggle="sidebar">
							<i class="fa-bars"></i>
						</a>
					</li>				
				</ul>
				
				
				<!-- Right links for user info navbar -->
				<ul class="user-info-menu right-links list-inline list-unstyled">										
					<li class="dropdown user-profile">
						<a href="#" data-toggle="dropdown">
							<img src="assets/images/user-4.png" alt="user-image" class="img-circle img-inline userpic-32" width="28" />
							<span>
								${currUser.userName }
								<i class="fa-angle-down"></i>
							</span>
						</a>
						
						<ul class="dropdown-menu user-profile-menu list-unstyled">
							<li>
								<a href="MotifyUser">
									<i class="fa-edit"></i>
									修改资料
								</a>
							</li>

							<li class="last">
								<a href="LogOut">
									<i class="fa-power-off"></i>
									退出
								</a>
							</li>
						</ul>
					</li>
					
				</ul>
				
			</nav>
	<div class="panel panel-default">
			<div class="panel-heading"></div>
			<div class="panel-body">
  <form  name="form1" method="POST" enctype="multipart/form-data" action="upload">
  <input type="hidden" name="name" value="import">
  File to upload: <input type="file" name="file" class="form-control"><br /> 
  <input class="btn btn-primary" type="button" onclick='fun()' value="上传">
</form>
</div>
</div>

			<footer class="main-footer sticky footer-type-3">
				
				<div class="footer-inner">			
					<div class="footer-text">
						&copy; 2015 
						<strong>Designed By</strong> 
						王子恒、罗睿、和树伟
					</div>
					
					<!-- Go to Top Link, just add rel="go-top" to any link to add this functionality -->
					<div class="go-up">					
						<a href="#" rel="go-top">
							<i class="fa-angle-up"></i>
						</a>						
					</div>
					
				</div>
				
			</footer>
		</div>
	</div>
	
	<!-- Bottom Scripts -->
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/TweenMax.min.js"></script>
	<script src="assets/js/resizeable.js"></script>
	<script src="assets/js/joinable.js"></script>
	<script src="assets/js/xenon-api.js"></script>
	<script src="assets/js/xenon-toggles.js"></script>
		<!-- JavaScripts initializations and stuff -->
	<script src="assets/js/xenon-custom.js"></script>
  </body>
</html>
