clear
clc
E1=-0.40;//in V
E2=-0.61;//in v
E=(E1-E2);//in V
n=2;//
F=96500;//in C/mol
R=8.314;//in J/Kmol
T=298;//in K
Keq=10^((n*F*E)/(2.303*R*T));//equilibrium constant
printf('Keq=%.2f*10^7',Keq/10^7)

//page 486
