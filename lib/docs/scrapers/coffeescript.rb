module Docs
  class Coffeescript < UrlScraper
    self.name = 'CoffeeScript'
    self.type = 'coffeescript'
    self.release = '1.12.3'
    self.base_url = 'http://coffeescript.org'
    self.links = {
      home: 'http://coffeescript.org',
      code: 'https://github.com/jashkenas/coffeescript'
    }

    html_filters.push 'coffeescript/clean_html', 'coffeescript/entries', 'title'

    options[:title] = 'CoffeeScript'
    options[:container] = '.container'
    options[:skip_links] = true

    options[:attribution] = <<-HTML
      &copy; 2009&ndash;2017 Jeremy Ashkenas<br>
      Licensed under the MIT License.
    HTML
  end
end
