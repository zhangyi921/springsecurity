<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<html>

<head>
	<title>luv2code Company Home Pag22222e</title>
</head>

<body>
	<h2>luv2code Company Home Page</h2>
	<hr>
	
	<p>
	Welcome to the luv2code company home page!
	</p>
	
	<hr>
	
	<!-- display user name an role -->
	<p>
		User: <security:authentication property="principal.username" />
		<br><br>
		Role(s): <security:authentication property="principal.authorities" />
	</p>
	<hr>
	
	<security:authorize access="hasRole('MANAGER')">
	<!-- add a link to point to /leaders -->
		<a href="${pageContext.request.contextPath}/leaders">LeaderShip Meeting</a>
	</security:authorize>
		
	
	<hr>
		<security:authorize access="hasRole('ADMIN')">
		<!-- add a link to point to /admin -->
		<a href="${pageContext.request.contextPath}/systems">IT Systems Meeting</a>
		</security:authorize>
	<hr>
	<!-- Add a logout button -->
	<form:form action="${pageContext.request.contextPath}/logout" 
			   method="POST">
	
		<input type="submit" value="Logout" />
	
	</form:form>
	
</body>

</html>









