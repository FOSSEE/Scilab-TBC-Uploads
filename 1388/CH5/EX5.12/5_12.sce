clc
//initialisation of variables
kb= 2.64 //C gm
dT= 0.083 //C
m= 120 //gms
W2= 0.764 //gms
//CALCULATIONS
m2= dT/kb
M2= W2*1000/(m2*m)
//RESULTS
printf (' molecular weight of solute = %.f gms',M2)
