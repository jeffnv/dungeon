class Dungeon
  
  attr_accessor :player
  
  def add_room(ref, name, desc, cnxns)
    @rooms << Room.new(ref, name, desc, cnxns)
  end
  
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

dung = Dungeon.new('sarah')
dung.add_room(:mens_room, "Mens Room", "A smelly bathroom, TP on the ground.", {:west => :womens_room})
dung.add_room(:womens_room, "Womens Room", "Clean and pristine. They must use the men's room.", {:east => :mens_room})