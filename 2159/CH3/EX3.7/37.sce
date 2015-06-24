// problem 3.7
q=0.1
d1=0.2
Cd=0.9
H=0.4
s1=1
s2=13.6
g=9.8
h=H*((s2/s1)-1)
a1=3.142*d1*d1/4
z=1+(((Cd*a1*((2*g*h)^0.5))/q)^2)
a2=((a1^2)/z)^0.5
d2=(4*a2/3.1)^0.5
disp(d2,"diameter of throat in m")
