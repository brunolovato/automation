package com.example.demo.service;

import com.example.demo.api.FonoapiPhoneDetails;
import com.example.demo.api.*;
import com.example.demo.model.Phone;
import com.example.demo.model.PhoneBooking;
import com.example.demo.repository.PhoneBookingRepository;
import com.example.demo.repository.PhoneDetailsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.List;

@Service
public class PhoneService {

    private final FonoapiService fonoapiService;

    private final PhoneBookingRepository phoneBookingRepository;

    private final PhoneDetailsRepository phoneDetailsRepository;

    @Autowired
    public PhoneService(FonoapiService fonoapiService, PhoneBookingRepository phoneBookingRepository, PhoneDetailsRepository phoneDetailsRepository) {

        this.fonoapiService = fonoapiService;
        this.phoneBookingRepository = phoneBookingRepository;
        this.phoneDetailsRepository = phoneDetailsRepository;
    }

    public PhoneBooking bookPhone(Long phoneId, String bookedBy) {
        Phone phone = phoneDetailsRepository.findById(phoneId)
                .orElseThrow(() -> new IllegalArgumentException("Invalid phone ID: " + phoneId));

        if (!phone.isAvailable()) {
            throw new IllegalStateException("Phone " + phone.getId() + " is already booked");
        }

        phone.setAvailable(false);
        phone.setBookedBy(bookedBy);
        phone.setBookedOn(LocalDateTime.now());

        phoneDetailsRepository.save(phone);

        PhoneBooking booking = new PhoneBooking(phoneId, bookedBy, phone.getBookedOn());
        return phoneBookingRepository.save(booking);
    }

    public PhoneBooking returnPhone(Long phoneId) {
        Phone phone = phoneDetailsRepository.findById(phoneId)
                .orElseThrow(() -> new IllegalArgumentException("Invalid phone ID: " + phoneId));

        if (phone.isAvailable()) {
            throw new IllegalStateException("Phone " + phone.getId() + " is not currently booked");
        }

        phone.setAvailable(true);
        phone.setBookedBy(null);
        phone.setBookedOn(null);

        phoneDetailsRepository.save(phone);

        PhoneBooking booking = phoneBookingRepository.findFirstByPhoneIdAndReturnDateIsNullOrderByBookedOnDesc(phoneId);
        booking.setReturnedOn(LocalDateTime.now());
        return phoneBookingRepository.save(booking);
    }

    public Phone getPhoneDetailsByDeviceName(String deviceName) {
        Phone phone = Phone.findByDeviceName(deviceName); //Mocked. Not going to database for this example.

        if (phone == null) {
            FonoapiPhoneDetails fonoapiDetails = (FonoapiPhoneDetails) fonoapiService.getPhoneDetails("TOKEN HERE", null, deviceName);
            phone = new Phone(fonoapiDetails.getDeviceName(), fonoapiDetails.getTechnology(), fonoapiDetails.getBands2G(), fonoapiDetails.getBands3G(), fonoapiDetails.getBands4G());
            //phoneDetailsRepository.save(phone);
        }

        return phone;
    }

    public List<Phone> getAllPhoneDetails() {
        return phoneDetailsRepository.findAll();
    }



}
