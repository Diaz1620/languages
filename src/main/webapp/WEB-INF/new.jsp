<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

    <h1>New Language</h1>
    <form:form action="/pets/create" method="post" modelAttribute="pet">
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
            <form:input type="number" path="currentVersion"/>
        </p>   
        <input type="submit" value="Submit"/>
    </form:form>    

</body>
</html>