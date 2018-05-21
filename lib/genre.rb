class Genre

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @@all << name
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select do |songs|
      songs.genre == self
    end
  end

  def new_song(name, artist)
    self.songs << Song.new(name, artist, self)
  end

end
