clc 
//initialisation of variables
d0= 4 //ft
d2= 2 //ft
z0 = 0 //ft
z1= 5 //ft
z2= 13 //ft
h= 9.5 //in
w= 62.4 //lb/ft^3
w1= 30 //lb/ft^3
g= 32.2 //ft/sec^2
r= 0.1
//CALCULATIONS
p2= -h*34/w1
v2= sqrt(2*g*(z1-p2-z2)/(1+r))
Q= %pi*(d2/12)^2*v2*w*60/(10*4)
//RESULTS
printf ('Discharge = %.f gpm ',Q)

