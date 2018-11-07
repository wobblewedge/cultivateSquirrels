<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<c:import url="header.jsp">
    <c:param name="pageTitle" value="this sucks" />
</c:import>

</head>
	<body>
	   <table class="table">
			<tr>	<th>Reviews</th></tr>
		<c:forEach items="${requestScope.reviews}" var="review">
 			<tr><td><c:out value="${review.username}"/></td><td><c:out value="${review.headline}"/></td></tr>
		</c:forEach>
	   </table>
	</body>
</html>