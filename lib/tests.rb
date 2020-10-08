
column = ["first_name", "last_name", "email"]

name = [["Damien", "Abad\"]", ["damien.abad@assemblee-nationale.fr"]],["Damien", "Abad\"]", ["damien.abad@assemblee-nationale.fr"]],["Damien", "Abad\"]", ["damien.abad@assemblee-nationale.fr"]]]

name_final = name.flatten


column_final = column * 3


def hash(name_final,column_final)
  my_hash = Hash[column_final.zip(name_final.map)]
  puts my_hash
end

hash_final = hash(name_final,column_final)


=begin
def hash(column,name)
  my_hash = Hash[column.zip(name.map)]
  puts my_hash
end

prendre array.array(0)
hashcrypto = hash(column,name)
#EMMA

def money
  doc = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))   
  doc.css("td.cmc-table__cell--sort-by__symbol > div").each do |symbol|
   print symbol.text
  end
end
money

#on cherche a regrouper les valeurs des crypto dans un array. On va dire au css de prendre tous les contenus des a dans une class.
def value
  doc = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))   
  doc.css("td.cmc-table__cell--sort-by__price > a").each do |prices|
    print prices.text
  end
end
value

#mettre les array key et value dans un hash

#def hash(crypto_keys,cryto_value)

def hash(money,value)
  my_hash = Hash[money.zip(value.map)]
  puts my_hash
end

hashcrypto = hash(money,value)

#crypto = crypto.map {|key, value| {key => value}}


crypto = Hash[crypto_keys.zip(crypto_value)]
crypto = crypto.map {|key, value| {key => value}}




#DIMITRI

#page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))   

#crypto_keys = page.css("td.cmc-table__cell--sort-by__symbol > div").map{|x| x.text}
#crypto_prices = page.css("td.cmc-table__cell--sort-by__price > a").map{|x| x.text}


#crypto = Hash[crypto_keys.zip(crypto_prices)]
#crypto = crypto.map {|key, value| {key => value}}


Get the deputes contact from the listing page
def get_depute_names(url)
  page = Nokogiri::HTML(URI.open(url))  
  return townhall_names_array = page.xpath("//a[contains(@class, 'lientxt')]/text()").map {|x| x.to_s.downcase}
end 
=end