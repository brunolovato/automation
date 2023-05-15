package com.example.demo.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import java.time.LocalDateTime;

@Entity
public class Phone {
    @Id
    private Long id;
    private String deviceName;
    private String technology;
    private String twoGBands;
    private String threeGBands;
    private String fourGBands;
    private String bookedBy;
    private LocalDateTime bookedOn;
    private Boolean available;

    public Phone() {}


    public Phone(String deviceName, String technology, String twoGBands, String threeGBands, String fourGBands) {
        this.deviceName = deviceName;
        this.technology = technology;
        this.twoGBands = twoGBands;
        this.threeGBands = threeGBands;
        this.fourGBands = fourGBands;
        this.available = true;
    }

    public static Phone findByDeviceName(String deviceName) {
        //Go to database and return. Here is mocked.
        return new Phone();
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getDeviceName() {
        return deviceName;
    }

    public void setDeviceName(String deviceName) {
        this.deviceName = deviceName;
    }

    public String getTechnology() {
        return technology;
    }

    public void setTechnology(String technology) {
        this.technology = technology;
    }

    public String getTwoGBands() {
        return twoGBands;
    }

    public void setTwoGBands(String twoGBands) {
        this.twoGBands = twoGBands;
    }

    public String getThreeGBands() {
        return threeGBands;
    }

    public void setThreeGBands(String threeGBands) {
        this.threeGBands = threeGBands;
    }

    public String getFourGBands() {
        return fourGBands;
    }

    public void setFourGBands(String fourGBands) {
        this.fourGBands = fourGBands;
    }

    public String getBookedBy() {
        return bookedBy;
    }

    public void setBookedBy(String bookedBy) {
        this.bookedBy = bookedBy;
    }

    public LocalDateTime getBookedOn() {
        return bookedOn;
    }

    public void setBookedOn(LocalDateTime bookedOn) {
        this.bookedOn = bookedOn;
    }

    public Boolean isAvailable() {
        return available;
    }

    public void setAvailable(Boolean available) {
        this.available = available;
    }
}
