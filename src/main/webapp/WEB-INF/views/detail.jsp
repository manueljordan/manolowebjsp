<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
	<head>
		<title>Person</title>
		<style type="text/css">
			table {
				 margin: 0px auto;         
			}
		</style>
	</head>
	
	<body>
	
		<%@include file="header.jsp" %>
		
		<form:form modelAttribute="person">
			<table>
				<tr>
					<td>Id:</td>
					<td><form:input path="id" size="50" readonly="true"/></td>
				</tr>
				<tr>
					<td>First Name:</td>
					<td><form:input path="firstName" size="50" readonly="true"/></td>
				</tr>
				<tr>
					<td>Last Name:</td>
					<td><form:input path="lastName" size="50" readonly="true"/></td>
				</tr>
			</table>				
		</form:form>
		
		<c:url var="edit" value="/person/edit" />
		<c:url var="delete" value="/person/delete" />
		
		<table>
			<tr>
				<td>
					<form action="${edit}" method="get" >
						<table>
							<tr>
								<td><input type="hidden" name="id" value="${person.id}" /></td>
								<td><input type="submit" value="Edit" /></td>
							</tr>
	    				</table>
					</form>
				</td>
				<td>
					<form action="${delete}" method="post" >
						<table>
							<tr>
								<td><input type="hidden" name="id" value="${person.id}" /></td>
								<td><input type="submit" value="Delete" /></td>
							</tr>
	    				</table>
					</form>
				</td>
			</tr>
		</table>
			
		<%@include file="footer.jsp" %>
	
	</body>
</html>
