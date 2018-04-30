my_num=Array.new    # 사용자가 맞출 숫자를 담는 배열
count=0             # 시도 횟수를 셀 변수
rand_num=(1..9).to_a.sample(3).sort 
# 1부터 9까지의 숫자 중 세개를 랜덤으로 뽑아 오름차순으로 정렬

while true      # 무한반복
    count+=1    # count 1증가
    ball=0      # ball 변수 : 0으로 초기화
    strike=0    # strike 변수 : 0으로 초기화
    for i in 0..2 do
        my_num[i]=gets.chomp.to_i   
        # my_num[0]부터 my_num[2]까지 사용자로부터 순서대로 입력 받는다.
    end
    
    for i in 0..2
        if rand_num[i]==my_num[i]   # index와 배열에 담긴 값이 모두 같으면
            strike+=1               # strike의 값을 1 증가시킴    
        end
        for j in 0..2 do            # index를 비교하기 위해 또 다른 for문
            if rand_num[i]==my_num[j] && i!=j   # 배열에 담긴 값이 같고 인덱스가 다르면
                ball+=1             # ball의 값을 1 증가시킴
            end
        end
    end
    if strike==3    # 세 숫자를 모두 맞추면
        puts "정답입니다! #{count}번 만에 맞췄습니다."  # count변수 출력
        break       # 무한루프 탈출
    end
    puts "strike: #{strike}"    # strike 출력
    puts "ball: #{ball}"        # ball 출력
end