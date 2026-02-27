<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>My Bookings</title>
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
<body class="bg-light">

<div class="container mt-5">
    <div class="card shadow p-4">
        <h3 class="text-center mb-4">🚕 My Bookings</h3>

        <c:if test="${empty bookings}">
            <div class="alert alert-warning text-center">
                No bookings found.
            </div>
        </c:if>

        <c:if test="${not empty bookings}">
            <table class="table table-bordered table-striped">
                <thead class="table-dark">
                    <tr>
                        <th>Pickup</th>
                        <th>Drop</th>
                        <th>Cab</th>
                        <th>KM</th>
                        <th>Fare</th>
                        <th>Payment</th>
                        <th>Status</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="b" items="${bookings}">
                        <tr>
                            <td>${b.pickup}</td>
                            <td>${b.dropLocation}</td>
                            <td>${b.cabType}</td>
                            <td>${b.distance}</td>
                            <td>₹${b.fare}</td>
                            <td>${b.paymentMode}</td>
                            <td>
                                <span class="badge bg-success">${b.status}</span>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </c:if>

        <div class="text-center mt-3">
            <a href="/dashboard" class="btn btn-secondary">⬅ Back</a>
        </div>
    </div>
</div>

</body>
</html>
