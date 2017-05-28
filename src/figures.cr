require "./figures/*"
require "kemal"

module Figures
  include Router
  ws "/" do |socket|
    handler = Handler.new(socket)
    socket.on_message do |message|
      message_type = JSON.parse(message)["type"]
      Router::ROUTES.has_key?(message_type)
    end
  end

  Kemal.run
end
