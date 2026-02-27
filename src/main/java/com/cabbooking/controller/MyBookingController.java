package com.cabbooking.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.cabbooking.entity.Booking;
import com.cabbooking.entity.User;
import com.cabbooking.repository.BookingRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class MyBookingController {

    @Autowired
    private BookingRepository bookingRepository;

    @GetMapping("/mybookings")
    public String myBookings(HttpSession session, Model model) {

        User loggedUser = (User) session.getAttribute("loggedUser");

        
        if (loggedUser == null) {
            return "redirect:/login";
        }

        List<Booking> bookings =
                bookingRepository.findByUser(loggedUser);

        model.addAttribute("bookings", bookings);

        return "mybookings";
        
        
    }
    
}
