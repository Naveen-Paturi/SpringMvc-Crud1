<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<a href="./viewpage" class="nav-link" >View</a>
</li>
<li class="nav-items">
<a href="./searchpage" class="nav-link" >Search</a>
</li>

</ul>
</div>

 </div>
</nav>

<div class="container-fluid bg">
	<div class="row">
	<div class="col-md-4 col-sm-4 col-xs-12"></div>
	
	<div class="col-md-4 col-sm-4 col-xs-12">
	
	<form  action="updaterecord" class="form-container">
	<h1>Edit Record</h1>
	<div class="form-group">
	<input type="text" value="${account.phone}" name="phone" class="form-control"  readonly>
	</div>
	
	
	<div class="form-group">
	<input type="text"  value="${account.username}" name="username" class="form-control" required>
	</div>
	
	<div class="form-group">
	<input type="text" value="${account.email}" name="email" class="form-control"  required>
	</div>
	
	
	<div class="form-group">
	<input type="text"  value="${account.password}" name="password" class="form-control"  required>
	</div>
	
	<input type="submit" name="Submit" class="btn btn-success btn-block">
	
	</form>
	
	</div>
	<div class="col-md-4 col-sm-4 col-xs-12"></div>
	</div>
</div>

</body>
</html>