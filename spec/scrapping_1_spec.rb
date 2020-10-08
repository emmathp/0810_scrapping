require_relative '../lib/scrapping_1'

#Pour les tests, inspire-toi de la ressource plus haut. 
#Il n'y a pas besoin de faire 36 000 tests, il faut juste arriver à tester 
#1) le fonctionnement de base de ton programme (pas d'erreur ni de retour vide) 
#et 2) que ton programme sort bien un array cohérent (vérifier la présence de 2-3 cryptomonnaies, vérifier que l’array est de taille cohérente, etc.).



=begin
describe "your test description" do
  let(:hash_keys) { [:one, :two].sort } # and so on
  subject(:array) { some_method_to_fetch_your_array }

describe "#crypto" do
  it "shows values with corresponding currencies"
      # if you want to ensure that at least the required keys exist
      expect("BTC").to include("$10,627.22")
  end
end

=begin
specify do
  expect(array.count).to eq 50

array.each_with_index do |hash, i|
  expect(hash.keys).to contain_exactly(*hash_keys), "Failed at index #{i}"
end

array.each do |hash|
      expect("BTC").to include("$10,627.22")
      expect("ETH").to include("$338.77")
      expect("USDT").to include("$1.00")
=end