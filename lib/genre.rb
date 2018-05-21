class Genre

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def songs
    Song.all.select do |songs|
      songs.genre == self
    end
  end

  def artist
    Song.all.select do |songs|
      artist.songs.genre == self
  end

end
