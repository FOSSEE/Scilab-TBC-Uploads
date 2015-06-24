clc
//initialisation of variables
m2= 50 //gms
M= 46 //gms
m1= 50 //gms
M1= 18 //gms
v1= 17402 //cm^3/kmol
v2= 56090 //cm^3/kmol
//CALCULATIONS
x2= (m2/M)/((m2/M)+(m1/M1))
V= (v1*(m1/M1)+v2*(m2/M))*10^-3
//RESULTS
printf (' volume of the phase= %.1f cm^3',V)
