require 'rspec'
require_relative "../lib/rover.rb"

describe 'Rover' do
  it 'should have a position' do
    rover = Rover.new([0, 0, "N"])
    expect(Rover.current_position).to eq([0, 0, N])
  end
end
