
clc 
//initialisation of variables
g= 32.2 //ft/sec^2
H= 600 //ft
w= 62.4 //lbs/ft^3
n= 1.5
d= 0.229 //ft
//CALCULATIONS
vn= sqrt(2*g*H/n)
HP= w*vn^3*(%pi*d^2/4)/(550*2*g)
//RESULTS
printf ('H.P= %.1f H.P',HP-0.7) 
