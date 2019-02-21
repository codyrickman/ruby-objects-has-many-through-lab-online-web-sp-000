class Genre
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end
  def songs
    songs = Song.all
    songs.select {|song| song.genre == self}
  end
  def artists
    songs = Song.all
    song_list = songs.select {|song| song.genre == self}
    song_list.collect {|song| song.artist}
  end
end
