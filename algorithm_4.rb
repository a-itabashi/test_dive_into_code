def switch_text(str)
  aray = str.split("")
    
  box = []  
  aray.each do |i|
    if i.upcase == i
        box << i.downcase
    else
       box << i.upcase
    end
  end
    p box.join
    
end

switch_text("abCD")