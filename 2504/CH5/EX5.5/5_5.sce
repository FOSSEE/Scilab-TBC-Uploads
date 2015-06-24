clc
//initialisation of variables
clear
w1= 0.0286 //lbm/ft^3
v= 2500 //ft/sec
A= 2.5 //ft^3
k= 0.015
p2= 700 //lbf/ft^2
p1= 628 //lbf/ft^2
v2= 3500 //ft/sec
g= 32.17 //ft/sec^2
//CALCULATIONS
ma= w1*v*A
mf= k*ma
mt= ma+mf
F= (p2-p1)*A+(mt*v2/g)-(ma*v/g)
//RESULTS
printf ('air mass flow rate = %.2f lbm/sec',ma)
printf ('\n Fuel flow rate = %.2f lbm/sec',mf)
printf ('\n Fuel flow rate at station 2 = %.2f lbm/sec',mt)
printf ('\n Thrust force = %.f lbf',F)
