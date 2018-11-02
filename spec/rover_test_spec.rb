require 'rspec'
require_relative "../lib/rover.rb"

describe 'Rover' do
  let(:directions) { double "directions" }
  it 'should have an initial position' do
    rover = Rover.new([0, 0, "N"], [])
    expect(rover.current_position).to eq([0, 0, "N"])
  end

  it 'should move following nasa instructions one step up' do
    directions = double("directions")
    allow(directions).to receive_message_chain("new.move") {[1, 0, "N"]}
    rover = Rover.new([0, 0, "N"], ["M"])
    rover.move(directions)
    expect(rover.current_position).to eq([1, 0, "N"])
  end

  it 'should throw an error if we go outside of bounds' do
    directions = double("directions")
    allow(directions).to receive_message_chain("new.move") {[1, 0, "N"]}
    rover = Rover.new([0, 0, "N"], ["M"])
    rover.move(directions)
    expect(rover.current_position).to eq([1, 0, "N"])
  end
end
