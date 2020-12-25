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
	
		<input type = "hidden" value = "${employee.hobbies}" id="hiddenTxt"/>
		<s:hidden path="id" />
		
		Employee Name:<s:input path="fullname" /><br/>
		
		Employee Email:<s:input path="email" /><br/>
		
		Gender:<s:radiobutton path="gender" value="Male"/>Male
		<s:radiobutton path="gender" value="Female"/>Female<br/>
		
		Interests:<s:checkbox path="hobbies" value="Sports"/>Sports
		<s:checkbox path="hobbies" value="Books"/>Books
		<s:checkbox path="hobbies" value="Swimming"/>Swimming
		<s:checkbox path="hobbies" value="Cycling"/>Cycling<br/>
		
		Country:<s:select path="country">
			<s:option value="Japan">Japan</s:option>
			<s:option value="America">America</s:option>
			<s:option value="China">China</s:option>
		</s:select><br/>
		
		Address:<s:textarea path="address"/><br/>
		
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