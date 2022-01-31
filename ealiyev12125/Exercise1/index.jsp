<%@ page import = "java.time.LocalDateTime, java.time.temporal.ChronoField" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
  </head>
  <body>
    <%
      LocalDateTime dateTime = LocalDateTime.now();
      int hour = dateTime.get(ChronoField.HOUR_OF_DAY);

      String message = "Unknown date and time";

      if (hour >= 0 && hour < 6) {
        message = "Good night";
      } else if (hour >= 6 && hour < 12) {
        message = "Good morning";
      } else if (hour >= 12 && hour < 18) {
        message = "Good afternoon";
      } else if (hour >= 18 && hour < 24) {
        message = "Good evening";
      }

      out.print("<h1>" + message + "</h1>");
    %>
  </body>
</html>
