require 'nokogiri'
require 'open-uri'
require 'rubygems'
def legrostrader
data = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
data.css('table tr[id*="id-"]').each do |line|
            price = line.css('td')[4].css('a').text
            brand = line.css('td')[1].css('a')[1].text
            values = { brand => price }
            puts values
        end
end
legrostrader
