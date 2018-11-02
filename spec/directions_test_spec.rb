require 'rspec'
require_relative "../lib/directions.rb"

describe 'Directions' do
  it 'should change the x coordinate to plus one when moving to the north' do
    directions = Directions.new(0,0,"N")
    directions.move
    expect(directions.move).to eq([1, 0, "N"])
  end
end