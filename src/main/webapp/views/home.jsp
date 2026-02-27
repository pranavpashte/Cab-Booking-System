<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <title>Cab Booking System</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
	<style>
	body {
	    background: url('/images/cab.jpg') no-repeat center center fixed;
	    background-size: cover;
	}
	.card {
	    background: rgba(255,255,255,0.95);
	}
	</style>
</head>
<body class="bg-light">

<div class="container mt-5">
    <div class="card shadow p-5 text-center">
        <h1 class="mb-3">🚕 Cab Booking System</h1>
        <p class="text-muted mb-4">
            Book cabs easily, track your rides, and travel safely with our online cab booking platform.
        </p>

        <div class="d-flex justify-content-center gap-3">
            <a href="/register" class="btn btn-primary btn-lg">Register</a>
            <a href="/login" class="btn btn-success btn-lg">Login</a>
        </div>
    </div>
</div>

</body>
</html>
