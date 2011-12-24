# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

load_tokeninput = () ->
  $("#item_tags_tokens").tokenInput([],{crossDomain:false, noSearch: true,  prePopulate: $("#item_tags_tokens").data('prepopulate'), preventDuplicates: true, theme: 'facebook', searchDelay:100, tokenLimit: 10 })

$ ->
  load_tokeninput()

