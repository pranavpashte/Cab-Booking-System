package com.cabbooking.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.cabbooking.entity.User;



import org.springframework.data.jpa.repository.JpaRepository;
import com.cabbooking.entity.User;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByEmail(String email);
}