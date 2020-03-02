require 'takeaway.rb'
describe Takeaway do 
  subject(:takeaway) { described_class.new(menu: menu, order: order) }
  let(:menu) { double(:menu, print: printed_menu) }
  # When we create an object menu and call print method on it
  # we're expecting to recieve a hash of printed menu.
  let(:order) { double(:order) }
  let(:printed_menu) { "Fish: £5.00, Chips: £3.00" }
  # printed_menu is the hash name and the hash 
  # created is { "Fish: £5.00" }  
  
  let(:dishes) do { Fish: 3, Chips: 2 } end
  # 3 and 2 being the quantity
  it "expects to see a list of dishes with prices." do
    expect(subject.print_menu).to eq(printed_menu)
  end
  
  it "allows you to select a number of dishes with their prices" do
    allow(order).to receive(:add).twice
  end

end