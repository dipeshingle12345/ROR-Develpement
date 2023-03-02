(1..5).each do |i|
    (1..i).each do |j|
        print j
    end
    print "\n"
end
 

n = 1
while n <= 5
  puts "* " * n
  n += 1
end


1.upto(5).each {|n| puts " " * (5 - n) + n.downto(1).to_a.join(" ")}

count = 0
10.times do
  count = count + 1
  stars = "*" * count
  puts stars
end

count = 0
8.times do
  count = count + 1
  stars = "*" * count
  puts stars
end
count = 10
8.times do
  count = count - 1
  stars = "*" * count
  puts stars
end


