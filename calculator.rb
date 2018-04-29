# 계산기 프로그램

print "a: "
a=gets.chomp.to_i       # a입력받기
print "b: "
b=gets.chomp.to_i       # b입력받기

def calculator(a, b)    # 계산기 함수   
    while true do       # 무한 반복
        puts "원하는 연산을 선택해주세요(종료하려면 다른 키를 입력하세요.)"
        puts "1: 덧셈   2: 뺄셈     3: 곱셈     4: 나눗셈"
        menu=gets.chomp.to_i    # menu변수에 사용자의 입력 받기
        # 조건문 - menu변수의 값에 따라 각각 다른 연산 결과를 @result에 담는다.
        if menu==1
            @result=a+b
        elsif menu==2
            @result=a-b
        elsif menu==3
            @result=a*b
        elsif menu==4
            @result=a/b
        else
            break   # 반복문 탈출
        end
        puts @result    # 결과값 출력
    end
end
calculator(a, b)        # calculator 함수 호출