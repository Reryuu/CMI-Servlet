<%-- 
    Document   : product_list
    Created on : Dec 4, 2021, 8:25:18 PM
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
        <h1>Product List</h1>
        <table border="1">
            <thead>
                <tr>
                    <th>ID:</th>
                    <th>Product Name:</th>
                    <th>Price: </th>
                    <th>Description: </th>
                    <th>Category ID:</th>
                    <th>Action: </th>
                </tr>
            </thead>
            <tbody>
                
            <c:forEach var="product" items="${productLists}">
                    <tr>
                        <td>${product.getPId()}</td>
                        <td>${product.getName()}</td>
                        <td>${product.getPrice()}</td>
                        <td>${product.getDescription()}</td>
                        <td>${product.getId()}</td>
                        <td>
                            <a href="assign-servlet?productId=${product.getPId()}&categoryId=${product.getId()}">Assign this product to other category</a>
                        </td>
                    </tr>
                </c:forEach>

            </tbody>
        </table>
    </body>
</html>
