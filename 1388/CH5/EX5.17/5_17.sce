clc
//initialisation of variables
T= 27 //C
m= 0.635 //gms
V= 100 //ml
R= 0.08205 //cal/mol K
p= 2.35 //cm
//CALCULATIONS
M= 13.6*76*m*R*(T+273)*1000/(p*V)
//RESULTS
printf (' molecular weight = %.f gms',M+252)
