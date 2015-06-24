clc
clear
//Initialization of variables
Pc=22.12*10^6 //Pa
Tc=647.3 //K
Vc=0.05697 //m^3/Kmol
R=8.3143*10^3
Tr=0.7
//calculations
Zc=Pc*Vc/(R*Tc) 
T=Tr*Tc
Ps=10^6 //Pa
w=-log10(Ps/Pc) -1
//results
printf("critical compressibility factor  = %.3f",Zc)
printf("\n Accentric factor = %.4f",w)
