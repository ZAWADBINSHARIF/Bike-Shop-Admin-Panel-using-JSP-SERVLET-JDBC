<%@ page import="com.bike_shop.bike_shop.Bike" %>
<%@ page import="java.util.List" %>
<%@ page import="com.bike_shop.DataAccessObject.BikeDAO" %><%--
  Created by IntelliJ IDEA.
  User: ZAWAD BIN SHARIF
  Date: 1/5/2024
  Time: 6:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>

<%--  // bootstrap css file--%>
  <link rel="stylesheet" href="Bootstrap/bootstrap.min.css"/>
<%--  //fontawesome css file--%>
  <link rel="stylesheet" href="Fontawesome/all.min.css"/>
<%--  // custom css file--%>
  <link rel="stylesheet" href="style.css">
<%--  // bootstrap js file--%>
  <script defer src="Bootstrap/bootstrap.bundle.min.js"></script>
<%--  // fontawesome js file--%>
  <script defer src="Fontawesome/all.min.js"></script>
<%--   // axios cdn--%>
  <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
<%--  // JavaScript file--%>
  <script defer src="./main.js"></script>
</head>
<body>

<i class="fa-solid fa-circle-plus fa-3x add-icon" data-bs-toggle="modal" data-bs-target="#add-bike-modal"></i>

<%@include file="add-modal.jsp" %>
  <div class="container">

    <%
      List<Bike> allBikes = BikeDAO.getAllBikes();
    %>

    <div class="bike_wrapper py-5">

      <div class="bike_container d-flex flex-row flex-wrap gap-3">

        <%
            for (Bike allBike : allBikes) {
                out.println("<div class=\"bike\">\n" +
                        "            <div class=\"card\" style=\"width: 18rem;\">\n" +
                        "              <img src=\"./public/uploads/" + allBike.image() + "\" class=\"card-img-top\" width=\"240\" height=\"180\" alt=\"...\">\n" +
                        "              <div class=\"card-body\">\n" +
                        "                <h5 class=\"card-title\">" + allBike.bike_name() + "</h5>\n" +
                        "                <p class=\"card-text\">" + allBike.description() + "</p>\n" +
                        "              </div>\n" +
                        "              <ul class=\"list-group list-group-flush\">\n" +
                        "                <li class=\"list-group-item\">" + allBike.company() + "</li>\n" +
                        "                <li class=\"list-group-item\">" + allBike.engine_power() + " CC</li>\n" +
                        "                <li class=\"list-group-item\">" + allBike.price() + " TK</li>\n" +
                        "              </ul>\n" +
                        "              <div class=\"card-body d-flex justify-content-end\">\n" +
                        "                <i class=\"fa-solid fa-trash fa-lg delete-icon\" ondblclick=handleDelete(\"" + allBike.id() + "\")></i>\n" +
                        "              </div>\n" +
                        "            </div>\n" +
                        "         </div>");
            }
        %>

      </div>

    </div>
  </div>
</body>
</html>