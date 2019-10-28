class Scraper
  
  def current_drugs
    @doc = NOKOGIRI::HTML(open("https://www.ashp.org/Drug-Shortages/Current-Shortages/Drug-Shortages-List?page=CurrentShortages"))
    @doc.css(".main main-container").each do |drugs|
      
    end
    binding.pry
  end
end