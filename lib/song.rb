class Song
  @@all = []
attr_accessor :artist, :name
  def initialize(name)
    @@all << self
    @name = name
    @artist = artist
  end

  def self.all
    @@all
  end

  def artist_name
    if @artist == nil
      nil
    else
      @artist.name
    end
  end
end
