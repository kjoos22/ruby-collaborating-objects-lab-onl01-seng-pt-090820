require 'pry'

class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    files = []
    files = Dir.entries(@path)
    binding.pry
    files
  end
    
end