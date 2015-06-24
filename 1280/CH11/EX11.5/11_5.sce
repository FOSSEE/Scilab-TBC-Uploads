clc
//initialisation of variables
s= 10 //stroke
d= 2 //in
r= 40 //cpm
P1= 80 //psi
//CALCULATIONS
V1= %pi*d^2*s*r/(4*1728)
V2= (P1+14.7)*V1/14.7
//RESULTS
printf ('air consumption in cfm of free air = %.2f cfm free air',V2)
