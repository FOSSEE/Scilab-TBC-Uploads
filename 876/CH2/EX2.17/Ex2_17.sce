//caption:find(a)arithmetic mean(b)deviation from mean(c)average deviation(d)standard deviation(e)variance(f)probable reading of one error
//Ex2.17
clc
clear
close
x1=12.8//first reading(in V)
x2=12.2//second reading(in V)
x3=12.5//third reading(in V)
x4=13.1//fourth reading(in V)
x5=12.9//fifth reading(in V)
x6=12.4//sixth value(in V)
n=6//number of reading
x=(x1+x2+x3+x4+x5+x6)/n
disp(x,'(a)arithmetic mean(in V)=')
d1=x1-x
d2=x2-x
d3=x3-x
d4=x4-x
d5=x5-x
d6=x6-x
disp(d6,d5,d4,d3,d2,d1,'(b)value of deviation(in V)=')
D=((d1)+(-d2)+(-d3)+(d4)+(d5)+(-d6))/n//taking mod of deviation value
disp(D,'(c)average deviation=')
S=((d1^2+d2^2+d3^2+d4^2+d5^2)/(n-1))^(0.5)
disp(S,'(d)standard deviation(in V)=')
V=S^2
disp(V,'(e)variance(in V)=')
P=0.6745*V
disp(P,'(f)probable error of one reading(in V)=')