class Artist
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end
  
  def self.all
    @@all
  end  
  
  def add_song(song)
    @songs << song
  end
  
  def songs
    @songs
  end
  
  def self.find_or_create_by_name(name)
    artist = Artist.all.select {|artist| artist.name == name}
    if artist == nil
      artist = artist.new(name)
    end
    artist
    
  end
end