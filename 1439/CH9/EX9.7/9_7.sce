clc 
//initialisation of variables
Ppcl5= 1 //atm
Kp= 1.78
//CALCULATIONS
Ppcl2= sqrt(Kp)
P= 2*Ppcl2+Ppcl5
//RESULTS
printf ('P= %.2f atm ',P)
