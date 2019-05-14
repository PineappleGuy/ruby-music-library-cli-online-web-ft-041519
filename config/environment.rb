require 'pry'
require 'bundler'
Bundler.require

module Concerns
  module Findable

    def find_by_name(name)
      self.all.detect(name) {|x| x.name == name}
    end

    def find_or_create_by_name(name)
      x = self.find_by_name(name)

      if  x == nil
        Song.all.each do |song|
          puts song.name
        end
        self.create(name)
        Song.all.each do |song|
          puts song.name
        end
      else
        puts x
      end
      Song.all.each do |song|
        puts song.name
      end
    end

  end
end

require_all 'lib'
