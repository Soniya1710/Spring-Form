<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3>Employee Details</h3>
<c:url var="employeeRegister" value="/employee/view"></c:url>
<form:form action="${addEmployee}" modelAttribute="employee">

<%-- <c:if test="${!empty list}"> --%>
	<table border="2">
	<tr>
		<th>Employee ID</th>
		<th>Employee Name</th>
		<th>PASSWORD</th>
		<th>CONTACT</th>
		<th>MAIL</th>
		<th>ROLE</th>
		<th>GENDER</th>
		<th>QUALIFICATION</th>
		
	</tr>
	<c:forEach items="${list}" var="list">
	<tr>
			<td>${list.emp_id}</td>
			<td>${list.emp_name}</td>
			<td>${list.emp_password}</td>
			<td>${list.emp_contact}</td>
			<td>${list.emp_email}</td>
			<td>${list.emp_role}</td>
			<td>${list.gender}</td>
			<td>${list.qualification}</td>
			
			 <td><a href="<c:url value='/employee/edit/${list.emp_id}'/>">Edit</a>
			<td><a href="<c:url value='/employee/delete/${list.emp_id}'/>">Delete</a>
 	</tr>
	</c:forEach>
	</table>
</form:form>
</body>
</html>