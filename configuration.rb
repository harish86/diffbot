module Diffbot
  class Configuration
    def self.token=(value)
      @@token = value
    end

    def self.token
      @@token
    end
  end
end
