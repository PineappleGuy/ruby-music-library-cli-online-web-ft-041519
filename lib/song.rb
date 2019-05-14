require 'pry'
class Song

  attr_accessor :name
  attr_reader :artist, :genre

  extend Concerns::Findable

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
    puts "fuck off"
  end

  def self.destroy_all
    @@all.clear
  end

end
