<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ page import = "com.mysql.jdbc.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<sql:query dataSource="jdbc/affablebean" var="result">
    SELECT * FROM category, product
    WHERE category.id = product.category_id
</sql:query>

<html>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Oswald">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open Sans">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/style.css">

<head>
    <title>For Admin</title>
</head>

<body class="w3-light-grey">

<div class="navbar w3-bar w3-black w3-hide-small">
    <h6 class="w3-tag" onclick="window.location='index.jsp';">  M&M</h6>
    <a href="#" class="w3-bar-item w3-button w3-right"><i class="fa fa-search"></i></a>
    <a href="#" class="w3-bar-item w3-button w3-right" onclick="window.location='index.jsp';">For User</a>
</div>

<br>

<div><h1 class="w3-padding-large w3-tag">Product List</h1>
    <div class="w3-padding-large"><button onclick="window.location='product-add.jsp'">ADD</button></div>
</div>


<div class="main">



    <div class="row">

        <c:forEach var="row" items="${result.rows}">

            <div class="card w3-center column w3-padding-small">
                <img class="w3-padding-large" src="<c:out value="${row.image}"/>" style="width:200px;height:200px;">
                <div class="container" style="background: black; color: white">
                    <h4><b><c:out value="${row.name}"/></b></h4>
                    <p><c:out value="${row.description}"/></p>
                    <p><c:out value="${row.price}"/> $</p>
                </div>
                <div class="w3-padding-small"></div>
                <button onclick="window.location='product-update.jsp?id=<c:out value="${row.id}"/>';">UPDATE</button>
                <button onclick="confirmDelete(<c:out value="${row.id}"/>);">DELETE</button>
            </div>
        </c:forEach>
        <br>
    </div>
</div>

</body>
<script>
    function confirmDelete(id) {
        if (confirm('Do you want to delete this product?')) {
            window.location = "shop-controller?cmd=d&id="+id;
        }
    }
</script>
</html>
