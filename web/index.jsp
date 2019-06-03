<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Product</title>
    <link rel="stylesheet" href="css/style.css" type="text/css">
  </head>
  <body>
  <form action="/kq" method="post">
    <input type="text"name="pescription" placeholder="Product Description"/>
    <input type="number" name="price" placeholder="List Price">
    <input type="number" step="0.000001" name="percent" placeholder="Discount Percent">
    <input type="submit" id="submit" value="submit">
  </form>
  <%
    Double discountAmount = (Double) request.getAttribute("discountAmount");
    if (discountAmount != null) {
      out.print(discountAmount);
    }
  %>
  </body>
</html>
