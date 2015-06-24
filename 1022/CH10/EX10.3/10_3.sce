clc
//initialisation of variables
n= 12.5 //mol
n1= 3.76 //mol
M= 114 //gm/gm mol
M1= 28.96 //gm/gm mol
//CALCULATIONS
n2= n*(1+n1)
m= n2*M1/M
//RESULTS
printf ('Air-fuel ratio= %.1f gm air/gm fuel',m)
