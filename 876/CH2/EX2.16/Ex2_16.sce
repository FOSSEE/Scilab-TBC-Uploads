//caption:Find(a)arithmetic mean(b)deviation of each value(c)algebric sum of deviation(d)average deviation(e)standard deviation
//Ex2.16
clc
clear
close
x1=10//first reading
x2=11//second reading
x3=9//third reading
x4=10.5//fourth reading
x5=9.5//fifth reading
n=5//number of reading
x=(x1+x2+x3+x4+x5)/n
disp(x,'(a)arithmetic mean=')
d1=x1-x
d2=x2-x
d3=x3-x
d4=x4-x
d5=x5-x
disp(d5,d4,d3,d2,d1,'(b)value of deviation=')
d=d1+d2+d3+d4+d5
disp(d,'(c)algebric sum of deviation=')
D=((d1)+(d2)+(-d3)+(d4)+(-d5))/n//taking mod of deviation value
disp(D,'(d)average deviation=')
S=((d1^2+d2^2+d3^2+d4^2+d5^2)/(n-1))^(0.5)
disp(S,'(e)standard deviation=')