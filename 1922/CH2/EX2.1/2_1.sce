clc
clear
//Initialization of variables
basis = 1 //kmol n butane
P=1.013*10^5 //N/m^2
R=8.3143*10^3 //J/kmol K
T=272.6 //K
//calculations
V=basis*R*T/P
Ts=373.1 //K
Vs=basis*R*Ts/P
//results
printf("Volume in case 1 = %.2f m^3",V)
printf("\n Volume in case 2 = %.2f m^3",Vs)
