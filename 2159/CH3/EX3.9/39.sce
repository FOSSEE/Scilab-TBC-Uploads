// problem 3.9
s2=13.6
s1=0.9
H=0.25
h=H*((s2/s1)-1)
Cd=0.98
w=9810*s1
d1=0.3
d2=0.15
a1=3.142*d1*d1/4
a2=3.142*d2*d2/4
dz=0.3
g=9.81
q=(Cd*a1*a2*((2*g*h)^0.5))/(((a1^2)-(a2^2))^0.5)
dp=(h+dz)*w
disp(q,"discharge of the oil in m3/sec")
disp(dp,"pressure diffrence in entrance and throat section ")
