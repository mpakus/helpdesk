App.messages = App.cable.subscriptions.create 'MessagesChannel',
  received: (data) ->
    $('#messages').append @renderMessage(data)

  renderMessage: (data) ->
    """
    <li>
      <b>#{data.message}</b>
    </li>
    """
