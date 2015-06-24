clc
//Intitalisation of variables
clear
A= 48.15 //ohm^-1 cm6-1
m= 1.0283*10^-3 //gms equiv acid per litre
A0= 390.7 //ohms^-1 cm^2
A1= 60.2
B= 0.229
//CALCULATIONS
a= A/(A0-(A1+B*A0)*sqrt((A/A0)*m)) 
//RESULTS
printf ('Degree of dissociation = %.4f',a)
