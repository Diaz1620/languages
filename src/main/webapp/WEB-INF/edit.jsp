<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body>
    <h1>Edit Language</h1>
    <form:form action="/languages/${language.id}" method="put" modelAttribute="language">
        <p>
            <form:label path="name">Name</form:label>
            <form:errors class="alert-danger" path="name"/>
            <form:input path="name"/>
        </p>
        <p>
            <form:label path="creator">Creator</form:label>
            <form:errors class="alert-danger" path="creator"/>
            <form:input path="creator"/>
        </p>
        <p>
            <form:label path="currentVersion">Version</form:label>
            <form:errors class="alert-danger" path="currentVersion"/>
            <form:input type="number" path="currentVersion" step="0.00001"/>
        </p>   
        <input type="submit" value="Submit"/>
    </form:form>    

    <a class="d-flex justify-content-center" href="/languages">Dashboard</a>
</body>
</html>