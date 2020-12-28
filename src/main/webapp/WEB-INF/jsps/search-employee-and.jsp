<?xml version="1.0" encoding="UTF-8" ?>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<style type="text/css">
.error {
	color: #ff0000;
}

td {
	width: 300px;
}
</style>
<title>And Search Employee</title>
</head>
<body>
	<h1>And Search Employee</h1>
	<hr />
	<p>
		<a href="/springmybatis/">Return Index</a>
	</p>
	<hr />
	<div>
		<form:form modelAttribute="employee">
			<table>
				<tr>
					<td>Name:<form:input path="vagueName" /></td>
				</tr>
			<tr>
					<td>Email:<form:input path="vagueEmail" /></td>
				</tr>
				<tr>
					<td>Gender:<form:input path="vagueGender" /></td>
				</tr> 
				<tr>
					<td><input type="submit" value="Search" /></td>
				</tr>

			</table>

		</form:form>
	</div>

	<hr />
	<c:if test="${employeeList.size() > 0}">
		<div>
			<table border="1">
				<tr>
					<th>Full Name</th>
					<th>Email</th>
					<th>Gender</th>
					<th>Hobbies</th>
					<th>Country</th>
					<th>Address</th>
				</tr>

				<c:forEach items="${employeeList}" var="e">
					<tr>
						<td><c:out value="${e.fullname}" /></td>
						<td><c:out value="${e.email}" /></td>
						<td><c:out value="${e.gender}" /></td>
						<td><c:out value="${e.hobbies}" /></td>
						<td><c:out value="${e.country}" /></td>
						<td><c:out value="${e.address}" /></td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</c:if>
	<c:if test="${employeeList.size()==0}">
		<p>no data...</p>
	</c:if>

</body>
</html>