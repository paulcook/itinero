#/*global require*/
'use strict'

require.config
  shim:
    underscore:
      exports: '_'
    backbone:
      deps: [
        'underscore'
        'jquery'
       ]
      exports: 'Backbone'
    
    bootstrap:
      deps: ['jquery'],
      exports: 'jquery'
    
    
    handlebars:
      exports: 'Handlebars'
    
  paths:
    jquery: '../bower_components/jquery/jquery'
    backbone: '../bower_components/backbone/backbone'
    underscore: '../bower_components/underscore/underscore'
    text: '../bower_components/requirejs-text/text' 

    bootstrap: 'vendor/bootstrap'
    mustache: 'vendor/mustache'
    alice: 'vendor/alice'
    templates: 'tpl'
    
    handlebars: '../bower_components/handlebars/handlebars'
    

require [
  'app'
], (App) ->
  appData =
    appName: 'itinero'
    appSlogan: 'Plan.Report.Share'
    create: 'create your trip'
    share: 'share your trip'
    year: '2013'
    rights: 'All rights reserved'
    developer: 'Giorgio Natili, Paul Cook'
    developerSite: 'alternateversion.com'

  App.initialize appData