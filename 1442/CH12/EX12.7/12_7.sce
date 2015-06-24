clc
//initialisation of variables
x= 0.79
P0= 101 //kPa
P= 20 //Mpa
V= 0.032 //m^3
//CALCULATIONS
p= x*P0
Wrev= P*10^3*V*(log(P/(p*10^-3))+((p*10^-3)/P)-1)
//RESULTS
printf (' maximum useful work= %.1f kJ',Wrev)
