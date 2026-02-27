package com.cabbooking.controller;

import java.time.LocalDateTime;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import com.cabbooking.entity.Booking;
import com.cabbooking.entity.User;
import com.cabbooking.repository.BookingRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class BookingController {

    @Autowired
    private BookingRepository bookingRepository;

    @GetMapping("/bookcab")
    public String bookCab(HttpSession session) {
        if (session.getAttribute("loggedUser") == null)
            return "redirect:/login";
        return "bookcab";
    }

    @PostMapping("/confirm-booking")
    public String confirmBooking(
            @RequestParam String pickup,
            @RequestParam String dropLocation,
            @RequestParam String cabType,
            @RequestParam double distance,
            @RequestParam String paymentMode,
            HttpSession session) {

        User user = (User) session.getAttribute("loggedUser");
        if (user == null) return "redirect:/login";

        double ratePerKm;
        switch (cabType) {
            case "Mini": ratePerKm = 12; break;
            case "SUV": ratePerKm = 25; break;
            case "Sedan": ratePerKm = 18; break;
            case "Taxi": ratePerKm = 10; break;
            case "Electric": ratePerKm = 20; break;
            default: ratePerKm = 15;
        }

        double fare = distance * ratePerKm;

        Booking booking = new Booking();
        booking.setPickup(pickup);
        booking.setDropLocation(dropLocation);
        booking.setCabType(cabType);
        booking.setDistance(distance);
        booking.setFare(fare);
        booking.setPaymentMode(paymentMode);
        booking.setStatus("BOOKED");
        booking.setBookingTime(LocalDateTime.now());
        booking.setUser(user);   // ✅ FIXED

        bookingRepository.save(booking);

        return "booking-success";
    }
}