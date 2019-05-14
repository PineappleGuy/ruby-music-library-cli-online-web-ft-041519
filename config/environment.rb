require 'bundler'
Bundler.require

module Concerns
  module Findable
    
    def find_by_name(name)
      @@all.detect(name) {|song| song.name == name}
    end
  end
end

require_all 'lib'
