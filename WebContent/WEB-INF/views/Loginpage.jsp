<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

<style>
.bg{
 
 width:100%;
 height:100vh;

}
.form-container{
	
	border:1px solid #fff;
	padding: 10px 10px 20px 40px;
	margin-top:5vh;
	width :120%;
	-webkit-box-shadow: -4px 0px 32px 12px rgba(0,0,0,0.68);
-moz-box-shadow: -4px 0px 32px 12px rgba(0,0,0,0.68);
box-shadow: -4px 0px 32px 12px rgba(0,0,0,0.68);

}

</style>
</head>

<body>

<nav class="navbar navbar-expand-sm navbar-dark bg-dark">
<div class="container">
<a href="#" class="navbar-brand">Accumed</a>

<button class="navbar-toggler" data-toggle="collapse" data-target="#navbaraid">
<span class="navbar-toggler-icon"></span>
</button>

<div class="collapse navbar-collapse" id="navbaraid">
<ul class="navbar-nav text-right">

<li class="nav-items">
<a href="./" class="nav-link"><font color="white">Sign-In</font></a>
</li>
<li class="nav-items">
<a href="./Registration" class="nav-link" >Registration Page</a>
</li>


</ul>
</div>

 </div>
</nav>
<h1>${msg}</h1>
<div class="container-fluid bg">
	<div class="row">
	<div class="col-md-4 col-sm-4 col-xs-12"></div>
	
	<div class="col-md-4 col-sm-4 col-xs-12">
	
	<form action="loginpass" class="form-container">
	<h1>Login Form</h1>
	<div class="form-group">
	<label for="phone">Phone</label>
	<input type="text" id="phone" name="phone"  class="form-control" value="9121094369" required>
	
	</div>
	
	<div class="form-group">
	<label for="password">Password</label>
	<input type="password" id="password" name="password"  class="form-control" value="123456" required>
	</div>
	
	<input type="submit" name="Submit" class="btn btn-success ">
	<a href="Registration">Register Here</a>
	</form>
	
	</div>
	<div class="col-md-4 col-sm-4 col-xs-12"></div>
	</div>
</div>
</body>
</html>