<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
  
   <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
<body>
<nav class="navbar navbar-expand-sm navbar-dark bg-dark">
<div class="container">
<a href="#" class="navbar-brand">SpringMvc-Crud</a>

<button class="navbar-toggler" data-toggle="collapse" data-target="#navbaraid">
<span class="navbar-toggler-icon"></span>
</button>

<div class="collapse navbar-collapse" id="navbaraid">
<ul class="navbar-nav text-right">

<li class="nav-items">
<a href="./addpage" class="nav-link">Add</a>
</li>
<li class="nav-items">
<a href="./viewpage" class="nav-link" ><font color="white">View</font></a>
</li>
<li class="nav-items">
<a href="./updatepage" class="nav-link" >Update</a>
</li>
<li class="nav-items">
<a href="./deletepage" class="nav-link" >Delete</a>
</li>

</ul>
<form class="navbar-form navbar-left" action="search" method="get">
      <div class="input-group">
        <input type="text" class="form-control" placeholder="Search" name="keyword" required>
        <div class="input-group-btn">
          <button class="btn btn-default" type="submit">
            <i class="glyphicon glyphicon-search"></i>
          </button>
        </div>
      </div>
    </form>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="logout"><span class="glyphicon glyphicon-log-in"></span><font color="white"> Logout</font></a></li>
    </ul>
</div>

 </div>
</nav>

<div align = "left">	<h3>View Records</h3> </div>
	<table border="1" width="100%">
		<tr>
			<th>Name</th>
			<th>Email</th>
			<th>Phone</th>
			<th>Course</th>
			<th> </th>
			<th> </th>
			
		</tr>
		<c:forEach items="${listrecord}" var="view">
		<tr>
			<td>${view.username}</td>
			<td>${view.email}</td>
			<td>${view.phone}</td>
			<td>${view.password}</td>
			
		</tr>
		</c:forEach>
	</table>


</body>
</html>