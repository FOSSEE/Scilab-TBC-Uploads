clear
clc
disp("example 10.10")
b11=0.001
b12=-0.0005
b22=0.0024
q1=0.08
r1=16
q2=0.08
r2=12
lamda=20

p2=0
for x=1:4
    p1=(1-(r1/lamda)-(2*p2*b12))/((q1/lamda)+2*b11)

p2=(1-(r2/lamda)-(2*p1*b12))/((q2/lamda)+2*b22)

end
pl=b11*p1^2+2*b12*p1*p2+b22*p2^2
pr=p1+p2-pl
printf("thus \t p1=%2.1fMW,p2=%2.1fMW\n pl=%1.1fMW\npower resevied %2.1fMW",p1,p2,pl,pr)
