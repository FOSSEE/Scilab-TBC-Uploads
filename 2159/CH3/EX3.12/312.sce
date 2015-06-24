// problem 3.12
d0=0.05
d1=0.1
H=0.09
s2=13.6
s1=1
g=9.81
h=H*((s2/s1)-1)
Cd=0.65
a1=3.142*d1*d1/4
a0=3.142*d0*d0/4
q=(Cd*a1*a0*((2*g*h)^0.5))/(((a1^2)-(a0^2))^0.5)
q1=q*(10^6)
disp(q1,"actual flow rate in cm3/sec")
