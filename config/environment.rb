require 'pry'
require 'bundler'
Bundler.require

module Concerns
  module Findable

    def find_by_name(name)
      self.all.detect(name) {|x| x.name == name}

    end

  #  def find_or_create_by_name(name)
  #    x = self.find_by_name(name)
    #  if  x == nil
    #    self.create(name)
    #  else
    #    x
    #  end
  #  end

  end
end

require_all 'lib'
