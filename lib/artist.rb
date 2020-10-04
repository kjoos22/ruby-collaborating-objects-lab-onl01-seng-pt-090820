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
    artists = Artist.all
    selected_artist = artits.select |artist|
      artist.name == name
    end
    if selected_artist == nil
      selected_artist = Artist.new(name)
    end
    selected_artist
  end
end