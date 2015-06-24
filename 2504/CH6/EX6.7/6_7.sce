clc
//initialisation of variables
clear
r1= 10 //ft
r2= 0.2 //miles
w= 0.0765 //lbm/ft^2
g= 32.2 //ft/sec^2
V1= 1 //ft/sec
//CALCULATIONS
k= r2*5280*V1 
dp= w*k^2*10*((1/r1)^2-(1/(5280*r2))^2)/(2*g)
//RESULTS
printf ('k = %.f ft^2/sec',k)
printf ('\n pressure difference = %.1f lbf/ft^2',dp)
