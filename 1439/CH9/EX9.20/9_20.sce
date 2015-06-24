clc 
//initialisation of variables
Kp= 1.78
P= 0.1 //atm
//CALCULATIONS
a= sqrt(Kp/(Kp+P))*100
//RESULTS
printf ('per cent dissaciated= %.1f per cent ',a)
