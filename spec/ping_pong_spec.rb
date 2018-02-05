require('rspec')
require('ping_pong')

describe('#ping_pong') do
  it("counts to a given number and returns ping for %3 pong for %5 and PINGPONG for %15") do
     expect(ping_pong(15)).to(eq([1,2,"ping",4,"pong","ping",7,8,"ping","pong",11,"ping",13,14,"PINGPONG"]))
  end
    # it("counts to a given number and returns ping for %3 pong for %5") do
    #    expect(ping_pong(5)).to(eq([1,2,"ping",4,"pong"]))
    # end
end


  # 1. It can count to to the provided number.
  #   * example input: 2
  #   * example output: An array [1,2]
  # 2. A number that is divisible by 3 but not 5 returns the word "ping."
  #   * example input: 3
  #   * example output: [1,2,ping]
  # 3. A number that is divisible by 5 but not 3 returns the word "pong."
  #   * example input: 5
  #   * example output: [1,2,ping,4,pong]
  # 4. A number that is divisible by 3 AND 5 (example input: 15) returns the word "pingpong."
  #   * example input: 15
  #   * example output: [1,2,ping,4,pong,ping,7,8,ping,pong,11,ping,13,14,pingpong]
