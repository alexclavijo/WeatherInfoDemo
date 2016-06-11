
// Setting up the scripts
require.config({
    baseUrl: Environment_APP_PATH + "resources/",
    paths: {
        "knockout": "scripts/lib/knockout-3.4.0",
        "jquery": "scripts/lib/jquery-1.10.2.min",
        "jquery.ui": "scripts/lib/jquery-ui-1.10.4.custom.min",      
        "appContext": "scripts/app/appContext",        
        "util":  "scripts/app/util",
        "pageScripts":  "scripts/app/page",
        "skel": "scripts/lib/skel.min",
        "customBindings": "scripts/app/customBindings"
    },
    waitSeconds: 0,
    shim: {
        "jquery.ui": ["jquery"],        
        "skel": ["jquery"],
        "util": ["jquery"],
        "pageScripts": ["jquery", "skel"],
        "customBindings": ["knockout", "jquery.ui"]
    },
});


var _globalContext = null;

require(["knockout", "util", "pageScripts", "appContext", "jquery.ui"], function (ko, util, pageScripts, AppContext) {

    function init() { 
    	
        _globalContext = new AppContext();
        _globalContext.init();

        ko.applyBindings({ context:  _globalContext });
    }

    $(document).ready(init);
});




