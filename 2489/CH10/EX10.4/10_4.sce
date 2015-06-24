clc
//Intitalisation of variables
clear
Kp =0.315 
P= 10 //atm
//CALCULATIONS
a= sqrt(Kp/(4*P+Kp))
//RESULTS
printf ('Fraction of dissociation = %.4f  ',a)
