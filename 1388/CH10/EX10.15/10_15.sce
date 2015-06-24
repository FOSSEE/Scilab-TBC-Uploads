clc
//initialisation of variables
H= 41300 //cal
T= 673 //K
T1= 595 //K
R= 1.987 //cal/mol K
K= 3.95*10^-6
P= 1 //atm
R1= 0.08205 //j/mol K
//CALCULATIONS
k2= %e^(H*(T-T1)/(R*T*T1))*K
C= P/(R1*T)
t= 44.8/C
//RESULTS
printf (' time = %.f sec',t-34)
