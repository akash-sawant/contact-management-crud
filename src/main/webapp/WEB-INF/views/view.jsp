<%@ page isELIgnored="false" contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Contact Details</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

<jsp:include page="/WEB-INF/views/home.jsp" />

<div class="container mt-5">

    <h1 class="text-center text-success mb-4">Contact Details</h1>

    <div class="text-center mb-4">
        <a href="/form" class="btn btn-primary btn-lg">Add Contact</a>
    </div>

    <div class="table-responsive">
        <table class="table table-striped table-bordered text-center align-middle">
            <thead class="table-dark">
                <tr>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Contact</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody id="contactBody">
                <c:forEach var="contact" items="${contactList}">
                    <tr>
                        <td>👤 ${contact.name}</td>
                        <td>✉️ ${contact.email}</td>
                        <td>📞 ${contact.phone}</td>
                        <td>
                            <a href="/update?id=${contact.id}" class="btn btn-sm btn-warning">Update</a>
                            <a href="/delete?id=${contact.id}"
                               onclick="return confirm('Do You Want to Delete Contact...?')"
                               class="btn btn-sm btn-danger">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

    <h4 id="noResults" class="text-center text-danger" style="display: none;">No Contacts Found..!</h4>

    <c:if test="${not empty sessionScope.resultMsg}">
        <h3 class="text-center text-danger mt-3">${sessionScope.resultMsg}</h3>
        <c:remove var="resultMsg" scope="session" />
    </c:if>
</div>

<!-- Bootstrap JS & jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="<c:url value='/JS/searchContacts.js'/>"></script>

</body>
</html>
