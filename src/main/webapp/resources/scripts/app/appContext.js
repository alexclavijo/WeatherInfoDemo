
define(["knockout", "jquery", "scripts/app/model/weatherInfo"], function (ko, $, WeatherInfo) {

    return function () {

        var self = this;
        
        self.zips = ko.observableArray();        
        
        self.pics = ko.observableArray();
        
        self.weatherData = ko.observableArray();
                     
        
        self.populateWeatherInfo = function(weatherInfoObj, zipItem) {        	
        	$.ajax({
                dataType: "json",
                type: "POST",               
                url: Environment_APP_PATH + "api/weatherInfo",
                data: { 
                	zipCode: zipItem.zipCode() 
                },
                success: function(response, status, jqXHR){
                	
                	if(response){
                		var weatherPic = ko.utils.arrayFirst(self.pics(), function(item) {
                    	    return item.weatherId === response.weatherId;
                    	});
                    	
                    	if(weatherPic.pictureUrl){        		
                    		weatherInfoObj.picUrl(weatherPic.pictureUrl);
                    	}        	
                    	
                    	weatherInfoObj.city(response.city);
                    	weatherInfoObj.state(response.state);
                    	weatherInfoObj.weatherStation(response.weatherStation);
                    	weatherInfoObj.description(response.description);
                    	weatherInfoObj.pressure(response.pressure);
                    	weatherInfoObj.temperature(response.temperature + '°F');
                    	weatherInfoObj.relativeHumidity(response.relativeHumidity);  
                	} 
                	else{
                		weatherInfoObj.init();
                	}
                	   
                },                
                error: function (xhr, status, exception) {
                	console.log(status, exception);            
                }
            });
        };
        
        self.setupCityAccordion = function() {        	
        	setTimeout(function(){        		
        		$("#city-accordion").show();
        		$("#city-accordion").accordion({
        			heightStyle: "content",
        			collapsible : true, 
        			active : 'none'
        	    });
        		
        	}, 0);      	
        };
        
        self.getWeatherPics = function() {        	
        	$.ajax({
                dataType: "json",
                type: "GET",          
                url: Environment_APP_PATH + "api/weatherPics",               
                success: function (response, status, jqXHR) {
                	self.pics(response);
                },
                error: function (xhr, status, exception) {
                	console.log(status, exception);          
                }
            });
        };
        
        
        self.weatherBtnClickAction = function(){        	
        	ko.utils.arrayForEach(self.zips(), function(item, index) {
    	        var zipCode = item.zipCode();
    	        if(zipCode && zipCode != '?'){
    	        	self.populateWeatherInfo(self.weatherData()[index].weatherInfo, item);  	        	
    	        }
    	    });
        	
        	$(".close").click();
        };
        
        self.openMenuClick = function(){
        	$('body').addClass('is-menu-visible');
        };
        
        self.init = function () {
        	
        	self.getWeatherPics();       	
        	
        	self.zips([
        	    { zipCode: ko.observable("?") },
        	    { zipCode: ko.observable("?") },
        	    { zipCode: ko.observable("?") },
        	    { zipCode: ko.observable("?") },
        	    { zipCode: ko.observable("?") }
        	]);
        	
        	self.weatherData([
        	    { weatherInfo: new WeatherInfo() },
        	    { weatherInfo: new WeatherInfo() },
        	    { weatherInfo: new WeatherInfo() },
        	    { weatherInfo: new WeatherInfo() },
        	    { weatherInfo: new WeatherInfo() }
        	]);  
        	
        	self.setupCityAccordion();
        	
        };
    };

});
