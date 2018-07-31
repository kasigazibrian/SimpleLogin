# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $('#user_password_confirmation').on 'change', (event) ->
     if event.target.value != $('#user_password').val()
       $('.alert.alert-success').hide()
       $('<li class="alert alert-danger">Your passwords should match</li>').insertAfter($(this))
     else
       $('.alert.alert-danger').hide()
       $('<li class="alert alert-success">Great your passwords are matching</li>').insertAfter($(this))

