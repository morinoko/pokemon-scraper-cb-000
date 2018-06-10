class Pokemon
  attr_accessor :id, :name, :type, :db
  
  def initialize(name:, type:, db:)
    @name = name
    @type = type
    @db = db
  end
  
  def self.save(id, name, type, db)
    db.execute("INSERT INTO pokemon (id, name, type) VALUES (?, ?)", id, name, type)
  end
  
  def find
    
  end
end
