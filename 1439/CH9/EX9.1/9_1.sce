clc 
//initialisation of variables
T= 400 //C
R= 0.08205 //l-atm mole^-1 deg^-1
Kp= 1.64*10^-4
n= 2
P= 10 //atm
//CALCULATIONS
Kc= Kp*(R*(273.1+T))^n
Kx= Kp*P^n
//RESULTS
printf ('Kc= %.1f l^2 mole^-2 ',Kc)
printf ('\n Kx= %.2e  ',Kx)
