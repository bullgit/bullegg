window.onload = ->
  bullegg.init()

bullegg =
  current: ""
  code: "6685767683727384"
  pressed_key: 0

  init: ->
    @bind_events()

  bind_events: ->
    window.onkeydown = (e) ->
      bullegg.pressed_key = e.which or e.keyCode
      bullegg.update_code()

  update_code: ->
    @current += @pressed_key
    @check_code()

  check_code: ->
    if @current.length is @code.length
      if @current is @code
        @throw_eggception()
        @current = ""
      else
        @current = @current.substring(2)

  throw_eggception: ->
    document.querySelector("html").style.height = "100%"
    body = document.querySelector("body")
    body.innerHTML = ""
    body.style.height = "100%"
    body.style.padding = "0"
    body.style.margin = "0"
    body.style.backgroundColor = "#1393d5"
    body.style.backgroundImage = "url(http://bullg.it/assets/img/logo.svg)"
    body.style.backgroundSize = "50%"
    body.style.backgroundRepeat = "no-repeat"
    body.style.backgroundPosition = "center"