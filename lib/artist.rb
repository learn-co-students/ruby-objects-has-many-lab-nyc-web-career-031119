class Artist
  attr_reader :name
  attr_accessor :songs

  @@count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
    @@count += 1
  end

  def add_song_by_name(name)
    new = Song.new(name)
    @songs << new
    new.artist = self
    @@count += 1
  end

  def self.song_count
    @@count
  end
end
