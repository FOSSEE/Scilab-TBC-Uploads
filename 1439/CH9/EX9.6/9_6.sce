clc 
//initialisation of variables
R= 0.08205 //l-atm mole^-1 deg^-1
T= 250 //C
n= 0.1 //mole
Kp= 1.78 
//CALCULATIONS
x= n+(n^2*R*(273.1+T)/Kp)
//RESULTS
printf ('x= %.3f mole ',x)
