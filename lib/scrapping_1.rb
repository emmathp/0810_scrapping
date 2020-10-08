require 'rubygems'
require 'nokogiri'
require 'open-uri'


page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))   

crypto_keys = page.css("td.cmc-table__cell--sort-by__symbol > div").map{|x| x.text}
crypto_prices = page.css("td.cmc-table__cell--sort-by__price > a").map{|x| x.text}

crypto = Hash[crypto_keys.zip(crypto_prices)]
crypto = crypto.map {|key, value| {key => value}}
print crypto
 







