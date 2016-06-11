package com.weather.info.demo.ws.client;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.ws.client.core.WebServiceTemplate;

import com.weather.info.demo.model.WeatherInfo;
import com.weather.info.demo.model.WeatherPicture;
import com.weather.info.demo.ws.generated.GetCityWeatherByZIP;
import com.weather.info.demo.ws.generated.GetCityWeatherByZIPResponse;
import com.weather.info.demo.ws.generated.GetWeatherInformation;
import com.weather.info.demo.ws.generated.GetWeatherInformationResponse;
import com.weather.info.demo.ws.generated.WeatherDescription;
import com.weather.info.demo.ws.generated.WeatherReturn;


@Service
public class WeatherClientWS implements IWeatherClientWS {

	@Value("${webservice.url}")
	private String webServiceUrl;
	
	@Autowired
    private WebServiceTemplate webServiceTemplate;

	public WeatherInfo getWeatherByZip(String zipCode) {
		
		GetCityWeatherByZIP request = new GetCityWeatherByZIP();
		request.setZIP(zipCode);		

		GetCityWeatherByZIPResponse response = (GetCityWeatherByZIPResponse) webServiceTemplate.marshalSendAndReceive(webServiceUrl, request);

		WeatherReturn result = response.getGetCityWeatherByZIPResult();
				
		return new WeatherInfo(result.getWeatherID(),
							   result.getCity(), 
							   result.getState(), 
							   result.getWeatherStationCity(), 
							   result.getDescription(), 
							   result.getPressure(),
							   Integer.parseInt(result.getTemperature()),
							   Integer.parseInt(result.getRelativeHumidity()));
	}

	
	public List<WeatherPicture> getWeatherPictures() {
		
		List<WeatherPicture> pics = new ArrayList<WeatherPicture>();
		
		GetWeatherInformation request = new GetWeatherInformation();		
		
		GetWeatherInformationResponse response = (GetWeatherInformationResponse) webServiceTemplate.marshalSendAndReceive(webServiceUrl, request);
		
		for (WeatherDescription desc : response.getGetWeatherInformationResult().getWeatherDescription()) {
			pics.add(new WeatherPicture(desc.getWeatherID(), desc.getPictureURL()));
		}  		
		return pics;
	}
		

	
}
