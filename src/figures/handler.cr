class Handler
  getter :socket

  @last_pong : Bool

  def initialize(@socket : HTTP::WebSocket)
    @last_pong = true
    @socket.on_pong do
      @last_pong = true
    end
  end

  def on_message(&block : String ->)
    @socket.on_message do |message|
      begin
        block.call
      rescue err
        puts err
      end
    end
  end

  def ping(message)
    if @last_pong
      @socket.ping(message)
      @last_pong = false
    else
      # to do close socket
    end
  end

  # def close
  #   socket.close
  # end
end
