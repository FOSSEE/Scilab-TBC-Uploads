clc
//initialisation of variables
P= 0.3429 //atm
p0= 0.3153 //atm
//CALCULATIONS
Kp= (2*(P-p0))^2/(2*p0-P)
//RESULTS
printf (' Kp = %.2e atm',Kp)
