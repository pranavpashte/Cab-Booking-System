<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
<title>Dashboard</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
body {
    background: url("/images/cab.jpg") no-repeat center center fixed;
    background-size: cover;
}
.card {
    background: rgba(255,255,255,0.95);
}

.nav-rect-container {
    display: flex;
    justify-content: center;
    gap: 30px;
    margin-top: 30px;
}

.nav-rect {
    width: 180px;
    height: 55px;
    display: flex;
    align-items: center;
    justify-content: center;

    text-decoration: none;
    font-size: 18px;
    font-weight: 600;

    border: 2px solid #333;
    background-color: white;
    color: #333;

    transition: all 0.3s ease;
}

/* Individual colors */
.book {
    border-color: #0d6efd;
    color: #0d6efd;
}

.book:hover {
    background-color: #0d6efd;
    color: white;
}

.bookings {
    border-color: #6c757d;
    color: #6c757d;
}

.bookings:hover {
    background-color: #6c757d;
    color: white;
}

.logout {
    border-color: #dc3545;
    color: #dc3545;
}

.logout:hover {
    background-color: #dc3545;
    color: white;
}
.welcome-container {
    display: flex;
    justify-content: center;
    margin-top: 30px;
}

.welcome-text {
    background-color: rgba(13, 110, 253, 0.85);
    color: white;
    padding: 10px 25px;
    border-radius: 6px;
    font-weight: 600;
}

</style>
</head>

<body>
<div class="container mt-5">

	<div class="welcome-container">
	    <h2 class="welcome-text">
	        Welcome ${name} 👋
	    </h2>
	</div>


<div class="nav-rect-container">
    <a href="/bookcab" class="nav-rect book">Book Cab</a>
    <a href="/mybookings" class="nav-rect bookings">My Bookings</a>
    <a href="/logout" class="nav-rect logout">Logout</a>
</div>

</div>
</body>
</html>