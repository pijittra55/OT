<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	
	
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Example of Bootstrap 3 Static Navbar</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href='/lib/js/fullcalendar-3.10.0/fullcalendar.min.css'
	rel='stylesheet' />
<link href='/lib/js/fullcalendar-3.10.0/fullcalendar.print.min.css'
	rel='stylesheet' media='print' />
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css">

<script src='/lib/js/fullcalendar-3.10.0/lib/moment.min.js'></script>
<script src='/lib/js/fullcalendar-3.10.0/lib/jquery.min.js'></script>
<script src='/lib/js/fullcalendar-3.10.0/lib/jquery-ui.min.js'></script>
<script src='/lib/js/fullcalendar-3.10.0/fullcalendar.min.js'></script>
<script src='/lib/js/fullcalendar-3.10.0/locale-all.js'></script>

<script  src="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" type="text/javascript"></script>
<script  src="https://cdn.datatables.net/buttons/1.5.4/css/buttons.dataTables.min.css" type="text/javascript"></script>
<script  src="https://cdn.datatables.net/select/1.2.7/css/select.dataTables.min.css" type="text/javascript"></script>
<script  src="../../extensions/Editor/css/editor.dataTables.min.css" type="text/javascript"></script>


<link rel="stylesheet" type="text/css" href="http://cdn.datatables.net/plug-ins/3cfcc339e89/integration/bootstrap/3/dataTables.bootstrap.css">


<script type="text/javascript" src="/lib/js/timepicker/src/wickedpicker.js"></script>
<link rel="stylesheet"
	href="/lib/js/timepicker/stylesheets/wickedpicker.css">
	
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style type="text/css">
.bs-example {
	margin: 20px;
}
</style>
</head>
<body bgcolor="#E6E6FA">
	<div class="bs-example">
		<nav class="navbar navbar-inverse">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" data-target="#navbarCollapse"
					data-toggle="collapse" class="navbar-toggle">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a href="/one" class="navbar-brand"> ระบบขอลง OT </a>
			</div>
			<!-- Collection of nav links and other content for toggling -->
			<div id="navbarCollapse" class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a
						href="/home">พนักงาน</a></li>
					<sec:authorize access="hasAnyRole('ADMIN')">
						<li><a href="/admin">ผู้ดูแลระบบ</a></li>
					</sec:authorize>
				</ul>
				<sec:authorize access="isAuthenticated()">
					<form:form cssClass="form" action="/logout" method="POST" id="formLogout">
						<ul class="nav navbar-nav navbar-right">
						
							<li><a href="javascript:;" onclick="document.getElementById('formLogout').submit();">Logout</a></li>
							<!--<li><a href="/logout">Logout</a></li>-->
						</ul>
					</form:form>
				</sec:authorize>
				<sec:authorize access="isAnonymous()">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="/login" class="navbar-brand"> เข้าสู่ระบบ </a></li>
					</ul>
				</sec:authorize>
			</div>
		</nav>
	</div>
</body>
</html>
