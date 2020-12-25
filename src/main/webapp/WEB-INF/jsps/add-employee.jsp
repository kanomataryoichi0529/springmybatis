<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html> 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Add Employee</h1>
	<s:form modelAttribute="employee" action="saveProcess">
	<p class="error">${errorMessage}</p>
	
		<input type = "hidden" value = "${employee.hobbies}" id="hiddenTxt"/>
		<s:hidden path="id" />
		
		<table>
			<tr>
				<td>Name:</td>
				<td><s:input path="fullname" size="50" /></td>
				<td><s:errors path="fullname" element="div" cssClass="error" /></td>
			</tr>
			<tr>
				<td>email:</td>
				<td><s:input path="email" size="50" /></td>
				<td><s:errors path="email" element="div" cssClass="error" /></td>
			</tr>
			<tr>
				<td>gender:</td>
				<td><s:radiobutton path="gender" value="Male" />Male <s:radiobutton
						path="gender" value="Female" />Female</td>
				<td><s:errors path="gender" element="div" cssClass="error" /></td>
			</tr>
			<tr>
				<td>hobbies:</td>
				<td><s:checkbox path="hobbies" value="Sports" />Sports
				<s:checkbox path="hobbies" value="Books" />Books
				<s:checkbox path="hobbies" value="Swimming" />Swimming
				<s:checkbox path="hobbies" value="Cycling" />Cycling</td>
				<td><s:errors path="hobbies" element="div" cssClass="error" /></td>
			</tr>
			<tr>
				<td>country:</td>
				<td><s:select path="country">
					<s:option value="Japan">Japan</s:option>
					<s:option value="America">America</s:option>
					<s:option value="China">China</s:option>
					<s:option value="China">Other</s:option>
					</s:select>
					<td><s:errors path="country" element="div" cssClass="error" /></td>
			</tr>
			<tr>
			<td>Address:</td>
			<td><s:textarea path="address"/></td>
			</tr>
		</table>
		
		<input type="submit" value="Save Employee" />
		
	</s:form>
	
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