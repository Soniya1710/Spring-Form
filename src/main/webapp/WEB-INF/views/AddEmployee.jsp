<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3>Welcome to SkillMapper WebPage</h3>

<c:url var="addEmployee" value="/employee/register"></c:url>

<form:form action="${addEmployee}" modelAttribute="employee">
<table>
	<tr>
	<td>EmployeeId</td>
    <td><form:input path = "emp_id" /></td>
    </tr>
    
    <tr>
	<td>EmployeeName</td>
    <td><form:input path = "emp_name" /></td>
    </tr>
     <tr>
	<td>EmployeePassword</td>
    <td><form:input path = "emp_password" /></td>
    </tr>
     <tr>
	<td>EmployeeContact</td>
    <td><form:input path = "emp_contact" /></td>
    </tr>
     <tr>
	<td>EmployeeMail</td>
    <td><form:input path = "emp_email" /></td>
    </tr>
    <tr>
	<td>EmployeeRole</td>
    <td><form:input path = "emp_role" /></td>
    </tr>
     <tr>
     <td>Gender :</td>
        <td>
            <form:radiobutton path="gender" value="M" label="M" /> 
            <form:radiobutton path="gender" value="F" label="F" />
        </td>
    </tr>
    <tr>
	<td>EmployeeQualification</td>
    <td><form:input path = "qualification" /></td>
    </tr>
   
    
      <tr>
        <td colspan="2"><input type="submit" value="Register"></td>
    </tr>
    
    
</table>
</form:form>

<c:url var="Viewemployee" value="/employee/view"></c:url>
<form:form action="${Viewemployee}" method="get">
<input type="submit" value="View all employee Details"/>
</form:form>

</body>
</html>