require 'rubygems'
require 'nokogiri'         
require 'open-uri'


#Get the townhall email from an url
def get_townhall_email(townhall_url)

  page = Nokogiri::HTML(URI.open(townhall_url))  
  email = page.xpath('//html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]/text()')
  return email

end 


#Get the townhall urls from the listing page
def get_townhall_urls(url)

  page = Nokogiri::HTML(URI.open(url))  
  #townhall_url = page.xpath("//a/@href").map {|x| x.value}
  townhall_urls_array_incomplete = page.css('a[href].lientxt').map {|x| x["href"]}
  #remove the dot at the beginning of the url
  townhall_urls_array_incomplete = townhall_urls_array_incomplete.map {|x| x[2..]}
  townhall_urls_array = townhall_urls_array_incomplete.map {|x| "http://annuaire-des-mairies.com/" + x}
  return townhall_urls_array

end  




#Get the townhall names from the listing page
def get_townhall_names(url)
  page = Nokogiri::HTML(URI.open(url))  
  return townhall_names_array = page.xpath("//a[contains(@class, 'lientxt')]/text()").map {|x| x.to_s.downcase}
end 


townhall_urls_array = get_townhall_urls("http://annuaire-des-mairies.com/val-d-oise.html")
townhall_names_array = get_townhall_names("http://annuaire-des-mairies.com/val-d-oise.html")

townhall_emails_array = []

for url in townhall_urls_array do 
  begin
    i = get_townhall_email(url)

    townhall_emails_array.push(i.to_s)
    
  rescue => e
    return nil
  end
end



townhalls_hash = Hash[townhall_names_array.zip(townhall_emails_array)]
townhalls_hash_final = townhalls_hash.map {|key, value| {key => value}}
print townhalls_hash_final