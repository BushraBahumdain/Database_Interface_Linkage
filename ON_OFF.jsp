<%-- 
    Document   : ON_OFF
    Created on : Jun 25, 2021, 7:38:47 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ON/OFF Response</title>
    </head>
    <body>
        <%
            DB.DB_ConnectionONOFF conn = new DB.DB_ConnectionONOFF();

            int isAdded = conn.addval("ON");

            if (isAdded > 0) {
                out.print("Data is successfully inserted!");
            } else {
                out.print("Error");
            }
        %>
    </body>
</html>
