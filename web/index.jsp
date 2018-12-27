<%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Oswald">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open Sans">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
  h1,h2,h3,h4,h5,h6 {font-family: "Oswald"}
  body {font-family: "Open Sans"}
</style>

  <head>
    <title>M&M Shop</title>
  </head>

  <body>

  <div class="w3-bar w3-black w3-hide-small">
    <h6 class="w3-tag">  M&M</h6>
    <a href="#" class="w3-bar-item w3-button w3-right"><i class="fa fa-search"></i></a>
    <a href="#" class="w3-bar-item w3-button w3-right" onclick="window.location='admin.jsp';">For Admin</a>
  </div>

  <header class="w3-container w3-center w3-padding-48 w3-white">
    <h1 class="w3-xxxlarge"><b>M&M Shop</b></h1>
    <h6><span class="w3-tag">Welcome</span></h6>
  </header>

  <header class="w3-display-container w3-wide" id="home">
    <img class="w3-image" src="https://theculturetrip.com/wp-content/uploads/2016/08/thanx-god-im-a-v-i-p--store---amnaye-nhas-courtesy-of-thanx-god-im-a-v-i-p-.jpg" alt="Store" width="1600" height="1060">
    <div class="w3-display-left w3-padding-large">
      <h1 class="w3-text-white">You can select products</h1>
      <h1 class="w3-jumbo w3-text-white w3-hide-small"><b>HERE</b></h1>
      <h6><button class="w3-button w3-white w3-padding-large w3-large w3-opacity w3-hover-opacity-off" onclick="window.location='product-show.jsp';">VIEW PRODUCTS</button></h6>
    </div>
  </header>

  </body>

</html>