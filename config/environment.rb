require 'bundler'
Bundler.require

module Concerns
  module Findable
    def call(name)
      Song.find_by_name(name)
    end
  end
end

require_all 'lib'
