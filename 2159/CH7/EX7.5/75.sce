// problem 7.5
b=9
i=1/3000
d=1.2
w=b+d
A=(w+b)*0.5*d
P=b+2*((d*d+d*d*0.25)^0.5)
m=A/P
C=50
V=C*((m*i)^0.5)
Q=V*A
disp(Q*1000,V,"average velocity of flow, rate of flow")
