<%-- 
    Document   : InsertEngin
    Created on : Jun 23, 2021, 8:29:25 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Save Button Response </title>
    </head>
    <body>
        <%
            int slider1 = Integer.parseInt(request.getParameter("d1"));
            int slider2 = Integer.parseInt(request.getParameter("d2"));
            int slider3 = Integer.parseInt(request.getParameter("d3"));
            int slider4 = Integer.parseInt(request.getParameter("d4"));
            int slider5 = Integer.parseInt(request.getParameter("d5"));
            int slider6 = Integer.parseInt(request.getParameter("d6"));

            DB.DB_Connection conn = new DB.DB_Connection();

            int isAdded = conn.addmaengin(slider1, slider2, slider3, slider4, slider5, slider6);

            if (isAdded > 0) {
                out.print("Data is successfully inserted!");
            } else {
                out.print("Error");
            }
        %>
    </body>
</html>
