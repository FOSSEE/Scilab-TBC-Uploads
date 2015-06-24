clc
//initialisation of variables
g= 32.2 //ft/sec^2
h= 1 //in
ww= 62.4 //lbf/ft^3
w= 0.0764 //lbf/ft^3
//CALCULATIONS
u= sqrt(2*g*h*(1/12)*(ww/w))
//RESULTS
printf (' speed of air through the tunnel= %.1f ft/sec',u)
