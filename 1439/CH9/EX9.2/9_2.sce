clc 
//initialisation of variables
R= 0.08205 //l-atm mole^-1 deg^-1
T= 25 //C
g= 1.588 //gms
P= 1 //atm
V= 0.5 //lit
M1= 92.02 //g mole^-1
//CALCULATIONS
M2= R*(273.1+T)*g/(P*V)
a= (M1-M2)/M2
//RESULTS
printf ('degree of dissociation= %.4f  ',a)
