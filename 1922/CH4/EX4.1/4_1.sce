clc
clear
//Initialization of variables
T=500 //K
Qr=5*10^6 //kJ
T2=600 //K
//calculations
dSS=Qr/T
dSS2=-Qr/T2
Ds=dSS+dSS2
//results
printf("Entropy change of the system = %d kJ/K",dSS)
printf("\n Entropy change of the surroundings = %d kJ/K",dSS2)
printf("\n Entropy change if the universe = %d kJ/K",Ds)
