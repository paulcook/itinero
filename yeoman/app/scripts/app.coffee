define [
  'mustache',
  'alice',
  'text',
], (mustache, alice) ->
  App =
    # Application Constructor
    initialize: (data) ->
      console.log "Starting App Yo"
      # item = document.getElementById('splendid')
      # console.log item
      # item.setAttribute('href','#myModal')
      # item.setAttribute('data-toggle','modal')

      @appData = data
      @bindEvents()

    # Bind Event Listeners
    #
    # Bind any events that are required on startup. Common events are:
    # 'load', 'deviceready', 'offline', and 'online'.
    bindEvents: ->
      console.log "binding"
      if navigator.userAgent.match(/(iPhone|iPod|iPad|Android|BlackBerry|IEMobile)/)
        document.addEventListener("deviceready", @onDeviceReady, false)
      else
        @onDeviceReady() #this is the browser
      
      #document.addEventListener('deviceready', @onDeviceReady, false)
      #document.addEventListener('load', @onDocumentReady, false)

    # deviceready Event Handler
    #
    # The scope of 'this' is the event. In order to call the 'receivedEvent'
    # function, we must explicity call 'app.receivedEvent(...);'
    onDeviceReady: ->
      @receivedEvent('deviceready')
      @loadTemplates()
      
    loadTemplates: ->
      require [
        'text!../tpl/splash.html'
        ], @templatesReady

    templatesReady: (tpl) ->
      console.log @appData
      html = mustache.to_html tpl, @appData
      document.querySelector('div.app').innerHTML = html
      console.log "building index tpl"

    onDocumentReady: ->
      @receivedEvent('documentready')
      @setupModalLink()

    # Update DOM on a Received Event
    receivedEvent: (id) ->
      console.log('Received Event: ' + id)

      # parentElement = document.getElementById(id)
      # listeningElement = parentElement.querySelector('.listening')
      # receivedElement = parentElement.querySelector('.received')

      # listeningElement.setAttribute('style', 'display:none;')
      # receivedElement.setAttribute('style', 'display:block;')

    setupModalLink: ->
      item = document.getElementById('splendid')
      item.setAttribute('href','#myModal')
      item.setAttribute('data-toggle','modal')

  App