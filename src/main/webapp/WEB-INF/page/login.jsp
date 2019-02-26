<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Login</title>
<link rel="stylesheet" type="text/css"
	href='<c:url value="/css/bootstrap.min.css" />' />
<style>
fieldset {
	display: block;
	margin-left: 2px;
	margin-right: 2px;
	padding-top: 0.35em;
	padding-bottom: 0.625em;
	padding-left: 0.75em;
	padding-right: 0.75em;
	border: 2px groove(internal value);
}
</style>
</head>
<body>
	

	<div class="container">

		<div class="row">

			<c:if test="${not empty SPRING_SECURITY_LAST_EXCEPTION}">
				<div class="col-md-6 col-md-offset-3">
					<c:out value="" />
				</div>
			</c:if>

			<div class="col-md-6 col-md-offset-3">
       <br>
       <br>
       <br>
  
				<div class="panel panel-primary">
					<center>
						<img src='<c:url value="/img/ar.jpg"  />' />
					</center>

					<form:form cssClass="form" action="/login" method="POST">
						<div class="row">
							<div class="col-xs-12">
								<div class="col-xs-3" style="text-align: right">
									<label for="username">Username</label>
								</div>
								<div class="col-xs-6">
									<input type="text" class="form-control" id="username"
										name="username" />
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-xs-12">
								<br>
								<div class="col-xs-3" style="text-align: right">
									<label for="password">Password</label>
								</div>
								<div class="col-xs-6">
									<input type="password" class="form-control" id="password"
										name="password" />
								</div>
							</div>
						</div>

						<div class="row">
							<div align="center">
								<br>
								 <input type="submit" class="btn btn-success" value="Login" /> 
								<input type="reset" class="btn btn-danger" value="Cancel" />
							</div>
						</div>
					</form:form>
					<br>
				</div>
			</div>
		</div>
		
	</div>
</body>
</html>