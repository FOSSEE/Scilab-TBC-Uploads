clc
//initialisation of variables
r=20000//liter/minute
v=14*10^-6//ft^2/sec
w=1.3*10^-6//m^2/s
f=0.025
f1=0.029
q=8*10^3//m
p1=1/60//min/s
hf=150//m
g=9.8//m/s^2
d=0.414//m
e=0.00165//m
d1=0.427//m
//CALCULATIONS
D=0.81*(f)*(q)*(r*10^-3*p1)^2/(hf*g)//m^5
V=(4*(r*10^-3)*p1)/((%pi)*(d)^2)//m/s
NR=V*d/(w)
R=e/d
D1=0.81*(f1)*(q)*(r*10^-3*p1)^2/(hf*g)//m^5
V2=(4*(r*10^-3)*p1)/((%pi)*(d1)^2)//m/s
NR1=V2*d1/w
R1=e/d1
//RESULTS
printf('The diameter of a concrete pipe is=% f ',R1)
