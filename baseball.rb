my_num=Array.new
count=0
rand_num=(1..9).to_a.sample(3).sort
while true
    count+=1
    ball=0, strike=0
    for i in 0..2 do
        my_num[i]=gets.chomp
    end
    
    for i in 0..2
        if rand_num[i]==my_num[i]
            strike+=1
        end
        for j in 0..2 do
            if rand_num[i]==my_num[j] && i!=j
                ball+=1
            end
        end
    end
    if strike==3
        puts "정답입니다! #{count}번 만에 맞췄습니다."
        break
    end
    puts "strike: #{strike}"
    puts "ball: #{ball}"
end