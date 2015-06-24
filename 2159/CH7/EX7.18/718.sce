// problem 7.18
d=1.2
i=1/1500
C=52
z=1.9-1/1
z1=acos(z)
x=3.142-z1
A=d*d*0.25*(x-(sin(2*x)/2))
P=d*x
m=A/P
Q=A*C*((m*i)^0.5)
disp(Q*1000,"the maximium discharge through the channel in litres/sec")
