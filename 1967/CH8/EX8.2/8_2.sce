clc
//initialisation of variables
clear
T= 77.32 //K
p= 1 //atm
Tc = 126 //K
Pc= 33.5 //atm
Mo= 32 //gms
mo= 27 //gms
R= 1.98 //cl/mol K
//CALCULATIONS
dS= (mo)*R*Tc^3/(Mo*Pc*T^3)
//RESULTS
printf ('Entropy increase = %.3f cal deg^-1',dS)
