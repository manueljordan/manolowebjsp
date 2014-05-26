<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<head>
		<title>Report</title>
		<style type="text/css">
			table {
				 margin: 0px auto;         
			}
		</style>
	</head>
	
	<body>

		<%@include file="header.jsp" %>
		
		<table>
			<tr>
				<th>N</th>
				<th>Id</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Details</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>				
			<c:forEach var="person" items="${persons}" varStatus="status">
			<tr>
				<td>${status.count}</td>
				<td>${person.id}</td>
				<td>${person.firstName}</td>
				<td>${person.lastName}</td>
				<td>
					<c:url var="detail" value="/person/detail" >
						<c:param name="id" value="${person.id}" />
					</c:url>
					<a href="${detail}">Click</a>
				</td>
				<td>
					<c:url var="edit" value="/person/edit" >
						<c:param name="id" value="${person.id}" />
					</c:url>
					<a href="${edit}">Click</a>
				</td>
				<td>
					<c:url var="delete" value="/person/delete" >
						<c:param name="id" value="${person.id}" />
					</c:url>
					<a href="${delete}">Click</a>
				</td>
			</tr>
			</c:forEach>
		</table>
		
		<%@include file="footer.jsp" %>
		
	</body>	
</html>
