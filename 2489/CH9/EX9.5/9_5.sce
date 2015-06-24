clc
//Intitalisation of variables
clear
v1= 18.10 //cc
T= 100 //C
p= 2.47 //atm
L= 539.9 //cal mole^-1 gm^-1
m= 18.02 //gm
T1= 30 //C
//CALCULATIONS
dT= v1*(273.2+T)^2*p*1.013*10^6/(L*m*4.184*10^7*(273.2+T1))
//RESULTS
printf ('Elevation of boiling point = %.4f degrees',dT)
