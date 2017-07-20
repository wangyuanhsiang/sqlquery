<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : index
    Created on : 16-Jul-2017, 3:59:13 PM
    Author     : Shawn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <sql:query var="allRows" dataSource="jdbc/sample">
            SELECT name, city, state FROM customer
        </sql:query>

        <table border="1">
            <thead> 
                <tr>
                    <th>Name</th>
                    <th>Location</th>
                </tr>
            </thead>
            <tbody>
            <c:forEach var="currentRow"
                       items="${allRows.rows}">
                <tr>
                    <td>${currentRow.name}</td>
                    <td>${currentRow.city},
                        ${currentRow.state}
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
