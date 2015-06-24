clc
//Initialization of variables
R=1.987 //cal/deg/mol
k1=4.45*10^-5
k2=2.52*10^-6
T1=283+273.2 //K
T2=356+273.2 //K
//calculations
Ea=2.303*R*1.7530 /(1/T1 - 1/T2)
logZ= log10(k1) +Ea/(2.303*R*T1)
Z=10^logZ
//results
printf("Activation energy = %d cal/mol",Ea)
printf("\n Z = %.1e lt /mol sec",Z)
