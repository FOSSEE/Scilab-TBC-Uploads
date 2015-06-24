clc
//initialisation of variables
b= 0.5 //in
h= 1/32 //in
d= 4 //ft
E= 30*10^6
//CALCULATIONS
stress= E*(h/2)/((d/2)*12)
Ina= b*h^3/12
M= stress*Ina/(h/2)
//RESULTS
printf ('maximum stress= %.2f psi',stress)
printf ('\n internal moment= %.2f lb in',M) 
