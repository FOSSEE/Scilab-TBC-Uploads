clc
clear
//Initialization of variables
T=373.1 //K
R=8314.3
Pd=0.1013*10^6 //Pa
P=10 //Mpa
p3=5*10^6 //Pa
vf=0.0373
a=424.447
//calculations
Vd=R*T/Pd
V=0.5
dss=-R*(log(p3/Pd) + log((V-vf)/(Vd-vf)))
dhh=R*T/10^3 - p3/10^3 *V+ a/V^2
//results
printf("Change in entropy = %.4f kJ/kmol K",dss/10^3)
printf("\n change in enthalpy= %d kJ/kmol",dhh)
