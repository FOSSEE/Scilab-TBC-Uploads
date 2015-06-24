clc
clear
//Initialization of variables
Pc=22.12*10^6 //Pa
Tc=647.3 //K
Zc=0.234
T=973.1 //K
P=25*10^6 //Pa
//calculations
Tr=T/Tc
Pr=P/Pc
Z=0.916
Zn=Z+0.05*(Zc-0.27)
//results
printf("Compresson factor = %.3f ",Zn)
