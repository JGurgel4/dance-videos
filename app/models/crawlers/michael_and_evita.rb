module Crawlers
  class MichaelAndEvita
    attr_accessor(:start_url, :video_urls)

    def initialize(start_url)
      self.start_url = start_url
      self.video_urls = []
    end

    def crawl_page
      response = HTTParty.get(start_url)
      if response.code != 200
        raise "Could not crawl #{start_url}"
      end

      html = response.body

      video_url = nil
      if html =~ /\<iframe\ src=\"(\/\/player.vimeo.com\/video\/\d+\?)\"/
        video_url = $1
        video_urls << video_url
      end
    end
    
  end
end
