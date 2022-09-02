require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

westlife = Band.new("Westlife", "New Orleans")
littlemix = Band.new("Litte Mix", "Tamper")


oval = Venue.new("Oval Office", "New York")
bungoma = Venue.new("airport", "Bungoma")


concert = Concert.new("2020/3/23", westlife, oval)
concert1 = Concert.new("2022/4/02", littlemix, bungoma)
concert2 = Concert.new("2022/5/17", littlemix, oval)
concert3 = Concert.new("2021/3/31", westlife, bungoma)
concert4 = Concert.new("2017/12/05", littlemix, oval)
concert5 = Concert.new("2023/5/11", westlife, oval)






binding.pry
0 #leave this here to ensure binding.pry isn't the last line


