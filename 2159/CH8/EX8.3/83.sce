// problem 8.3
d=0.03
Fx=900
x=30
g=9.81
w=g*1000
a=3.142*d*d/4
V=((Fx*g)/(w*a*sind(x)*sind(x)))^0.5
Q=a*V
disp(Q*1000,"rate of flow in m3/sec")
