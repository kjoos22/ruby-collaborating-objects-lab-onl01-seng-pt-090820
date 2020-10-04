class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    files = []
    files = Dir.entries(@path)
    files
  end
    
end