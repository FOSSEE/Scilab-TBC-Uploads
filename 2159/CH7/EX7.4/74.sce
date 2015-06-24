// problem 7.4
b=3.5
i=1/1000
d=1.5
C=60
y=60
x=1.5/tand(y)
w=b+x*2
A=(w+b)*0.5*d
P=b+2*((x*x+d*d)^0.5)
m=A/P
Q=A*C*((m*i)^0.5)
disp(Q*1000,"discharge carried by the canal in litres/sec")
