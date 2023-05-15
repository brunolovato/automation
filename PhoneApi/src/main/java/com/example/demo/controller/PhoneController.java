package com.example.demo.controller;

import com.example.demo.model.Phone;
import com.example.demo.model.PhoneBooking;
import com.example.demo.repository.PhoneRepository;
import com.example.demo.service.PhoneService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/phones")
public class PhoneController {

    @Autowired
    private PhoneRepository phoneRepository;

    @Autowired
    private PhoneService phoneService;

    @GetMapping
    public List<Phone> getAllPhoneDetails() {
        return phoneService.getAllPhoneDetails();
    }

    @PostMapping("/{phoneId}/book")
    public ResponseEntity<PhoneBooking> bookPhone(@PathVariable Long phoneId, @RequestBody PhoneBooking booking) {
        PhoneBooking result = phoneService.bookPhone(phoneId, booking.getBookedBy());
        if (result == null) {
            return ResponseEntity.notFound().build();
        } else {
            return ResponseEntity.ok(result);
        }
    }

    @PostMapping("{phoneId}/return")
    public ResponseEntity<PhoneBooking> returnPhone(@PathVariable Long phoneId) {

        PhoneBooking result = phoneService.returnPhone(phoneId);
        if (result == null) {
            return ResponseEntity.notFound().build();
        } else {
            return ResponseEntity.ok(result);
        }
    }
}
