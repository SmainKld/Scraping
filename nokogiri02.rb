#Exercice 3

require 'rubygems'
require 'nokogiri'
require 'open-uri'
PAGE_URL = "http://www.alloweb.org/startups-ile-de-france/liste-incubateurs-ile-de-france/"

page = Nokogiri::HTML(open(PAGE_URL))

puts page.css("p/a").text
