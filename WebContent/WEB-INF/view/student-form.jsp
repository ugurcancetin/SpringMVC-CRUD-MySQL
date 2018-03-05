<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>   
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>

	
	<div class="container">
		<div class="jumbotron">
			<h1>Add New Student</h1>
		</div>
		
		<div>
			<form:form class="form-horizantal" modelAttribute="student" action="saveStudent" method="POST">
				<div class="form-group">
					<label for="adi" class="col-sm-10 control-label">Ogrenci Adi</label>
					<div>
						<form:input type="text" class="form-control" id="adi" placeholder="Adi" path="firstName"></form:input>
					</div>
				</div>
				
				<div class="form-group">
					<label for="adi" class="col-sm-10 control-label">Ogrenci Soyadi</label>
					<div>
						<form:input type="text" class="form-control" id="soyadi" placeholder="Soyadi" path="lastName"></form:input>
					</div>
				</div>
				
				<div class="form-group">
					<label for="adi" class="col-sm-10 control-label">Ogrenci Email Adresi</label>
					<div>
						<form:input type="text" class="form-control" id="email" placeholder="Email" path="email"></form:input>
					</div>
				</div>
				
			 	<div class="form-group">
					<div class="col-sm-10 ">
						<button type="submit" class="btn btn-primary">Kaydet</button>
					</div>
				</div>
			</form:form>
		</div>
		<br>
		<p>
			<a href="${pageContext.request.contextPath}/student/list">Ogrenci Listesine Geri Git</a>
		</p>
		
	</div>

</body>
</html>