module Diffbot
  class Article
    END_POINT = 'http://api.diffbot.com/v2/article'

    def self.extract(url, options = {})
      uri = URI.parse(END_POINT)
      uri.query = URI.encode_www_form(options.merge(token: Diffbot::Configuration.token, url: url))
      JSON.parse(uri.open.read)
    end
  end
end
