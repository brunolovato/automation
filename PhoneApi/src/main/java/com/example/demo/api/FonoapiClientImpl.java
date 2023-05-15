package com.example.demo.api;

import com.example.demo.model.Phone;
import retrofit2.Call;
import retrofit2.Retrofit;
import retrofit2.converter.scalars.ScalarsConverterFactory;

public class FonoapiClientImpl implements FonoapiClient {

    private final FonoapiService fonoapiService;

    public FonoapiClientImpl() {
        Retrofit retrofit = new Retrofit.Builder()
                .baseUrl("https://fonoapi.freshpixl.com")
                .addConverterFactory(ScalarsConverterFactory.create())
                .build();
        fonoapiService = retrofit.create(FonoapiService.class);
    }

    @Override
    public Call<Phone> getDeviceDetails(String token, String brand, String model) {
        return fonoapiService.getPhoneDetails(token, brand, model);
    }
}
