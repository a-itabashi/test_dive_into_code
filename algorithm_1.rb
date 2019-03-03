def bigger(a, b)
    if a > b
        return a
    else
        return b
    end
end

# biggestは最大値を出力するメソッド
def biggest(a, b, c)
    bigger_one = bigger(a, b)
    if bigger_one == a
        biggest = bigger(a, c)
    elsif bigger_one == b
        biggest = bigger(b, c)
    end
    return biggest
end

def median(a, b, c)
    biggest_number = biggest(a, b, c)

    if biggest_number == a
        median_number = bigger(b, c)
   
    elsif biggest_number == b
        median_number = bigger(a, c)
    
    elsif biggest_number == c
        median_number = bigger(a, b)
    end
   
    return median_number
end

# median(5,7,2)と言う記述で、def medianのメソッドのなかに５と7と2の値を送り込む。
puts(median(5,7,2))