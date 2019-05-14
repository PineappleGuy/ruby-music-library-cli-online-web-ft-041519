class Genre
  attr_accessor :name

  extend Concerns::Findable

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def save
    self.class.all << self
  end

  def songs
    Song.all.collect do |song|
      if song.genre == self.name
        @songs << song
      end
    end
    @songs
  end

  def artists
    collection = []
    @songs.collect do |song|
      if collection.include?(song.artist) == false
        collection << song.artist
      end
    end
    collection
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
