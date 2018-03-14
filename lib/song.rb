require 'pry'
class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    return @@count
  end

  def self.artists
    return @@artists.uniq
  end

  def self.genres
    return @@genres.uniq
  end

  def self.genre_count
    hash = Hash.new(0)
    @@genres.each do |genre|
      hash[genre] += 1
    end
    return hash
  end

  def self.artist_count
    hash = Hash.new(0)
    @@artists.each do |artist|
      hash[artist] += 1
    end
    return hash
  end


end
