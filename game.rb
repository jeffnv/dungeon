class dungeon
  
  attr_accessor :player
  
  def initialize(p_name)
    @player = Player.new(p_name)
    @rooms = []
  end
  
  class player
    attr_accessor :name, :location
    
    def initialize(p_name)
      @name = p_name
    end
  end
  
  class Room
    attr_accessor :reference, :name, :description, :connections
    
    def initialize(reference, name, description, connections)
      @reference = reference
      @name = name
      @description = description
      @connections = connections
    end
end


puts "welcome to the dungeon"