$(document).on 'click', '#send', ->
  $mb = $('#message_body')
  App.messages.send({ message: $mb.val() })
  $mb.val('')
