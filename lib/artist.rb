require 'pry'
class Artist
attr_accessor :name, :songs

counter = 0

def initialize(name)
  @name = name
  #binding.pry
end

def songs
  Song.all.select do |song|
    #binding.pry
    song.artist == self

  end
end

def add_song(song)
  #binding.pry
  song.artist = self
end

def add_song_by_name(song_name)
  #binding.pry
  song = Song.new(song_name)
  add_song(song)
end

def self.song_count
  Song.all.count
end

end
