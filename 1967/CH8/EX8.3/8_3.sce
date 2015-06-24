clc
//initialisation of variables
R= 1.987 //cal deg^-1 mole^-1
T= 25 //C
Pc= 49.7 //atm
m= 128 //gms
pc= 49.7 //atm
Tc= 154.3 //K
m1= 9 //gms
m2= 18
//CALCULATIONS
dH= (m1*R*Tc/(m*pc))*(1-m2*(Tc/(273.15+T))^2)*-1
//RESULTS
printf ('Enthalpy = %.2f cal mole^-1',dH)
