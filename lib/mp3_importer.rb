class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    files = []
    files = Dir.children(@path)
    files
  end
  
  def import
    
  end
    
end