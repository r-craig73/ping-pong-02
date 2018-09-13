require('rspec')
require('ping_pong')

describe('#ping_pong') do
  it('counts to the provided number') do
    expect(ping_pong(2)).to(eq([1, 2]))
  end

  it('returns a ping string for a number divisible by 3') do
    expect(ping_pong(3)).to(eq([1, 2, 'ping']))
  end

  it('returns a pong string for a number divisible by 5') do
    expect(ping_pong(5)).to(eq([1, 2, 'ping', 4, 'pong']))
  end

  it('returns a PINGPONG string for a number divisible by 3 AND 5') do
    expect(ping_pong(15)).to(eq([1, 2, 'ping', 4, 'pong', 'ping', 7, 8, 'ping', 'pong', 11, 'ping', 13, 14, 'PINGPONG']))
  end
end
