clc
//initialisation of variables
R= 8.314 //J/mol K
M= 29 //gms
T= 400 //K
p2= 1.6 //bar
p1= 1 //bar
Tenvir= 300 //K
//CALCULATIONS
q= R*T*log(p2/p1)/M
S= -R*log(p2/p1)/M
Senvir= q/Tenvir
//RESULTS
printf (' heat = %.1f kJ/kg',q)
printf (' \n change in entropy of system= %.4f kJ/kg K',S)
printf (' \n change in entropy of environment= %.4f kJ/kg K',Senvir)
