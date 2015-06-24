clc
//Initialization of variables
Gr=1.7*10^3 //J/mol
T=298 //K
R=8.314 //J/K mol
K=0.5
//calculations
GbyRT=Gr/(R*T)
feq=K/(K+1)
//results
printf("Equivalent fraction = %.2f ",feq)
disp("For the second part, Gr=1.7 + 2.48 ln(f/1-f)")
