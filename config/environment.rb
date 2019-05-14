require 'bundler'
Bundler.require

module Concerns
  module Findable
    def find_by_name(name)
      self.all.detect(name) {|x| x.name == name}
    end

    def find_or_create_by_name(name)
      if find_by_name(name) == nil
        self.new(name)
      end
    end

  end
end

require_all 'lib'
