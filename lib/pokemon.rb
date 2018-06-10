class Pokemon
  attr_accessor :id, :name, :type, :db
  
  def initialize(id:, name:, type:, db:)
    @id = id
    @name = name
    @type = type
    @db = db
  end
  
  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?);", name, type)
  end
  
  def self.find(id, db)
    pokemon_data = db.execute("SELECT * FROM pokemon WHERE id=#{id};")
    pokemon = self.new(pokemon_data[0], pokemon_data[1], pokemon_data[2])
    pokemon
  end
end
