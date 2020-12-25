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
.error{
	color: #ff0000;
	}
</style>
<title>Regist Employee</title>
</head>
<body>
	
	<h1>Regist Employee</h1>
	<hr />
	<p>
		<a href="/springmybatis/">Return Index</a>
	</p>
	<hr />
	<form:form modelAttribute="employee">
	
		<input type = "hidden" value = "${employee.hobbies}" id="hiddenTxt"/>
		<form:hidden path="id" />
		
		<table>
			<tr>
				<td>Name:</td>
				<td><form:input path="fullname" size="50" /></td>
				<td><form:errors path="fullname" element="div" cssClass="error" /></td>
			</tr>
			<tr>
				<td>email:</td>
				<td><form:input path="email" size="50" /></td>
				<td><form:errors path="email" element="div" cssClass="error" /></td>
			</tr>
			<tr>
				<td>gender:</td>
				<td><form:radiobutton path="gender" value="Male" />Male <form:radiobutton
						path="gender" value="Female" />Female</td>
				<td><form:errors path="gender" element="div" cssClass="error" /></td>
			</tr>
			<tr>
				<td>hobbies:</td>
				<td><form:checkbox path="hobbies" value="Sports" />Sports
				<form:checkbox path="hobbies" value="Books" />Books
				<form:checkbox path="hobbies" value="Swimming" />Swimming
				<form:checkbox path="hobbies" value="Cycling" />Cycling</td>
				<td><form:errors path="hobbies" element="div" cssClass="error" /></td>
			</tr>
			<tr>
				<td>country:</td>
				<td><form:select path="country">
					<form:option value="Japan">Japan</form:option>
					<form:option value="America">America</form:option>
					<form:option value="China">China</form:option>
					<form:option value="China">Other</form:option>
					</form:select>
					<td><form:errors path="country" element="div" cssClass="error" /></td>
				</td>
			</tr>
			<tr>
			<td>Address:</td>
			<td><form:textarea path="address"/></td>
			</tr>
		</table>
	<td colspan="3">
	<input type="submit" value="Regist" name="regist"/>
	</td>
	</form:form>
	<p class="error">${errorMessage}</p>
	
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script>
	
		$(document).ready(function(){
			
			var hobbies = $("#hiddenTxt").val().split(",");
			var $checkboxes = $("input[type=checkbox]");
			$checkboxes.each(function(idx, element){
				
				if(hobbies.indexOf(element.value)!= -1){
					element.setAttribute("checked", "checked");
				}else{
					element.removeAttribute("checked");
				}
				
			});
			
		});
	
	</script>
	
</body>
</html>


	