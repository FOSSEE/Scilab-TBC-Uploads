clc
//initialisation of variables
clear
T= 25 //C
b= 0.785*10^-6 //atm^-1
a= 49.2*10^-6 //deg^-1
d= 8.93 //gm/cc
aw= 63.57 //gms
//CALCULATIONS
dC= a^2*(273.2+T)*aw*0.0242/(b*d)
//RESULTS
printf ('Cp-Cv = %.3f cal deg^-1g atom^-1',dC)
