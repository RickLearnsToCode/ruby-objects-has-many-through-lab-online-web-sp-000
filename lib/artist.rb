class Artist
  attr_reader :name

  #attr_accessor :songs

  @@all = []

  def initialize(name)
    @name = name
    @@all << self

  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    song = Song.new(name, self, genre)

  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def genre
    Genre.all.select {|genre| genre.artists.include?(self)}
  end






end
