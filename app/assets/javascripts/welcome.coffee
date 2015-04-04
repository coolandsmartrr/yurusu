
# All this logic will automatically be available in application.js.
# Place all the behaviors and hooks related to the matching controller here.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $("#yurusu").click ->
    current = this
    $.ajax
      url: "/welcome/count_up"
      type: "PATCH"
      complete: (data) ->
        countedNumberOfYurusu = parseInt($(current).attr('data-number-of-yurusu')) + 1
        $("#number-of-yurusu").text(String(countedNumberOfYurusu))