package com.weather.info.demo.model;

public class WeatherPicture {

	private int weatherId;
	
	private String pictureUrl;

	public WeatherPicture() {
		// TODO Auto-generated constructor stub
	}
	
	public WeatherPicture(int weatherId, String pictureUrl) {		
		this.weatherId = weatherId;
		this.pictureUrl = pictureUrl;
	}

	public int getWeatherId() {
		return weatherId;
	}

	public void setWeatherId(int weatherId) {
		this.weatherId = weatherId;
	}

	public String getPictureUrl() {
		return pictureUrl;
	}

	public void setPictureUrl(String pictureUrl) {
		this.pictureUrl = pictureUrl;
	}
	
	
	
	
}
