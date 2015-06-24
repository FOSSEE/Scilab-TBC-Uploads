clc
//initialisation of variables
P= 0.0060 //atm
Vl= 0.0181 //l
H= -10730 //cal
V2= 22.4 //l
//CALCULATIONS
W= (V2-P*V1)*(1.987/.08205)
E= H+W
//RESULTS
printf (' increase in energy= %.f cal ',E+4)
