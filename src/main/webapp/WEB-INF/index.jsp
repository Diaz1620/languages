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
    <h1>Hello Languages!</h1>

    <table class="table table-dark">
        <thead>
            <tr>
                <th scope="col">Name</th>
                <th scope="col">Creator</th>
                <th scope="col">Version</th>
                <th scope="col">Action</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items='${allLanguages}' var='x'>
                <tr>
                    <td><a href="/languages/${x.id}">${x.name}</a></td>
                    <td>${x.creator}</td>
                    <td>${x.currentVersion}</td>
                    <td><a href="/languages/${x.id}/delete">Delete</a> | <a href="/languages/edit/${x.id}">Edit</a></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>

        <h1>New Language</h1>
    <form:form action="/languages" method="post" modelAttribute="language">
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
</body>
</html>