<!DOCTYPE html>
<html lang="en">
<head>
<title>admin</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">





<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#searchtable').DataTable();
	});
</script>
<!--<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.2.0/css/bootstrap.min.css">  -->

<link rel="stylesheet"
	href="https://cdn.datatables.net/1.13.1/css/dataTables.bootstrap5.min.css">

<script
	src="https://upworks.monster/demo/downgrade/resources/views/admin/template/assets/js/widgets.js"></script>

<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script
	src="https://cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js"></script>
<script
	src="https://cdn.datatables.net/1.13.1/js/dataTables.bootstrap5.min.js"></script>

</head>
<body
	style="background: linear-gradient(109.2deg, rgb(249, 174, 240) 6.5%, rgb(139, 144, 250) 97.1%);">

	<%
	String user = (String) session.getAttribute("currentuser");

	//out.print(user);
	%>

	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a style="color: red" class="navbar-brand" href="#">Green Mart</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="adminhome.jsp">Home</a></li>
				<!--  <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Page 1 <span class="caret"></span></a>
    -->


				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">Category<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="admincategory.jsp">Manage Category</a></li>
						<li><a href="adminsubcategory.jsp">Manage Sub Category</a></li>
					</ul></li>


				<li><a href="adminproduct.jsp">Product</a></li>
				<li><a href="#">Inventory</a></li>
				<li><a href="#">Orders</a></li>
				<li><a href="adminbanner.jsp">Banner</a></li>
				<li><a href="#">Payments</a></li>
				<li><a href="admincustomers.jsp">Customers</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<!-- <li class="active"><a href="#">Home</a></li> -->
				<li><a href="#"><%=user%></a></li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">Setting <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="adminmyprofile.html">Profile</a></li>
						<li><a href="logout.jsp">Log Out</a></li>

					</ul></li>
			</ul>
		</div>
	</nav>


	<%@page import="dao.UserSignupDao,bean.UserSignup,java.util.*"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%
	List<UserSignup> list = UserSignupDao.getAllRecords();
	request.setAttribute("list", list);
	%>

	<div class="breadcrumbs">

	<div class="col-sm-12">

		<div class="page-header float-right">

			<div class="page-title">


				<ol class="breadcrumb text-right">



					<a class="btn btn-success btn-sm" href=""> <i
						class="fa fa-plus"> </i>Back

					</a>

				</ol>

			</div>
		</div>

	</div></div>
	





	<form action="" style="padding-right: 1%; padding-left: 1%;">
		<div
			style="padding: 40px; box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2); background-color: white"
			class="card">
			<div class="card-body">
<h1><b>Add Product</b></h1>
 <div class="form-group">
    <label for="exampleInputEmail1">Product Name</label>
    <input   type="text" class="form-control" id="addproduct" name="addproduct" aria-describedby="emailHelp" placeholder="Enter Product Name">

  </div>
  <div class="form-line">
    <label for="exampleInputPassword1">Current Password</label>
    <input  type="password" class="form-control" id="ecupassword" name="ecupassword" placeholder="Current Password">
  </div>
  
    <div class="form-group">
    <label for="exampleInputPassword1"> New Password</label>
    <input  type="password" class="form-control" id="enpassword" name="enpassword" placeholder="New Password">
  </div>
  
    <div class="form-group">
    <label for="exampleInputPassword1">Confirm Password</label>
    <input  type="password" class="form-control" id="ecopassword" name="ecopassword" placeholder="New Password">
  </div>
  
  <div class="form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Check me out</label>
  </div>
  <button type="submit" class="btn btn-success">Update</button>
</div></div>


				
			</div>

		</div>
	</form>

</body>
</html>
