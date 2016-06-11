package com.weather.info.demo.controller.api;

import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.annotation.Resource;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.weather.info.demo.model.WeatherInfo;
import com.weather.info.demo.model.WeatherPicture;
import com.weather.info.demo.ws.client.IWeatherClientWS;


@RestController
@RequestMapping("/api")
public class WebApiController {

	@Resource
	private IWeatherClientWS weatherClientWS;
	
	@RequestMapping(value="/weatherInfo", method = RequestMethod.POST)
	@ResponseBody
	public WeatherInfo getWeatherInfo(@RequestParam String zipCode) {			
		try{
		
			return validateZipCode(zipCode) ? weatherClientWS.getWeatherByZip(zipCode) : null;
		
		}catch(Exception ex){
			System.err.println(ex.getMessage());
			return null;
		}			
	} 
	
	@RequestMapping(value="/weatherPics", method = RequestMethod.GET)
	@ResponseBody
	public List<WeatherPicture> getPics() {		
		return weatherClientWS.getWeatherPictures();		
	} 
		
	private boolean validateZipCode(String zip){		
		 
		String regex = "^[0-9]{5}(?:-[0-9]{4})?$";
		 
		Pattern pattern = Pattern.compile(regex);
		 
		Matcher matcher = pattern.matcher(zip);
		
		return matcher.matches();
	}
}
