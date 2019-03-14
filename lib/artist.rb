require_relative "./song.rb"
require 'pry'
class Artist
  attr_accessor :name, :songs, :artist, :all
  def initialize(name)
    @name = name
    @songs = []
  end

  def name
    @name
  end

  def songs
    @songs
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
    @songs << song
  end

  def self.song_count
    Song.all.length
  end


end
