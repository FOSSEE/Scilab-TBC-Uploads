// problem 3.8
q=0.08
d1=0.3
d2=0.15
a1=3.142*d1*d1/4
a2=3.142*d2*d2/4
h=1.5
g=9.81
z=(a1*a2*((2*g*h)^0.5))/(((a1^2)-(a2^2))^0.5)
Cd=q/z
disp(Cd,"co-efficient of meter")
