require 'rubygems'
require 'nokogiri'         
require 'open-uri'


def get_depute(url)

  page = Nokogiri::HTML(URI.open(url))  
  #email = page.css('dd a.email').map {|x| x["href"]}
  email = page.xpath('//*/dd[2]/a/text()').map {|x| x.to_s }
  name = page.xpath('//*/article/div[2]/h1/text()').map {|x| x.to_s }
  name = name.to_s.split
  first_name = name[1].to_s
  last_name = name[2].to_s
  array = []
  array = array.push(first_name)
  array = array.push(last_name)
  array = array + email
  return array
end 


#Get the depute urls from the listing page
def get_depute_urls(url)

  page = Nokogiri::HTML(URI.open(url))  
  #depute_url = page.xpath("//a/@href").map {|x| x.value}
  #depute_urls_array_incomplete = page.css('ul[col3] li + a').map {|x| x["href"]}
  #depute_urls_array_incomplete = page.xpath("//body//a").map {|x| x["href"]}
  depute_urls_array_incomplete = page.xpath("//ul[contains(@class, 'col3')]//a").map {|x| x.values}
  #remove the dot at the beginning of the url
  depute_urls_array_incomplete = depute_urls_array_incomplete.map {|x| x[0]}
  depute_urls_array = depute_urls_array_incomplete.map {|x| "http://www2.assemblee-nationale.fr" + x.to_s}
  return depute_urls_array

end  



depute_urls_array = get_depute_urls("http://www2.assemblee-nationale.fr/deputes/liste/alphabetique")



#Get the emails in an array

depute_array = []
for url in depute_urls_array do 
  
  i = get_depute(url)
  depute_array.append(i)

end


print depute_array



=begin
Get the deputes contact from the listing page
def get_townhall_names(url)
  page = Nokogiri::HTML(URI.open(url))  
  return townhall_names_array = page.xpath("//a[contains(@class, 'lientxt')]/text()").map {|x| x.to_s.downcase}
end 
townhalls_hash = Hash[townhall_names_array.zip(townhall_emails_array)]
townhalls_hash_final = townhalls_hash.map {|key, value| {key => value}}
=end






