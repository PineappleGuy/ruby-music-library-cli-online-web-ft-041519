require 'bundler'
Bundler.require

module Concerns
  module Findable

    def create(name)
      self.new(name)
    end


    def find_by_name(name)
      self.all.detect(name) {|x| x.name == name}
    end

    def find_or_create_by_name(name)
      x = find_by_name(name)
      puts x
      if  x != nil
        x
      else
        create(name)
      end
      puts x
    end

  end
end

require_all 'lib'
