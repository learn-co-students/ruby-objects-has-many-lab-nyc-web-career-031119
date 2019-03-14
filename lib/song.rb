require 'pry'
class Song
  @@all = []

  attr_accessor :artist, :name
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
    if self.artist != nil
      self.artist.name
    else
      self.artist
    end
  end
end
