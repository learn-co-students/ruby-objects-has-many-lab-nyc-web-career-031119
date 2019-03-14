require 'pry'
class Artist
  @@songs = []

  attr_reader :name, :songs
  def initialize(name)
    @name = name
    @songs = []

  end


  def add_song(song)
     song.artist = self
    @songs << song
    @@songs << song
  end

  def add_song_by_name(song)
    new_song = Song.new(song)
    @songs << new_song
    @@songs << new_song
    new_song.artist = self
  end

  def self.song_count
    @@songs.length
  end

end
