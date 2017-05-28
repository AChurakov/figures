require "uuid"

module Game
  class Player

    getter :handler
    getter :figure
    getter :id
    getter :nickname

    def initialize(@handler : HTTP::WebSocket, @figure : Int32, @nickname : String)
      @online = true
      @id = UUID.generate
    end

    def check_figure
      if check_lentgh_figure(@figure)
      else
      end
    end

    def update(status : Bool)
      @online = status
    end
  end
end
