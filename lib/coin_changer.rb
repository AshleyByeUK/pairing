class CoinChanger
  def initialize(coins = [200, 100, 50, 20, 10, 5, 2, 1])
    @coins = coins
  end

  def change(amount)
    change = []
    @coins.each do |coin|
      while amount >= coin
        change << coin
        amount -= coin
      end
    end
    change
  end
end
