<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<title>Login</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
body {
    background: url("/images/cab.jpg") no-repeat center center fixed;
    background-size: cover;
}
.card {
    background: rgba(255,255,255,0.95);
}
</style>
</head>

<body>
<div class="container mt-5">
<div class="row justify-content-center">
<div class="col-md-4">
<div class="card p-4">

<h3 class="text-center">Login</h3>

<c:if test="${not empty error}">
<p class="text-danger text-center">${error}</p>
</c:if>

<form method="post" action="/login">
<input name="email" class="form-control mb-2" placeholder="Email">
<input name="password" type="password" class="form-control mb-3" placeholder="Password">
<button class="btn btn-primary w-100">Login</button>
</form>

<p class="text-center mt-3">
New user? <a href="/register">Register</a>
</p>

</div>
</div>
</div>
</div>
</body>
</html>