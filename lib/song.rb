require 'pry'

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @@count += 1
    @@artists << artist
    @@genres << genre
    self.name = name
    self.artist = artist
    self.genre = genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genre_hash = {}
    @@genres.each { |x|
      genre_hash[x] = @@genres.count(x)
    }
    genre_hash
  end

  def self.artist_count
    artist_hash = {}
    @@artists.each { |x|
      artist_hash[x] = @@artists.count(x)
    }
    artist_hash
  end
end
