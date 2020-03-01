require 'menu.rb'
describe Menu do 
  subject(:menu) { described_class.new(dishes) }
  let(:dishes) do { Fish: 5.00, Chips: 3.00 } end 
    # let(:dishes) - This instantiates a new instance variable called dishes
    # and sets it equal to a a new hash which we can iterate through.
    
  it "has a list of dishes with prices" do
    expect(subject.dishes).to eq(dishes)
  end
  
  it "prints a list of dishes with their prices." do
    printed_menu = "Fish £5.00, Chips £3.00"
    expect(subject.print).to eq(printed_menu)
  end

# I would like to be able to select some number 
# of several available dishes

  it "allows you to select a number of dishes with their prices" do
    expect(subject).to eq
    
  end




end 

