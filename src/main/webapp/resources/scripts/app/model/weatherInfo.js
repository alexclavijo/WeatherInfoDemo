define(["knockout"], function (ko) {

	 return function () {
         var self = this;

         self.id = ko.observable();
         self.city = ko.observable();
         self.state = ko.observable();
         self.weatherStation = ko.observable();
         self.description = ko.observable();
         self.pressure = ko.observable();
         self.temperature = ko.observable();
         self.relativeHumidity = ko.observable();
         self.picUrl = ko.observable();
         
         self.init = function(){        	 
        	 self.id = ko.observable();
             self.city = ko.observable("?");
             self.state = ko.observable("?");
             self.weatherStation = ko.observable("?");
             self.description = ko.observable("?");
             self.pressure = ko.observable("?");
             self.temperature = ko.observable("?");
             self.relativeHumidity = ko.observable("?");
             self.picUrl = ko.observable();
         };
         
         self.init();
     };

});