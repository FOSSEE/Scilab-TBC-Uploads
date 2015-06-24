clc
clear
//Initialization of variables
Vb=30 //m^3/kmol
P=1.013*10^5 //Pa
R=8.3143*10^3 //J/kmol K
T=373.1 //K
//calculations
Z=P*Vb/(R*T)
//results
printf("Compressibility factor = %.3f",Z)
