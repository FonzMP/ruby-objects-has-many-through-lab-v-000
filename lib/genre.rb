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

  def artists
    self.songs.select do |song|
      song.artist
    end 
  end

  def new_song(name, artist)
    Song.new(name, artist, self)
  end

end
