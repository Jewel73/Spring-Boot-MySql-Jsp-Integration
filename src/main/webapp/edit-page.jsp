	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
.yellow-square{
	margin: 0 auto;
	font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
  background-color: white;'
}
h1{
margin-left: 200px;
}

</style>

</head>
<h1>Edit Student Data</h1>

<body class="table-t">
	<div class="yellow-square">
	
	<form:form method="POST" action="process" modelAttribute="student">
		 <form:input type="hidden" path="id"/><br>
		Student Name: <form:input path="name" /><br>
		Student Roll: <form:input path="roll"/><br>
		<input type="submit" value="Submit">
	</form:form>
	
	</div>
</body>
</html>