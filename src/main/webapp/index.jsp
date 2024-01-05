<%--
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

</head>
<body>

<i class="fa-solid fa-circle-plus fa-3x add-icon" data-bs-toggle="modal" data-bs-target="#add-bike-modal"></i>

<%@include file="add-modal.jsp" %>
  <div class="container">
    <div class="bike_wrapper py-5">

      <div class="bike_container d-flex flex-row flex-wrap gap-3">
         <div class="bike">
            <div class="card" style="width: 18rem;">
              <img src="https://wallpapercave.com/wp/wc1757389.jpg" class="card-img-top" width="240" height="180" alt="...">
              <div class="card-body">
                <h5 class="card-title">Bike Name</h5>
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
              </div>
              <ul class="list-group list-group-flush">
                <li class="list-group-item">Company Name</li>
                <li class="list-group-item">Engine Power</li>
                <li class="list-group-item">Price</li>
              </ul>
              <div class="card-body d-flex justify-content-end">
                <i class="fa-solid fa-trash fa-lg delete-icon"></i>
              </div>
            </div>
         </div>

         <div class="bike">
            <div class="card" style="width: 18rem;">
              <img src="https://th.bing.com/th/id/R.02c348b1411e413d8b6655599dfd1314?rik=gFv2XFj1jQA29g&pid=ImgRaw&r=0" class="card-img-top" width="240" height="180" alt="...">
              <div class="card-body">
                <h5 class="card-title">Bike Name</h5>
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
              </div>
              <ul class="list-group list-group-flush">
                <li class="list-group-item">Company Name</li>
                <li class="list-group-item">Engine Power</li>
                <li class="list-group-item">Price</li>
              </ul>
              <div class="card-body d-flex justify-content-end">
                <i class="fa-solid fa-trash fa-lg delete-icon"></i>
              </div>
            </div>
         </div>

         <div class="bike">
            <div class="card" style="width: 18rem;">
              <img src="https://wallpapercave.com/wp/wc1757389.jpg" class="card-img-top" width="240" height="180" alt="...">
              <div class="card-body">
                <h5 class="card-title">Bike Name</h5>
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
              </div>
              <ul class="list-group list-group-flush">
                <li class="list-group-item">Company Name</li>
                <li class="list-group-item">Engine Power</li>
                <li class="list-group-item">Price</li>
              </ul>
              <div class="card-body d-flex justify-content-end">
                <i class="fa-solid fa-trash fa-lg delete-icon"></i>
              </div>
            </div>
         </div>


      </div>

    </div>
  </div>
</body>
</html>