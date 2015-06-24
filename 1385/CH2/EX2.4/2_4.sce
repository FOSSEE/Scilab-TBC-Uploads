clc
//initialisation of variables
P= 752 //mm
V= 0.2 //lit
T= 21 //C
R= 0.0821 //lit atm mole^-1
m= 0.980 //gms
//CALCULATIONS
M= m*R*(T+273)*760/(V*P)
//RESULTS
printf (' molecular weight of chloroform = %.1f gmsper mole',M)
