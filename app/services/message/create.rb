class Message::Create < ApplicationService
  def initialize(body:)
    @body = body
  end

  def call
    message = Message.create!(body: @body)
    ActionCable.server.broadcast 'messages', message: message.body
  end
end
