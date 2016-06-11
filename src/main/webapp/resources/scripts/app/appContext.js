
define(["knockout", "jquery", "scripts/app/model/weatherInfo", "scripts/app/model/weatherPic"], function (ko, $, WeatherInfo, WeatherPic) {

    return function () {

        var self = this;       

        self.zipCode = ko.observable();       
        self.zips = ko.observableArray();   
       
        self.weatherInfo = new WeatherInfo();
        self.pics = ko.observableArray();
        
        self.zipCode.subscribe(function(newValue) {
        	self.getWeatherInfo();
        });        
        
        self.getWeatherInfo = function() {        	
        	$.ajax({
                dataType: "json",
                type: "POST",
                //contentType:"application/json; charset=utf-8",
                url: Environment_APP_PATH + "api/weatherInfo",
                data: { 
                	zipCode: self.zipCode() 
                },
                success: self.populateWeatherInfo,
                
                error: function (error) {
                	console.log(error);          
                }
            });
        };
        
        self.populateWeatherInfo = function (response) {       	
        	
        	var weatherPic = ko.utils.arrayFirst(self.pics(), function(item) {
        	    return item.weatherId === response.weatherId;
        	});
        	
        	if(weatherPic.pictureUrl){        		
        		self.weatherInfo.picUrl(weatherPic.pictureUrl);
        	}        	
        	
        	self.weatherInfo.city(response.city);
        	self.weatherInfo.state(response.state);
        	self.weatherInfo.weatherStation(response.weatherStation);
        	self.weatherInfo.description(response.description);
        	self.weatherInfo.pressure(response.pressure);
        	self.weatherInfo.temperature(response.temperature + '°F');
        	self.weatherInfo.relativeHumidity(response.relativeHumidity);        	
        };
        
        self.getWeatherPics = function() {        	
        	$.ajax({
                dataType: "json",
                type: "GET",          
                url: Environment_APP_PATH + "api/weatherPics",               
                success: function (response) {
                	self.pics(response);
                },
                error: function (error) {
                	console.log(error);          
                }
            });
        };
        
        self.init = function () {
        	 self.pics(self.getWeatherPics());
        };
    };

});
