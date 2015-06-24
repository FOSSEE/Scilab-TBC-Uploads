
clc
//initialisation of variables
V= 4 //ft/sec
L= 1225 //ft
l= 1200 //ft
H= 50 //ft
d= 1/3 //ft
f= 0.008
g= 32.2 //ft/sec^2
//CALCULATIONS
a= 2*g*H
b= (4*f*L/d)+1.5
c= sqrt(a/b)
d= sqrt(a*b)
T= log(sqrt((c+V)/(c-V)))*l*2/d
//RESULTS
printf ('time interval for elapse = %.2f sec',T)
