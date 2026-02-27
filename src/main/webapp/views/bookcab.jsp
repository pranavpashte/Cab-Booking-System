<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
<title>Book Cab</title>
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

<h4 class="text-center">Book Cab</h4>

<form method="post" action="/confirm-booking">

    <input name="pickup" class="form-control mb-2" placeholder="Pickup Location" required>
    <input name="dropLocation" class="form-control mb-2" placeholder="Drop Location" required>

    <input name="distance" type="number" step="0.1" class="form-control mb-2"
           placeholder="Distance (KM)" required>

    <select name="cabType" class="form-control mb-2">
        <option>Mini</option>
        <option>Sedan</option>
        <option>SUV</option>
		<option>Taxi</option>
		<option>Electric</option>
    </select>

    <select name="paymentMode" class="form-control mb-3">
        <option value="CASH">Cash</option>
        <option value="UPI">UPI</option>
    </select>

    <button class="btn btn-primary w-100">Confirm Booking</button>
</form>

</div>
</div>
</div>
</div>
</body>
</html>