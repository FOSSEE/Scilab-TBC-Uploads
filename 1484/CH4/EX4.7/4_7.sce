
clc
//initialisation of variables
r= 9/16
r1= 7/16
h= 26 //ft
//CALCULATIONS
r2= 1/((r^2)+(0.25*r1^2))
H1= h/(r2-1)
//RESULTS
printf ('maximu head of the tank = %.2f ft of water',H1)
