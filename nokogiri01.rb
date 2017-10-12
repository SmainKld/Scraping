require 'rubygems'
require 'open-uri'
require 'nokogiri'
PAGE_URL = "http://annuaire-des-mairies.com/95/vaureal.html"
#doc = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))
#doc.xpath('//p/a/@href').each do |node|
#puts node.text
#end


#Méthode 01
def get_the_email_of_a_townhal_from_its_webpage()
	page = Nokogiri::HTML(open(PAGE_URL))
	email = page.css("p.Style22")[11].text
	puts email
end

get_the_email_of_a_townhal_from_its_webpage()

#Méthode02
def get_all_the_urls_of_val_doise_townhalls()
	page2 = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))
	adressePage = page2.css("a.lientxt")
	adressePage.each {|links| puts links["href"]}
end

get_all_the_urls_of_val_doise_townhalls()
