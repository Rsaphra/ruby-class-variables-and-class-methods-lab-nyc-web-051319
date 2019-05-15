require 'pry'

class Song
  attr_accessor :artist, :name, :genre, :artists, :genres, :genre_count

  @@count = 0
  @@artists = []
  @@artist_count = {}
  @@genres = []
  @@genre_count = {}

###getter methods
  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    @@genre_count
  end

  def self.genres
    #binding.pry
    @@genres.uniq
  end

  def self.artist_count
    @@artist_count
  end

##procedure methods
  def add_attributes(name, artist, genre)
    #binding.pry
    @artist = artist
    @name = name
    @genre = genre
  end

  def add_genre_count
    #binding.pry
    if @@genre_count.key?(@genre)
      @@genre_count[@genre] += 1
    else
      @@genre_count[@genre] = 1
    end
  end

  def add_artist_count
    if @@artist_count.key?(@artist)
      @@artist_count[@artist] += 1
    else
      @@artist_count[@artist] = 1
    end
  end

  def add_genre
      @@genres.push(@genre)
  end

  def add_artist
    @@artists.push(@artist)
  end

##initialize
  def initialize(name, artist, genre)
    add_attributes(name, artist, genre)
    @@count += 1
    add_genre
    add_artist
    add_genre_count
    add_artist_count
    #binding.pry
  end

end
