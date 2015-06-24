clc 
//initialisation of variables
Mc= 63.54 //gms
n= 2
mc= 0.3 //gms
mc1= 1.43
mc2= 1.2140
//CALCULATIONS
Me= Mc/n
Tc= ((mc/Me)-((mc1-mc2)/Me))/(mc/Me)
Ta= 1-Tc
//RESULTS
printf ('copper transference number= %.2f ',Ta)
