class MessagesChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'messages'
  end

  def receive(data)
    Message::Create.call body: data['message']
  end
end
