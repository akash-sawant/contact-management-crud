<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>



<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add New Contact</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="bg-light">

<!-- 	<div th:replace="~{fragments/navbar :: navbar}"></div>
 -->
 
 <%@ include file="/WEB-INF/fragments/home.jsp" %>
 
<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card shadow-sm">
                <div class="card-header text-center bg-primary text-white">
                    <h3>Add New Contact</h3>
                </div>
                <div class="card-body">
                    <form:form modelAttribute="contact" action="add" method="post">
                        <div class="mb-3">
                            <label for="name" class="form-label">Full Name</label>
                            <form:input path="name" cssClass="form-control" placeholder="Enter Contact Name"/>
                        </div>
                        <div class="mb-3">
                            <label for="email" class="form-label">Email Id</label>
                            <form:input path="email" cssClass="form-control" placeholder="Enter Contact Email"/>
                        </div>
                        <div class="mb-3">
                            <label for="phone" class="form-label">Phone Number</label>
                            <form:input path="phone" cssClass="form-control" placeholder="Enter Contact Phone No."/>
                        </div>
                        <div class="text-center">
                            <input type="submit" value="Add Contact" class="btn btn-success"/>
                        </div>
                    </form:form>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap JS Bundle (Optional for components like modals) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
