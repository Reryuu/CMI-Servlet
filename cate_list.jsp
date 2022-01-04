<%-- 
    Document   : cate_list
    Created on : Dec 4, 2021, 8:24:45 PM
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
        <h1>Category List</h1>
        <table border="1">
            <thead>
                <tr>
                    <th>ID:</th>
                    <th>Product Name:</th>
                    <th>Year: </th>
                    <th>Action: </th>
                </tr>
            </thead>
            <tbody>
            <c:forEach var="category" items="${categories}">
                    <tr>
                        <td>${category.getId()}</td>
                        <td>${category.getName()}</td>
                        <td>${category.getDescription()}</td>
                        <td>
                            <a href="product-servlet?categoryId=${category.getId()}">Show Product</a>

                            <!-- OR -->
                        </td>
                    </tr>
                </c:forEach>

            </tbody>
        </table>
    </body>
</html>
