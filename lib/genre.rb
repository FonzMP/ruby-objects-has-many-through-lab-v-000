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

  def artists
    Artists.all.select do |artists|
      artist.genre == self
    end
  end

end
