class Artist
  extend Concerns::Findable
  
  attr_accessor :name, :song, :genre
  
  @@all = []
  
  def initialize(name)
    @name = name
    save
  end
  
  def self.create(name)
    self.new(name) 
  end
  
  def self.all
    @@all
  end
  
  # --- Methods for saving
  def save 
    @@all << self
  end
  
  def self.destroy_all
    @@all.clear
  end
  
  # --- Instance Methods for finding Elements from other classes related to Artist classes
  def songs
<<<<<<< HEAD
    Song.all.select { |song| song.artist == self }
=======
    Song.all.map { |song| song if song.artist == self }
>>>>>>> ef815047a0da111c8bcc48a69a02c647867f454d
  end
  
  def genres 
    collection = songs.collect { |song| song.genre }
    collection.uniq
  end
  
  # ---Instance Methods for adding relations to other classes
  def add_song(song)
    if song.artist == self
      song.artist
    else
      song.artist = self
    end
  end
  
end