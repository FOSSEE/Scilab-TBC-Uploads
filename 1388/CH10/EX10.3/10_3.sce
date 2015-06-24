clc
//initialisation of variables
P= 200 //mm
t= 30 //min
k= 2.5*10^-4 //sec^-1
//CALCULATIONS
P0= P/(10^(k*t*60/2.303))
P1= P-P0
//RESULTS
printf (' Partial Pressure of reactant= %.f mm',P1)
