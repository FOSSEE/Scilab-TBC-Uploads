clc
//initialisation of variables
clear
Re= 5
g= 32.2 //ft/sec^2
u= 2.34*10^-5 //lbf/ft sec
w= 62.4 //lbf/ft^3
v= 0.283 //ft/sec
Re1= 70
v1= 0.0374 //ft/sec
//CALCULATIONS
y= Re*u*g/(w*v)
y1= Re1*u*g/(w*v)
y2= Re*u*g/(w*v1)
y3= Re1*u*g/(w*v1)
//RESULTS
printf ('y = %.6f ft',y)
printf ('\n y = %.5f ft',y1)
printf ('\n y = %.5f ft',y2)
printf ('\n y = %.4f ft',y3)
