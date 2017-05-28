require "uuid"

module Game
  class Room
    def initialize(@player_one : Player, @player_two : Player)
      @room_id = UUID.generate
    end
  end
end
