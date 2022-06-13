<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Spring CRUD</title>
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
 rel="stylesheet">
<script src="<c:url value="/resources/js/jquery-1.11.1.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>

</head>
<body>
<nav class="navbar navbar-light" style="background-color: #e3f2fd;">
	<c:if test="${pageContext.request.userPrincipal.name != null}">
	<div class="container">
        <form id="logoutForm" method="POST" action="${contextPath}/logout">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </form>
        <h3>Logged as: ${pageContext.request.userPrincipal.name} | <a onclick="document.forms['logoutForm'].submit()">Logout</a></h3>
    </div>
    </c:if>
</nav>
 <div class="container">
  <div class="col-md-offset-2 col-md-7">
   <h2 class="text-center">Function Update</h2>
   <div class="panel panel-info">
    <div class="panel-heading">
     <div class="panel-title">Update Contacts</div>
    </div>
    <div class="panel-body">
		<form:form method="post" action="/update-contact/${id}" cssClass="form-horizontal">
		   
			<div class="form-group">
		       	<label class="col-md-2 control-label">Name</label>
       			<div class="col-md-9" >
		        	<form:input path="name" cssClass="form-control"/>
		        </div>
      		</div>
      		
			<div class="form-group">
		       <label class="col-md-2 control-label">Email</label>
       			<div class="col-md-9">
		        	<form:input path="email" cssClass="form-control"/>
		        </div>
      		</div>
      		
			<div class="form-group">
		       <label class="col-md-2 control-label">Phone Number</label>
       			<div class="col-md-9">
		        	<form:input path="telefone" cssClass="form-control"/>
		        </div>
      		</div>
      		
			<div class="form-group">
		       <!-- Button -->
		       <div class="col-md-offset-2 col-md-9">
		        <input type="submit" value="Update" class="btn btn-success" />
		        <a href="/read-contact" class="btn btn-primary col-md-offset-1" role="button">Cancel</a>
		       </div>
	      	</div>
		</form:form>
    </div>
   </div>
  </div>
 </div>
</body>
</html>