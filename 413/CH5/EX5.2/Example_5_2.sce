clc
clear
sumR2=0
sumR3=0
sumR4=0
function a=fun(x)
    a=exp(-x.*x)
endfunction
A=[0.2 1.5]
M=(A(1,1)+A(1,2))/2

h=M-0.2
R1=(h)/2 *[fun(0.2)+fun(1.5)+2*fun(M)]

h1=h/2
for i=1:3
    B(1,i)=0.2+i*h1
    sumR2=fun(B(1,i))+sumR2
    end
R2=h1/2 *[fun(0.2)+fun(1.5)+2*sumR2]

h2=h1/2
for i=1:7
    C(1,i)=0.2+i*h2
    sumR3=fun(C(1,i))+sumR3
    end
R3=h2/2 *[fun(0.2)+fun(1.5)+2*sumR3]

h3=h2/2
for i=1:15
    D(1,i)=0.2+i*h3
    sumR4=fun(D(1,i))+sumR4
    end
R4=h3/2 *[fun(0.2)+fun(1.5)+2*sumR4]


R5=R2+1/3*(R2-R1)

R6=R3+1/3*(R3-R2)

R7=R4+1/3*(R4-R3)

R8=R6+1/3*(R6-R5)

R9=R7+1/3*(R7-R6)

R10=R9+1/3*(R9-R8)

T1=[R1]
T2=[R2, R5]
T3=[R3, R6, R8]
T4=[R4,R7,R9,R10]
disp(T1)
disp(T2)
disp(T3)
disp(T4)
