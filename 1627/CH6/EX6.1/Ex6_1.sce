clc
//initialisation of variables
sg=0.85
v=7*10^-3//N.s/m^2
v1=1.46*10^-4//lbf.sec/ft^2
f=0.05//m
r=400*10^-3//m^3/min
t=1/60//min/sec
s=5*10^-2//m
g=9.8//m/s^2
q=9802//N/m^3
h=7*10^-3//N.s/m^2
p=0.000046//m
f1=0.027
f2=200//m
t1=448//f
//CALCULATIONS
V=(4*r*t)/((%pi)*(s)^2)//m/s
P=(q*sg)/(g)//N.s^2/m^4
NR=(V*s*P)/(h)
R=(p/f)
hf=(f1*f2*(V)^2)/(s*2*g)//m
H=q*hf*sg//bars
FHP=H*f2/t1//hp
//RESULTS
printf('The pressure drop and horsepower friction loss =% f hp',FHP)
