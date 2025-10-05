<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="frm"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Contact</title>
    <!-- Bootstrap CSS CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-5">

<%@ include file="/WEB-INF/views/home.jsp" %>

    <h1 class="text-center text-success mb-4">Update Contact</h1>

    <div class="row justify-content-center">
        <div class="col-md-6">
            <frm:form modelAttribute="contact" action="/update" method="post">
                <div class="mb-3">
                    <label for="id" class="form-label">Id</label>
                    <frm:input path="id" id="id" class="form-control" readonly="true" />
                </div>
                <div class="mb-3">
                    <label for="name" class="form-label">Full Name</label>
                    <frm:input path="name" id="name" class="form-control" placeholder="Enter Contacter Name" />
                </div>
                <div class="mb-3">
                    <label for="email" class="form-label">Email Id</label>
                    <frm:input path="email" id="email" class="form-control" placeholder="Enter Contacter Email" />
                </div>
                <div class="mb-3">
                    <label for="phone" class="form-label">Phone Number</label>
                    <frm:input path="phone" id="phone" class="form-control" placeholder="Enter Contacter Phone No." />
                </div>
                <div class="text-center">
                    <button type="submit" class="btn btn-primary">Update Contact</button>
                </div>
            </frm:form>
        </div>
    </div>
</div>

<!-- Bootstrap JS (optional) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
