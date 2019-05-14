require 'pry'
class Song
  attr_accessor :name
  attr_reader :artist, :genre


  @@all = []

  def initialize(name, artist=nil, genre=nil)
    @name = name
    if artist != nil
      self.artist = (artist)
    end
    if genre != nil
      self.genre = (genre)
    end
    save
  end

  def artist=(artist)
    @artist = artist
    @artist.add_song(self)
  end

  def genre=(genre)
    @genre = genre
    if @genre.songs.include?(self) == false
      @genre.songs << self
    end
  end

  def save
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.create(name)
    self.new(name)
  end

  def self.find_by_name(name)
    @@all.detect(name) {|song| song.name == name}
  end

  def self.find_or_create_by_name(name)
    @@all.detect(name) {|song| song.name == name}
  end

  def self.destroy_all
    @@all.clear
  end



end
