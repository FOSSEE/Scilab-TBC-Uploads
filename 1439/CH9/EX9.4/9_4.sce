clc 
//initialisation of variables
M1= 208.3 //gms
g= 2.69 //gms
R= 0.08205 //l-atm mole^-1 deg^-1
T= 250 //C
P= 1 //atm
V= 1 //lit
//CALCULATIONS
M2= g*R*(273.1+T)/(P*V)
a= (M1-M2)/M2
Kp= a^2*P/(1-a^2)
//RESULTS
printf ('Kp= %.2f  ',Kp)
