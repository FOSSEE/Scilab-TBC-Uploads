clc
//initialisation of variables
clear
T= 95.5 //C
p= 1 //atm
v= 0.0126 //cc g^-1
a= 0.0242 //cal cc^-1 atm^-1
r= 0.035 //K atm^-1
//CALCULATIONS
dH= (273.2+T)*v*a/r
//RESULTS
printf ('Heat of transition = %.1f cal g^-1',dH)
