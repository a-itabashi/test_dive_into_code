def repeat_string(str)
  length = str.length
  if length <= 4
    puts str * 3
  else
    shorten = str.slice(0..3)
    puts shorten * 3
  end
end

repeat_string('Python')

def puts_hoge(number)
  number.each do |i|
    if i % 3 == 0 || i.to_s.include?("3")
      puts "hoge"
    else
      puts "#{i}"
    end
  end
end

puts_hoge(1..40)