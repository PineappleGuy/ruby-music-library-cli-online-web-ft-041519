require 'pry'
require 'bundler'
Bundler.require

module Concerns
  module Findable

    def find_by_name(name)
      self.all.detect(name) {|x| x.name == name}
    end

    def find_or_create_by_name(name)
      Song.all.each do |song|
        if song.name == name
          return song
        end
        Song.create(name)
    end

  end
end

require_all 'lib'
