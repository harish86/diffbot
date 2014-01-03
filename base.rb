require 'open-uri'
require 'json'

require './configuration'
require './article'

module Diffbot
  class Base
    def self.configure(&block)
      yield Diffbot::Configuration
    end
  end
end
