clc
//Initialization of variables
T1=77.32 //K
P=1 //atm
T2=126 //K
Pc=33.5 //atm
//calculations
dS=27/32 *1.987*P/Pc *(T2/T1)^3
//results
printf("Change in entropy = %.2f eu/mol",dS)
