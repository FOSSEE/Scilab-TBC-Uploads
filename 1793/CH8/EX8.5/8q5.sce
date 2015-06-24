clc
//initialisation of variables
b= %pi/4 //degrees
a= %pi/6.//degrees
B= 10 //ft
H= 20 //ft
h= 25 //ft
k= 2e-4 //ft/min
//calculations
r= H/tan(b)
d= 0.3*r+(h-H)/tan(b)+B+h/tan(a)
L= d/cos(a)-sqrt((d/cos(a))^2-(H/sin(a))^2)
q= k*L*tan(a)*sin(a)*24*60
//results
printf ('seepage rate = % 4f ft^3/day/ft ',q)
