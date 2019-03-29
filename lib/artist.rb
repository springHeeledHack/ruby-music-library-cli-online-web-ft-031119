require 'pry'
class Artist
  @@all = []

  def self.all
    @@all
  end

  def self.destroy_all
    @@all.clear
  end

  def self.create(name)
    artist = Artist.new(name)
    artist.save
    artist
  end

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def save
    @@all << self
  end

  def add_song(song)
    if song.artist.nil?
      song.artist = self
      @songs << song
    end
  end

  def genres
    self.songs.each do |value|
    end
  end

end
