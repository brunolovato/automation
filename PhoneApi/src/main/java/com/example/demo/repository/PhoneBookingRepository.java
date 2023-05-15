package com.example.demo.repository;

import com.example.demo.model.PhoneBooking;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PhoneBookingRepository extends JpaRepository<PhoneBooking, Long> {

    PhoneBooking findFirstByPhoneIdAndReturnDateIsNullOrderByBookedOnDesc(Long phoneId);
}
