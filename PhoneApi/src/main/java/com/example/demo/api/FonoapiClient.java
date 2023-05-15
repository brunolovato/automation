package com.example.demo.api;

import com.example.demo.model.Phone;
import retrofit2.Call;
import retrofit2.http.GET;
import retrofit2.http.Path;

public interface FonoapiClient {
    @GET("{token}/getdevice/{brand}/{model}")
    Call<Phone> getDeviceDetails(@Path("token") String token, @Path("brand") String brand, @Path("model") String model);
}
