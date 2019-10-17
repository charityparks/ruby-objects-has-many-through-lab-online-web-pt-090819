class Song 
  attr_accessor :name, :artist, :genre
  
  def name
    @name
  end
  
  def name=(name)
    @name = name
  end
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@all << self
  end
end