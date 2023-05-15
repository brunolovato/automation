package com.example.demo.api;

import com.google.gson.annotations.SerializedName;
import java.time.LocalDateTime;

public class FonoapiPhoneDetails {
    @SerializedName("DeviceName")
    private String deviceName;

    @SerializedName("technology")
    private String technology;

    @SerializedName("status")
    private String status;

    @SerializedName("bands2g")
    private String bands2G;

    @SerializedName("bands3g")
    private String bands3G;

    @SerializedName("bands4g")
    private String bands4G;

    private Long id;
    private String bookedBy;
    private LocalDateTime bookedOn;
    private Boolean available;

    public FonoapiPhoneDetails() {
        this.available = true;
    }

    public FonoapiPhoneDetails(String deviceName, String technology, String bands2G, String bands3G, String bands4G) {
        this.deviceName = deviceName;
        this.technology = technology;
        this.bands2G = bands2G;
        this.bands3G = bands3G;
        this.bands4G = bands4G;
        this.available = true;
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

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getBands2G() {
        return bands2G;
    }

    public void setBands2G(String bands2G) {
        this.bands2G = bands2G;
    }

    public String getBands3G() {
        return bands3G;
    }

    public void setBands3G(String bands3G) {
        this.bands3G = bands3G;
    }

    public String getBands4G() {
        return bands4G;
    }

    public void setBands4G(String bands4G) {
        this.bands4G = bands4G;
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
