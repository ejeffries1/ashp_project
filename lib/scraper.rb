class Scraper
  attr_reader :url
  
  def initialize(url)
   @url = url
    end
    binding.pry
  end
  
  def drug
     html =  @doc = NOKOGIRI::HTML(open(url))
     
     @doc.css(".main main-container").each do |drugs|
      drug = drugs.css(".odd")
    end
  end
end

drugs = Scraper.new("https://www.ashp.org/Drug-Shortages/Current-Shortages/Drug-Shortages-List?page=CurrentShortages")