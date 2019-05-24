class Genre
@@all = []
attr_accessor :name


def initialize(name)
  @name = name
  @@all << self unless @@all.include?(self)
end

def songs
  Song.all.select {|song| song.genre == self}
end

def artists
  Artist.all.select {|artist| artist.genre == self}
end

def self.all
  @@all
end






end
