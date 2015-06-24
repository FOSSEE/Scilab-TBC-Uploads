clc
//Initialization of variables
G=-31 //kJ/mol
T=37+273 //K
Cadp=10^-3 //mmol/L
Cp=8*10^-3 //mmol/L
Catp=8*10^-3 //mmol/L
R=8.314 //J/K mol
//calculations
Q=Cadp*Cp/Catp
deltaG=G+R*T*log(Q) /1000.
//results
printf("Reaction Gibbs energy = %d kJ/mol",deltaG-1)
