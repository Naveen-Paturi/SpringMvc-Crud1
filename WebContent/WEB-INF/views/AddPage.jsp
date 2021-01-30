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
  
   <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
.bg{
 
 width:100%;
 height:100vh;

}
.form-container{
	
	border:1px solid #fff;
	padding: 20px 10px 20px 40px;
	margin-top:5vh;
	width :150%;
	-webkit-box-shadow: -4px 0px 32px 12px rgba(0,0,0,0.68);
-moz-box-shadow: -4px 0px 32px 12px rgba(0,0,0,0.68);
box-shadow: -4px 0px 32px 12px rgba(0,0,0,0.68);

}

</style>
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
<a href="./addpage" class="nav-link"><font color="white">Add</font></a>
</li>
<li class="nav-items">
<a href="./viewpage" class="nav-link" >View</a>
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
      <li><a href="./logout"><span class="glyphicon glyphicon-log-in"></span><font color="white" > Logout</font></a></li>
    </ul>
</div>

 </div>
</nav>

<div class="container-fluid bg">
	<div class="row">
	<div class="col-md-4 col-sm-4 col-xs-12"></div>
	
	<div class="col-md-4 col-sm-4 col-xs-12">
	
	<form  action="addrecord" class="form-container">
	<h1>Add Record</h1>
	<div class="form-group">
	<input type="text"  name="username" placeholder="User Name" class="form-control" required>
	</div>
	
	<div class="form-group">
	<input type="text" name="email" class="form-control" placeholder="Email Id" required>
	</div>
	
	<div class="form-group">
	<input type="text" name="Phone" class="form-control" placeholder="Phone Number" required>
	</div>
	
	<div class="form-group">
	<input type="text"  name="password" class="form-control" placeholder="Course" required>
	</div>
	
	<input type="submit" name="Add Record" class="btn btn-success btn-block">
	
	</form>
	
	</div>
	<div class="col-md-4 col-sm-4 col-xs-12"></div>
	</div>
</div>



</body>
</html>