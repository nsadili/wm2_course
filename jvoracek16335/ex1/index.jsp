<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*,java.util.*, javax.servlet.*" %>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>First page</title>
  </head>
  <body>
    <h1>
  <%
  DateFormat dateFormat = new SimpleDateFormat("H");
   Date hour = new Date();
   int currentHour =  Integer.parseInt(dateFormat.format(hour));
   
    if(currentHour < 11){
   out.println("Good afternoon");
   } else if(currentHour <= 3){
   out.println("Good afternoon");
   } else{
   out.println("Good evening");
   }
   
   %>
    </h1>
  </body>
</html>
