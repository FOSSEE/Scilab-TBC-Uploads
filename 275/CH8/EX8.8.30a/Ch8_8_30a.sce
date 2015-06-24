clc
clear
disp("Example 8.30a")
printf("\n")
disp("perform the following decimal subtraction using 9s complements")
disp("a)49-24    b)321-578")
//given numbers
a=49
b=-24
//should set to 99 if input is 2 digit number,999 if 3digit number
c=99
//add c with 2nd operand
e=c+b
N=a+e
if(N>100)
    if(N<199)
    M=N-100
    M=M+1
    N=M
end
end
if(N>1000)
    if(N<1999)
    M=N-1000
    M=M+1
    N=M
end
end
    M=N
if(-b>a)
    M=-(999-M)
end
printf("result=%d",M)