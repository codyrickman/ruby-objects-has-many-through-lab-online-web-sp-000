class Artist
  attr_reader :name
  attr_accessor :genres
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  def new_song(name, genre)
    new_song = Song.new(name, self, genre)
  end
  def self.all
    @@all
  end
  def songs
    songs = Song.all
    songs.select {|song| song.artist == self}
  end
  def genres
    songs = Song.all
    song_list = songs.select {|song| song.artist == self}
    song_list.collect {|song| song.genre}
  end
end
