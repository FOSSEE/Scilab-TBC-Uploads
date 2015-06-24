clc
//initialisation of variables
clear
T= 0 //C
sv= 1.0001 //cc g^-1
sv1= 1.0907 //cc g^-1
R= 0.0242 //atm^-1 cc^-1 cal
p= 79.8 //atm
//CALCULATIONS
r= (273.2+T)*(sv-sv1)*R/p
//RESULTS
printf ('rate of change of melting point = %.4f deg atm^-1',r)
