package com.weather.info.demo.model;

public class WeatherInfo {
	
	private int weatherId;
	
	private String city;
	
	private String state;
	
	private String weatherStation;
	
	private String description;
	
	private String pressure; 
	
	private int temperature;
	
	private int relativeHumidity;	
	
	private String pictureUrl;
	
	
	public WeatherInfo() {
		// TODO Auto-generated constructor stub
	}

	public WeatherInfo(int weatherId, String city, String state, String weatherStation, String description, String pressure, int temperature, int relativeHumidity) {
		this.weatherId = weatherId;
		this.city = city;
		this.state = state;
		this.weatherStation = weatherStation;
		this.description = description;
		this.pressure = pressure;
		this.temperature = temperature;
		this.relativeHumidity = relativeHumidity;
	}
	
	public int getWeatherId() {
		return weatherId;
	}
	
	public void setWeatherId(int weatherId) {
		this.weatherId = weatherId;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getWeatherStation() {
		return weatherStation;
	}

	public void setWeatherStation(String weatherStation) {
		this.weatherStation = weatherStation;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getPressure() {
		return pressure;
	}

	public void setPressure(String pressure) {
		this.pressure = pressure;
	}

	public int getTemperature() {
		return temperature;
	}

	public void setTemperature(int temperature) {
		this.temperature = temperature;
	}

	public int getRelativeHumidity() {
		return relativeHumidity;
	}

	public void setRelativeHumidity(int relativeHumidity) {
		this.relativeHumidity = relativeHumidity;
	}	
	
	public String getPictureUrl() {
		return pictureUrl;
	}
	
	public void setPictureUrl(String pictureUrl) {
		this.pictureUrl = pictureUrl;
	}
	
	
}
