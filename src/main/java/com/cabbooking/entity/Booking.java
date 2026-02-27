package com.cabbooking.entity;

import java.time.LocalDateTime;
import jakarta.persistence.*;

@Entity
@Table(name = "bookings")
public class Booking {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String pickup;
    private String dropLocation;
    private String cabType;
    private double distance;
    private double fare;
    private String paymentMode;
    private String status;

    private LocalDateTime bookingTime;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;   

	public Booking() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Booking(Long id, String pickup, String dropLocation, String cabType, double distance, double fare,
			String paymentMode, String status, LocalDateTime bookingTime, User user) {
		super();
		this.id = id;
		this.pickup = pickup;
		this.dropLocation = dropLocation;
		this.cabType = cabType;
		this.distance = distance;
		this.fare = fare;
		this.paymentMode = paymentMode;
		this.status = status;
		this.bookingTime = bookingTime;
		this.user = user;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getPickup() {
		return pickup;
	}

	public void setPickup(String pickup) {
		this.pickup = pickup;
	}

	public String getDropLocation() {
		return dropLocation;
	}

	public void setDropLocation(String dropLocation) {
		this.dropLocation = dropLocation;
	}

	public String getCabType() {
		return cabType;
	}

	public void setCabType(String cabType) {
		this.cabType = cabType;
	}

	public double getDistance() {
		return distance;
	}

	public void setDistance(double distance) {
		this.distance = distance;
	}

	public double getFare() {
		return fare;
	}

	public void setFare(double fare) {
		this.fare = fare;
	}

	public String getPaymentMode() {
		return paymentMode;
	}

	public void setPaymentMode(String paymentMode) {
		this.paymentMode = paymentMode;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public LocalDateTime getBookingTime() {
		return bookingTime;
	}

	public void setBookingTime(LocalDateTime bookingTime) {
		this.bookingTime = bookingTime;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@Override
	public String toString() {
		return "Booking [id=" + id + ", pickup=" + pickup + ", dropLocation=" + dropLocation + ", cabType=" + cabType
				+ ", distance=" + distance + ", fare=" + fare + ", paymentMode=" + paymentMode + ", status=" + status
				+ ", bookingTime=" + bookingTime + ", user=" + user + "]";
	}

    
}