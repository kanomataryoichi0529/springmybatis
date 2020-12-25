<?xml version="1.0" encoding="UTF-8" ?>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<style type="text/css">
.error{
	color: #ff0000;
}
td{
	width: 300px;
}
</style>
<title>Search Employees</title>
</head>
<body>
	<h1>Search Employees</h1>
	<div>
<hr />
	<form:form modelAttribute="employeesModel">
	<tr>
	<td><form:input path="vagueField" /></td>
		<td><input type="submit" value="search" /></td>
		<td>&nbsp;</td>
		<form:errors path="vagueField" element="div" cssClass="error" />
	</tr>
	<!-- 
</form:form>
</div>
<c:if test="${productList.size() > 0}">
		<table border="1">
		<tr><th>作品名</th><th>出版年</th><th>作者名</th></tr>
				<c:forEach var="pro" items="${productList}">
							<tr>
								<td><c:out value="${pro.product_name}" /></td>
								<td><c:out value="${pro.publication_year}" /></td>
								<td><c:out value="${(pro.aut).author_name}" /></td>
							</tr>
					</c:forEach> 
			</table>
	</c:if>
 -->
</body>
</html>