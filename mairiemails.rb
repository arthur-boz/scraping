require 'nokogiri'
require 'open-uri'
require 'rubygems'


def get_the_email_of_a_townhal_from_its_webpage(url)

page  = Nokogiri::HTML(open(url))

 mail = page.xpath("//td")[7].text

puts mail

end

def get_all_the_urls_of_val_doise_townhalls
  urls=[]
  page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))
  page.css('a.lientxt').each do |node|
    liens = node ['href']
    pre = "http://annuaire-des-mairies.com/"

    urls << "#{pre }""#{ liens}"

  end

  return urls
end

def get_the_email_of_all_townhal_from_its_webpage (urls)


all_emails=[]
urls.each do |url|
page = Nokogiri::HTML(open(url))
    url = page.xpath("//td")[7].text

  all_emails << url

 end
 puts all_emails
end






get_all_the_urls_of_val_doise_townhalls
urls = get_all_the_urls_of_val_doise_townhalls
get_the_email_of_all_townhal_from_its_webpage(urls)
