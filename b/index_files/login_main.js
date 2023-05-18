var requireUrlArgsBust = "v1.0.293";
require.config({
    urlArgs: 'bust=' + IdConfig.resmodified,
    paths: {
        jquery: '/resources/jquery-3.5.1.min',
        jqueryui: '/resources/jquery-ui-1.12.1/jquery-ui', // 1.10.2 doesnt have draggable bug (where when you drag item and it autoscroll then its cursor is in wrong place: http://stackoverflow.com/questions/16231817/wrong-position-in-draggable-elements-when-previous-elems-get-higher-on-hover?rq=1)
        underscore: '/resources/backbone/underscore-min',        
        backbone: '/resources/backbone/backbone-min',
        backbonemarionette: '/resources/backbone.marionette/backbone.marionette.min',
        backbonemarionettemod: '/resources/backbone.marionette/backbone.marionette.mod',
        backbonebabysitter: '/resources/backbone.marionette/backbone.babysitter',
        backbonewreqr: '/resources/backbone.marionette/backbone.wreqr',
        json2: '/resources/backbone.marionette/json2',        
        app: '/js/app',
        util: '/js/utils',        
        bootstrap: '/resources/bootstrap-3.4.1/js/bootstrap.min',
        //googleclient: '//apis.google.com/js/client',        
        tooltipbox: '/resources/classlinkui/js/tooltipbox',
        wnlightbox: '/resources/classlinkui/js/lightbox',        
        momentjs: '/resources/moment.full.min',
        momentjsmode: '/resources/moment.full.mod',
        i18next: '/resources/i18next/i18next-1.7.1',            
        otrack: '/optimize/otrack',
        linkify: '/resources/jquery.linkify-1.0-min',      
        cryptoaes: '/resources/crypto_aes',
        login: '/js/views/login/login',
        osdetection: '/resources/client-detection/jquery.client/jquery.client',
        browserdetection: '/resources/client-detection/detectmobilebrowser'
    },
    shim: { 
        'login':{
            deps:[
                'backbonemarionettemod'
            ]
        },               
        'i18next': {
            deps: [
                'jquery'
            ]
        },
        'timeago': {// remove this after completely moving to momentjs
            deps: [
                'jquery'
            ]
        },
        'backbone': {
            deps: [
                'underscore',
                'jquery'
            ],
            exports: 'Backbone'
        },
        'backbonemarionette': {
            deps: [
                'backbone'
            ]
        },
        'backbonemarionettemod': {
            deps: [
                'backbonemarionette'
            ]
        },
        'bootstrap': {
            deps: [
                'jquery',
                'jqueryui'
            ]
        },
        'i18n': {
            deps: [
                'backbone'
            ]
        },
        'jqueryui': {
            deps: [
                'jquery'
            ]
        },
        'util': {
            deps: [
                'backbone',
                'momentjs',
                'i18next'
            ]
        },
        '/resources/jQuery.browser.mobile.detection.min.js': {
            deps: [
                'jquery'
            ]  
        },
        '/js/models/login/ChangePassword.js': {
            deps: [
                'backbone'
            ]  
        },
        '/js/models/login/Login.js': {
            deps: [
                'backbone'
            ]  
        },
        'login': {
            deps: [
                '/mintpl/all.js',
                'jqueryui',                
                'backbone',
                'backbonemarionettemod', // our mod, it includes marionette as dep                
                'i18next',
                //'login',
                'osdetection',
                'browserdetection',                
                'util',
                'bootstrap',
				'/js/lib/cssloader.js',
                '/js/models/login/ChangePassword.js',
                '/js/models/login/Login.js'
                ],
            exports: 'App'
        },
        'linkify': {
            deps: [
                'jquery'
            ]
        },
        'osdetection': {
            deps: [
                'jquery'
            ]
        },
        'browserdetection': {
            deps: [
                'jquery'
            ]
        }
    },
    waitSeconds: 30
});

require(['login'], function(App) {
    if($('#login-alert-modal') && $('#login-alert-modal')[0]) {
        $('#login-alert-modal').modal('show');
    }
    utils.loadCss("/css/login/modal-box.css");
    // init i18next
    i18n.init({
        lng: utils.lang,
        useCookie: false,
        detectLngQS: 'ashidjkg123784628gdfui236847fde', //effectively disabling GET query for lang
        fallbackLng: 'en',
        ////useLocalStorage: utils.env == "production", // we will only enable in production
        //localStorageExpirationTime: 86400000, // cached for 1 week when enabled
        // debug: utils.env == "development",
        resGetPath: '/locales/__lng__/__ns__.json?_=' + IdConfig.resmodified,
        sendMissing: false, //utils.env == "development", // send missing only on dev
        sendMissingTo: 'fallback',
        resPostPath: 'locales/add/dev/__ns__'
    }, function() {
        console.log("login_page_loaded");
        $("a.mb-close").unbind("click").click(function(e) {
			$("div.expired").css("display", "none");
			$("div.expired").remove();
			$("#wn-main-lightbox").remove();
        });
        utils.loadTemplate(['Login/BrowserUpgradeView'], function() {
            var chromebook = '';
            var url=(window.location.href).toLowerCase();
            if(url.indexOf('?chromebook=1')>-1){
                chromebook = 1;
            }             
            var login_view = new Login_LoginView({
                model: new Login_Login(IdConfig.customlogin),
                el: jQuery("#login_form_action"),
                chromebook : chromebook
            });
            login_view.render();
        });    
    });
});