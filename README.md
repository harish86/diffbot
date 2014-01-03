diffbot
=======

Diffbot, a ruby library to access APIs provided by diffbot.com


Requirements
============
Diffbot ruby library requires two ruby gems, 'open-uri' and 'json'


Installation
============
1. Download this library and place it in a directory which is accessible


2. Require the library

require 'diffbot/base'


3. Setup the configuration and make sure it is loaded when the application is loaded

Diffbot::Base.configure do |config|
  config.token = '<developer-token-provided-by-diffbot.com>'
end


4. Usage

Diffbot::Article.extract(url, options = {})

  where,
    url     =>  Article URL to process
    options =>  An hash to specify optional parameters accepted by the Article API of diffbot.com. More info http://diffbot.com/products/automatic/

eg: article_data = Diffbot::Article.extract('http://www.wired.co.uk/news/archive/2012-06/01/diffbot', fields: 'meta, icon')

The json response from the Article API is parsed using the json library and the resultant hash is returned.



NOTE: This library currently includes methods to access only the article API provided by diffbot.com. Access to other APIs are yet to be implemented. For any quries write to me at p.harish86@gmail.com
