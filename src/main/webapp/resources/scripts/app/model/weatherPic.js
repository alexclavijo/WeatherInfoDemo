define(["knockout"], function (ko) {

	 return function () {
         var self = this;
         self.id = ko.observable();        
         self.picUrl = ko.observable();
     };

});