clc
//initialisation of variables
T= 76 //F
T1= 21 //F
Tw= 67 //W
h= 1.5 //Btu/
A= 1 //ft^2
h0= 6.5 //Btu/hr
//CALCULATIONS
q= h*A*(T-Tw)
t= (q/(h0*A))+T1
//results
printf ('Outside wall temperature= %.1f F',t)
