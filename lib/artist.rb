class Artist

  attr_accessor :name, :songs, :all

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def songs
    self.all.select do |song|
      song.artist == self
    end
  end

  def genres
    self.songs.select do |song|
      song.genre
    end
  end

end
