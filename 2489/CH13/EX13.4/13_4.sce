
clc
//Intitalisation of variables
clear
k= 0.012856 //ohm^-1 cm^-1
R= 3468.9 //ohms
k1= 44.597 //cm^-1
c= 0.1 //g equiv per litre
R1= 4573.6 //ohms
//CALCULATIONS
k1= k*R
K= k1/R1
a= 1000*K/c
//RESULTS
printf ('cell constant = %.3f cm^-1',k1)
printf ('\n cell constant = %.5f ohm^-1 cm^-1',K)
printf ('\n Equivalent conductance = %.2f ohms^-1 cm^2',a)
