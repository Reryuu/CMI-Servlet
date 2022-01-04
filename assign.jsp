<%-- 
    Document   : assign
    Created on : Dec 4, 2021, 8:24:56 PM
    Author     : Minh PC
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Update Product</h1>
        <p>Do you really want to update product: </p>
        <select name="category">
        <c:forEach items="${listCategory}" var="assigns">
            <option value="${assigns.getId()}">${assigns.getName()}</option>
        </c:forEach>
    </select>
    </body>
</html>
