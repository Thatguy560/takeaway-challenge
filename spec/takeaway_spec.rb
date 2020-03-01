require 'takeaway.rb'
describe Takeaway do 
  subject(:takeaway) { described_class.new(menu: menu) }
  let(:menu) { double(:menu, print: printed_menu) }
  # When we create an object menu and call print method on it
  # we're expecting to recieve a hash of printed menu.
  let(:printed_menu) { "Fish: £5.00, Chips: £3.00" }
  # printed_menu is the hash name and we're setting it equal
  # the hash { "Fish: £5.00" }  
  
  it "expects to see a list of dishes with prices." do
    expect(subject.print_menu).to eq(printed_menu)
  end

end