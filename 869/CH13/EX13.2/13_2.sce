clc
//initialisation of variables
E= 1.5*10^6
I= 50 //in^4
delta= -1 //in
l= 8 //ft
//CALCULATIONS
w= -delta*8*E*I/(l^4*1728)
//RESULTS
printf ('distributed weight= %.1f lb per ft',w)
