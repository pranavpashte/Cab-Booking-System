<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Register | Cab Booking</title>

    <!-- Bootstrap CSS -->
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

<body class="d-flex align-items-center justify-content-center">

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-5">

            <div class="card shadow p-4">
                <h3 class="text-center mb-3">🚕 Create Account</h3>

                <!-- Error message -->
                <c:if test="${not empty error}">
                    <div class="alert alert-danger text-center">
                        ${error}
                    </div>
                </c:if>

                <form method="post" action="/register">

                    <input type="text" name="name" class="form-control mb-3"
                           placeholder="Full Name" required>

                    <input type="email" name="email" class="form-control mb-3"
                           placeholder="Email Address" required>

                    <input type="password" name="password" class="form-control mb-3"
                           placeholder="Password" required>

                    <button type="submit" class="btn btn-primary w-100">
                        Register
                    </button>
                </form>

                <!-- 👇 LOGIN LINK GOES HERE -->
                <div class="text-center mt-3">
                    <span>Already have an account?</span>
                    <a href="/login">Login</a>
                </div>

            </div>

        </div>
    </div>
</div>

</body>
</html>