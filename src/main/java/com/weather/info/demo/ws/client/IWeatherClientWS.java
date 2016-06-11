package com.weather.info.demo.ws.client;

import java.util.List;

import com.weather.info.demo.model.WeatherInfo;
import com.weather.info.demo.model.WeatherPicture;

public interface IWeatherClientWS {
	
		WeatherInfo getWeatherByZip(String zipCode);

		List<WeatherPicture> getWeatherPictures();
}
