require 'player'

describe Player do
  subject(:player) { described_class.new("Joe")}

  it 'returns the players name' do
    expect(subject.name).to eq "Joe"
  end
end
