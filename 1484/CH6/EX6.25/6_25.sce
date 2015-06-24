clc 
//initialisation of variables
W= 62.4 //ls/ft^3
d1= 3/4 //in
d2= 3 //in
f= 0.024
L= 5 //ft
//CALCULATIONS
h= 144/(1+(4*f*L*(d1/d2)^4/(d2/12)))
//RESULTS
printf ('height of the jet= %.f ft',h) 
