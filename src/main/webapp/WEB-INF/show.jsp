<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>

    <c:out value="${language.name}"/>
    <br>
    <c:out value="${language.creator}"/>
    <br>
    <c:out value="${language.currentVersion}"/>
    <br>
    <a href="/languages/edit/${language.id}" method="p">Edit</a>
    <br>
    <a href="/languages/${language.id}/delete">Delete</a>
    <!-- <form action="/languages/${language.id}" method="post">
        <input type="hidden" name="_method" value="delete">
        <input type="submit" value="Delete">
    </form> -->

    <a class="d-flex justify-content-center" href="/languages">Dashboard</a>

</body>
</html>