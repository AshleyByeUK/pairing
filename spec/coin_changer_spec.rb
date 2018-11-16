require 'coin_changer'

describe CoinChanger do
  before(:all) do
    @changer = CoinChanger.new
  end

  it 'changes the correct amount of coins' do
    assertChanges(0, [])
    assertChanges(1, [1])
    assertChanges(2, [2])
    assertChanges(3, [2, 1])
    assertChanges(4, [2, 2])
    assertChanges(5, [5])
    assertChanges(388, [200, 100, 50, 20, 10, 5, 2, 1])
  end

  it 'changes coins in another denomination' do
    changer = CoinChanger.new([75, 50, 10, 1])
    expect(changer.change(212)).to eq [75, 75, 50, 10, 1, 1]
  end
end

private

def assertChanges(amount, result)
  expect(@changer.change(amount)).to eq result
end
