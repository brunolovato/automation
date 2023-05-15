package com.example.demo.api;

import com.example.demo.model.Phone;
import retrofit2.Call;
import retrofit2.http.GET;
import retrofit2.http.Query;

public interface FonoapiService {
    @GET("/v1/getdevice")
    Call<Phone> getPhoneDetails(@Query("token") String token, @Query("brand") String brand, @Query("device") String device);
}
