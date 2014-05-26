<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
	<head>
		<title>Register Person</title>
		<style type="text/css">
			table {
				 margin: 0px auto;         
			}
		</style>
	</head>
	
	<body>
	
		<%@include file="header.jsp" %>
		
		<form:form modelAttribute="person" method="post">
			<table>
				<tr>
					<td>Id:</td>
					<td><form:input path="id" size="50" /></td>
				</tr>
				<tr>
					<td>First Name:</td>
					<td><form:input path="firstName" size="50" /></td>
				</tr>
				<tr>
					<td>Last Name:</td>
					<td><form:input path="lastName" size="50" /></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="Save"/></td>
				</tr>
			</table>				
		</form:form>
		
		<%@include file="footer.jsp" %>
	
	</body>
</html>
