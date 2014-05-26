<html>
	<head>
		<title>Search Person</title>
		<style type="text/css">
			table {
				 margin: 0px auto;         
			}
		</style>
	</head>
	
	<body>
	
		<%@include file="header.jsp" %>
	
		<form method="post" >
			<table>
				<tr>
					<td>Id: </td>
					<td><input type="text" name="id" size="50" /></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="Search"/></td>
				</tr>
			</table>				
		</form>
	
		<%@include file="footer.jsp" %>
	
	</body>
</html>
