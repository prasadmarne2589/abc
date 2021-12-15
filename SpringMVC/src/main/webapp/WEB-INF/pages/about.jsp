<%@ page language="java" contentType="text/html"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css" integrity="sha512-1PKOgIY59xJ8Co8+NE6FZ+LOAZKjy+KY8iq0G4B3CyeY6wYHN3yt9PW0XpSriVlkMXe40PTKnXrLnZ9+fkDaog==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</head>
<body>
	<div class="container">
	<center><h2>*-Show Data Pages-*</h2></center>
	<table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Full Name</th>
      <th scope="col">Address</th>
      <th scope="col">Phone Number</th>
       <th scope="col">Action</th>
        <th scope="col">Action</th>
     
    </tr>
  </thead>
  <tbody>
				<c:forEach items="${list}" var="current">
					<tr>
					<td><c:out value="${current.id}" /></td>
						<td><c:out value="${current.name}" /></td>
						<td><c:out value="${current.address}" /></td>
						<td><c:out value="${current.phonenumber}" /></td>
						<td><a class="fas fa-pen-nib" style="font-size:40px" href="updateStudent?id=<c:out value="${current.id}" />" ></a></td>
						<td><a class="far fa-trash-alt text-danger" style="font-size:40px" href="deleteStudent?id=<c:out value="${current.id}" />"  > </a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

</body>
</html>

  
 
  
  
 <!-- <table class="table table-striped">
			<thead>
				<tr>
				<td>Id</td>
					<td>Name</td>
					<td>Address</td>
					<td>Phone Number</td>
				</tr>
			</thead>
			<tbody> --> 