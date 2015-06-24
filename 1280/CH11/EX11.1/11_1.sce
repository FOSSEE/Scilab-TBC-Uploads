clc
//initialisation of variables
V1= 20 //gal
P1= 20 //psi
n= 2
//CALCULATIONS
V2= V1/n
P2= (P1+14.7)*V1*231/(V2*231)
P3= P2-14.7
//RESULTS
printf ('Guage pressure = %.1f psi',P3)
