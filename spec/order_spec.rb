require 'order'
describe Order do
subject(:order) { described_class.new(menu) }

let(:menu) { instance_double("menu") }
 # Mock menu that accepts a method .has_dish?
let(:dishes) do { Fish: 3, Chips: 2 } end # Creates a new hash object
  
# I would like to be able to select some number of several 
# available dishes
before do
  allow(menu).to receive(:has_dish?).with(:Fish).and_return(true)
  allow(menu).to receive(:has_dish?).with(:Chips).and_return(true)
end

it "selects several avaliable dishes from the menu" do 
    subject.add(:Fish, 3)
    subject.add(:Chips, 2)
    expect(subject.dishes).to eq(dishes)
  end

  context "does not allow items to be added that are not on the menu" do
  it "raises No Dish Error" do
    allow(menu).to receive(:has_dish?).with(:Steak).and_return(false)
    expect { subject.add(:Steak, 2) }.to raise_error NoDishError, "Steak isn't on the menu."
  end
    
  
  end
end 