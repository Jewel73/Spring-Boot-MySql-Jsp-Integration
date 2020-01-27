<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
	
	.yellow-square {
	text-align:center;
  background-color: #C0C0C0;
  width: 1000px;
  height: 400px;
  margin: 0 auto;
}
.table-t{
	margin: 0 auto;
	font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
  background-color: #808080;'
}
  
}
h3{
	text-align:center;
	color:red;
}
		
		
</style>
</head>
<body>
		<div class="yellow-square">
			<i><h3>Student Table</h3></i>
			<a href="form"><h3><b>Add Student</b></h3></a>
			<table border="1" class="table-t">
				<thead>
					<tr>
						<th>Student Id</th>
						<th>Student Name</th>
						<th>Student Roll</th>
						<th>Action</th>
					
					</tr>
				</thead>
				<tbody>
					<c:forEach var="student" items="${studentList }">
						<tr>
							<td>${student.id }</td>
							<td>${student.name }</td>
							<td>${student.roll }</td>
							<td><a href="/edit?id=${student.id}">Edit</a>&nbsp; 
							<a href="/delete?id=${student.id}">Delete</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
</body>
</html>