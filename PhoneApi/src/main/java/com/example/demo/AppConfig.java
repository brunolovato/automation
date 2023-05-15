package com.example.demo;

import com.example.demo.api.FonoapiClient;
import com.example.demo.api.FonoapiClientImpl;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import retrofit2.Retrofit;
import retrofit2.converter.jackson.JacksonConverterFactory;

@Configuration
public class AppConfig {
    @Bean
    public FonoapiClient fonoapiClient() {
        return new FonoapiClientImpl();
    }
}