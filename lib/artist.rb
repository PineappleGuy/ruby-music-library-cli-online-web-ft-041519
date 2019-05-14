class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []

    save
  end

  def save
    self.class.all << self
  end

  def add_song(song)
    if song.artist == nil
      song.artist = self
    end
    if self.songs.include?(song) == false
      @songs << song
    end
  end

  def genres
    collection = []
    @songs.collect do |song|
      if collection.include?(song.genre) == false
        collection << song.genre
      end
    end

    collection

  end

  def songs
    @songs
  end

  def self.all
    @@all
  end

  def self.create(name)
    self.new(name)
  end

  def self.destroy_all
    @@all.clear
  end

end
