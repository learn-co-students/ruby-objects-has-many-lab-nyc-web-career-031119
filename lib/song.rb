class Song

  @@all = []

  def self.all
    @@all
  end

  attr_accessor :name, :artist_name
  attr_reader :artist

  def initialize(name)
    @name = name
    @@all << self
  end

  def artist=(artist)
    @artist = artist
    @artist_name = @artist.name
  end
end
