require 'coin_changer'

describe CoinChanger do
  before(:all) do
    @changer = CoinChanger.new
  end

  it 'changes the correct amount of coins' do
    assertChanges(0, [])
  end
end

private

def assertChanges(amount, result)
  expect(@changer.change(amount)).to eq result
end
