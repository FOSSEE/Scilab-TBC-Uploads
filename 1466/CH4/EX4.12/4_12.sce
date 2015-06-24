
clc
//initialisation of variables
clear
c= 0.64
d= 2 //in
h= 3 //ft
cd1= 0.5
g= 32.2 //ft/sec^2
//CALCULATIONS
cd= 1/sqrt(2+(1/c)^2-(2/c))
ad= cd1*%pi*d^2*sqrt(2*g*h)/(4*144)
ad1= cd*%pi*4*sqrt(2*g*h/(4*144))
//RESULTS
printf (' Coefficient of discharge= %.3f',cd)
printf (' \n Actual discharge for Borda mouthpiece= %.4f ft^3/sec',ad)
printf (' \n Actual discharge for Cylindrical mouthpiece= %.f ft^3/sec',ad)
