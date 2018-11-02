require 'rspec'
require_relative "../lib/rover.rb"

describe 'Rover' do
  it 'should have an initial position' do
    rover = Rover.new([0, 0, "N"], [])
    expect(rover.current_position).to eq([0, 0, "N"])
  end

end
