<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%
String ses = (String)session.getAttribute("username");
if(ses!=null){
%>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<title>Help My Interview</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-danger">
		<a class="navbar-brand "  href="index.jsp" style="color:white">HelpMyInterView.Com</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto" id="navId">
				<li class="nav-item active bg-danger"><a class="nav-link" href="userdashboard.jsp" style="color:white">Home<span class="sr-only">(current)</span></a></li>
				<li class="nav-item active bg-danger"><a class="nav-link" href="beforeinterview.jsp" style="color:white">PreInterview<span class="sr-only">(current)</span></a></li>
				<li class="nav-item active bg-danger"><a class="nav-link" href="QuestionDisplay" style="color:white">Group Dis<span class="sr-only">(current)</span></a></li>
				<li class="nav-item active bg-danger"><a class="nav-link" href="DisplayAllFeedback" style="color:white">Read Experience<span class="sr-only">(current)</span></a></li>
				<li class="nav-item active bg-danger"><a class="nav-link" href="LogoutController" style="color:white">Logout<span class="sr-only">(current)</span></a></li>
			</ul>
		</div>
	</nav>
	<div class="container">
		<div class="row">
			<div class="col-sm p-5">
    <h2 class="form-signin-heading">Share Your Experience With Us</h2>

    <br>
<form action="FeedbackController" method="post">
     <div class="form-row">
    <div class="col-md-6 mb-3">
      <label for="validationDefault01">Company Name</label>
      <input type="text" class="form-control" id="validationDefault01" placeholder="Company Name" value="" name="companyName" required>
    </div>
    <div class="col-md-6 mb-3">
      <label for="validationDefault02">Post</label>
      <input type="text" class="form-control" id="validationDefault02" placeholder="Post" value="" name="post" required>
    </div>
    <div class=col-md-12>
    <span>Salary: </span>

    <label for="inputsalary" class="sr-only">Salary</label>

    <input type="text" id="inputSalary" class="form-control"  placeholder="Salary" value="" name="salary"required>

    <br>

    <span>Email Address: </span>

    <label for="inputMobile" class="sr-only">Email Address</label>

    <input type="email" id="inputMobile" class="form-control"  placeholder="Email Address" value="" name="emailAddress" required>

    <br>

    <span>year </span>

    <label for="year" class="sr-only">Year</label>

    <input type="text" id="inputPassword" class="form-control"  placeholder="Year" value="" name="year" required>
    <br>
    <span>Experience: </span>

    <label for="Experience" class="sr-only">Experience</label>

    <textarea type="text" id="Experience" class="form-control" value="" name="experience"  placeholder="Experience" required></textarea>
    <br>
   </div>
    <button class="btn btn-lg btn-primary btn-block" type="submit" value="submit" >Post Your Experience</button>
  	</div>
  	</form>
	</div>
		</div>
		</div>
</body>
</html>
<% } else{
	RequestDispatcher rd=null;
	rd = request.getRequestDispatcher("login.jsp");
	rd.forward(request, response);
	
}
%>