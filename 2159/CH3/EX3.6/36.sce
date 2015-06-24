// problem 3.6
d1=0.3
d2=0.15
a1=3.142*d1*d1/4
a2=3.142*d2*d2/4
H=0.18
Cd=0.85
s2=13.6
s1=1
w=9810
h=H*((s2/s1)-1)
g=9.81
q=(Cd*a1*a2*((2*g*h)^0.5))/(((a1^2)-(a2^2))^0.5)
q1=q*1000
disp(q1,"rate of flow in litres/sec")

