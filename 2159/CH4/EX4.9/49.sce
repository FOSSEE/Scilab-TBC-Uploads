// problem 4.9
Cd=0.8
D=2
r=1
H1=2
d=0.1
a=3.142*d*d/4
l=8
g=9.81
T=(4*l*((2*r)^1.5-(2*r-H1)^1.5))/(3*Cd*a*((2*g)^0.5))
disp(T/60,"time taken for emptying the boiler in min")
