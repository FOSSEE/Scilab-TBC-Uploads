//Solutions to Problems In applied mechanics
//A N Gobby
clear all;
clc
//frictional torque retarding and tangential braking acting
//initialisation of variables
h=2240//ft
w=0.06//ft
w1=4//ft
q=12//ft
g=5//ft
g1=32.2//ft
d=100//rev/min
f=120//sec
//CALCULATIONS
T=w*(w1*h)*(w1/q)//lbf ft
I=((w1*h*(g)^2)/g1)*d*(2*%pi/60)//slug ft^2/s or lbf ft s
M=I/T//sec
P=430.8//lbf ft
R=(P/2.5)//lbf
//RESULTS
printf('the frictional torque retarding=% f sec',M)
printf('the tangential braking acting=% f lbf',R)
