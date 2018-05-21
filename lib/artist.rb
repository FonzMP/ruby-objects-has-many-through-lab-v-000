class Artist

  attr_accessor :name, :songs

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
    self.songs << Song.new(name, self, genre)
  end

  def songs
    Song.all.select do |songs|
      songs.artist == self
    end
  end

end
