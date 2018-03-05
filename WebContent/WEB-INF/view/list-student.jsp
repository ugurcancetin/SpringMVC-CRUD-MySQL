<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
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
		  <h1>Ogrenci Sistemine Hosgeldiniz...</h1>
		  <p><a class="btn btn-primary btn-lg" onclick="window.location.href='showStudentForm'; return false;" type="button" role="button">Ogrenci Ekle</a></p>
		</div>
		<div>
			<table class="table table-striped" >
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email Address</th>
				</tr>
				
				<c:forEach var="tempStudent" items="${students}">
					<tr>
						<td>${tempStudent.firstName}</td>
						<td>${tempStudent.lastName}</td>
						<td>${tempStudent.email}</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>


</body>
</html>