class Genre
  extend Concerns::Findable

attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    save
  end
  
  def self.create(name)
    self.new(name) 
  end
  
  def save 
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.destroy_all
    @@all.clear
  end
  
  def songs
<<<<<<< HEAD
    Song.all.select { |song| song.genre == self }
=======
    Song.all.map { |song| song if song.genre == self }
>>>>>>> ef815047a0da111c8bcc48a69a02c647867f454d
  end
  
  def artists
    collection = songs.collect { |song| song.artist }
    collection.uniq
  end
  
end