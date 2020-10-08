require_relative '../lib/mairie_christmas'

=begin
    1. tester s'il recupère mail
    2. tester si arrays présent
    3. tester si hash présent
=end

describe "#get_townhall_email" do
    it "should not be nil"
        expect(get_townhall_email("https://www.annuaire-des-mairies.com/95/avernes.html")).not_to be_nil
    end
end

describe "#get_townhall_urls" do
    it "should return an array of townhall urls"
      expect(get_townhall_urls("http://annuaire-des-mairies.com/val-d-oise.html")).to be_instance_of Array
  end
end
        

#expect(townhalls_hash_final("je ne sais pas quoi")).to be_instance_of Hash









=begin code qui traînait sur git
    
describe "the get_townhall_email method" do
  it "should return an array" do
    expect(get_townhall_email("http://www.annuaire-des-mairies.com/95/ableiges.html")).to be_instance_of Array
  end
  it "should not be nil" do
  	expect(get_townhall_email("http://www.annuaire-des-mairies.com/95/ableiges.html")).not_to be_nil
  end

end
    
=end
