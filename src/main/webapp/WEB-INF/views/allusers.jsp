
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Cours Complet Bootstrap 4</title>
    <meta charset='utf-8'>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
</head>
<body>








<div class="container">
    <h1>Liste des utilisateurs</h1>
    <table class="table table-dark">
        <thead>
        <tr>
            <th>Id</th>
            <th>Lastname</th>
            <th>Firstname</th>
            <th>PhoneNumber</th>
            <th>Email</th>

        </tr>
        </thead>
        <tbody>
        <c:forEach items="${users}" var="user">
        <tr>
            <td>${user.id}</td>
            <td>${user.lastname}</td>
            <td>${user.firstname}</td>
            <td>${user.phonenumber}</td>
            <td>${user.email}</td>


        </tr>
        </c:forEach>
    </table>
</div>
</body>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">