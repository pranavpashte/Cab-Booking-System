<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
<title>Success</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
body {
    background: url("/images/cab.jpg") no-repeat center center fixed;
    background-size: cover;
}
.card {
    background: rgba(255,255,255,0.95);
}
.success-title {
    color: #ffffff;
    font-weight: 700;
    font-size: 32px;
    text-align: center;
}

.success-subtitle {
    color: #ffffff;
    font-weight: 600;
    font-size: 18px;
    text-align: center;
    margin-top: 8px;
}

</style>
</head>

<body>
	<h2 class="success-title">
	    🚕 Cab Booked Successfully!
	</h2>

	<p class="success-subtitle">
	    Thank you for booking with us.
	</p>


	<div class="text-center">
	    <a href="/mybookings" class="btn btn-primary">My Bookings</a>
	    <a href="/dashboard" class="btn btn-secondary">Dashboard</a>
	</div>
</body>
</html>