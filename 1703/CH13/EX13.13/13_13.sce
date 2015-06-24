clear
clc
//initialisation of variables
p= 160 //lb/in^2
d= 1/3 //ft
T= 15 //C
R= 96 
V= 120 //ft^3
f= 0.004
a= 60*%pi
l= 10560 //ft
g= 32.2 //ft/sec^2
//CALCULATIONS
p1= p*144
w1= p*144/(R*(273+T))
v1= V*36/a
p2= sqrt(p1^2-((2*4*f*p1*w1*v1^2*l)/(2*g*d)))/144
v2= p*v1/p2
//RESULTS
printf (' pressure = %.1f lb/in^2 ',p2)
printf ('\n velocity = %.1f ft/sec ',v2)

//The answer is a bit different due to rounding off error in textbook


