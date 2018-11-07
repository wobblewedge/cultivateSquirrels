<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<meta name="viewport" content="width=device-width" />

<c:import url="header.jsp">
    <c:param name="pageTitle" value="Announcing Squirrel Parties for Dummies" />
</c:import>

<section id="intro-content">
    <h2>About Squirrel Parties for Dummies</h2>
    
    <div id="container">
    <div id="bookimg">
        <img src="img/forDummies.png">
    </div>
    
    <div id="aboutbook">
    
    <p>
    
    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

    </p>
    
    
    </div>

    </div>
</section>

<section id="main-content">
    <h2 style="text-align:center">Reviews for Squirrel Parties for Dummies</h2>
		<c:forEach items="${reviews}" var="review">
		<div id="reviews" style="margin-left:20px">
		<div>
			<div id="heading" style="float:left; margin-left:3px;"><span><strong>Username: </strong></span>${review.username}</div><br/>
			<div id="heading" style="float:left; margin-left:3px;"><span><strong>Rating: </strong></span>${review.rating} Stars</div>
		</div><br/>
		<tbody>
		<fmt:parseDate value=" ${review.dateSubmitted }" pattern="yyyy-MM-dd'T'HH:mm" var="parsedDateTime" type="both" />
 				<tr><td><c:out value="${review.title}"/></td><td><br/><br/><c:out value="${review.text}"/></td></tr><br/><br/>
 				<tr><td class="time">${parsedDateTime}<tr></td>
 		</tbody>
 		</div><br/>
		</c:forEach>
</section>

<c:import url="footer.jsp">
</c:import>