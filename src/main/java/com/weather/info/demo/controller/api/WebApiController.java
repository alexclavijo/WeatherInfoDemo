package com.weather.info.demo.controller.api;

import java.util.List;

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
		return weatherClientWS.getWeatherByZip(zipCode);		
	} 
	
	@RequestMapping(value="/weatherPics", method = RequestMethod.GET)
	@ResponseBody
	public List<WeatherPicture> getPics() {		
		return weatherClientWS.getWeatherPictures();		
	} 
		
}
