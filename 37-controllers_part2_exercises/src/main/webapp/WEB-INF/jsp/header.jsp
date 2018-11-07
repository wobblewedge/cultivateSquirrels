<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<title><c:out value="${param.pageTitle}" /></title>
<c:url var="sitesCssUrl" value="CSS/site.css" />
<link rel="stylesheet" type="text/css" href="${sitesCssUrl}" />

</head>

<body>
    <header>
        <h1>Squirrel Parties for Dummies</h1>
    </header>
    <nav>
        <ul>
        		<li><a href="homePage">Home</a></li>
            <li><a href="submitForm">Submit a Review</a></li> 
        </ul>
    </nav>