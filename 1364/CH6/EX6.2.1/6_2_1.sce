clc
//initialisation of variables
w= 0.0764 //lbf/ft^3
u= 88 //ft/sec
g= 32.2 //ft/sec^2
//CALCULATIONS
q= w*u^2/(2*g)
//RESULTS
printf (' dynamic pressure of air = %.2f lbf/ft^2',q)
