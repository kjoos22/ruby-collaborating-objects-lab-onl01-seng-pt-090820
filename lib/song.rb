class Song
  attr_accessor :name, :artist
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.new_by_filename(filename)
    filename = filename.split(" - ")
    song = Song.new(filename[1])
    song.artist = filename[0]
    
  end  
    
  
end