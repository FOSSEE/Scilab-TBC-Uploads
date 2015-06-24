clc 
//initialisation of variables
R= 8.31*10^7 //ergs mole^-1 K^-1
M= 9.013 //mg
T= 1457 //K
d= 0.318 //cm
t= 60.1 //min
m= 9.54 //mg
g= 980 //cmsec^-2
D= 13.6 //g/cc
p= 76 //cm atm^-1
//CALCULATIONS
P= sqrt(2*%pi*R*T/M)*(m*10^-3/(%pi*(d/2)^2*t*60*p*D*g))
//RESULTS
printf ('vapour pressure= %.2e atm',P)
