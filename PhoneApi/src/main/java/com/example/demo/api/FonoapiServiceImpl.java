package com.example.demo.api;

import com.example.demo.model.Phone;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import retrofit2.Call;

@Service
public class FonoapiServiceImpl implements FonoapiService {

    @Autowired
    private FonoapiClient fonoapiClient;

    @Override
    public Call<Phone> getPhoneDetails(String token, String device, String brand) {
        String response = String.valueOf(fonoapiClient.getDeviceDetails(token, device, brand));
        // parse the response and create a PhoneDetails object
        Phone phoneDetails = parseResponse(response);
        return (Call<Phone>) phoneDetails;
    }

    // private helper method to parse the response and create a PhoneDetails object
    private Phone parseResponse(String response) {
        // implement the logic to parse the response and create a PhoneDetails object
        // return the PhoneDetails object
        return null;
    }
}