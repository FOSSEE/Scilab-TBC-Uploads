// problem 7.7
i=1/1000
d=1.5
Cd=0.55
a=d*d
C=40
g=9.81
m=d
Q=a*C*((d*i)^0.5)
H=(3*Q/(Cd*2*((2*g)^0.5)))^0.4
height=d+3-H
disp(height,"height of the dam in m")

