<%-- 
    Document   : login
    Created on : May 2, 2023, 11:16:12 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Struts</title>
    </head>
    <body>
        <h1>Login Application</h1>
        <form action="loginform.do" method="post">
            Username: <input type="text" name="uname"/><br/><br/>
            Password: <input type="password" name="upass"/><br/><br/>
            <input type="submit" value="Submit"/>
        </form>
    </body>
</html>
