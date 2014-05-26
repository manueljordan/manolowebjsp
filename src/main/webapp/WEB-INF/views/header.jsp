<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url var="register" value="/person/register" />
<c:url var="search" value="/person/search" />
<c:url var="report" value="/person/report" />
	
<c:url var="springframeworklogo" value="/resources/images/spring-framework-logo.png" />
<c:url var="springframeworkprojectlogo" value="/resources/images/spring-framework-project-logo.png" />
	
<p align="center"><img alt="springframeworklogo" src="${springframeworklogo}" ></p>
	
<p align="center">
	<a href="${register}">Register</a>
	<a href="${search}">Search</a>
	<a href="${report}">Report</a>
</p>
