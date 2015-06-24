clear
clc
E1=1.51;//in V
E2=-0.49;//in v
E=(E1-E2);//in V
n=2;//
F=96500;//in C/mol
R=8.314;//in J/Kmol
T=298;//in K
Keq=10^((n*F*E)/(2.303*R*T));//equilibrium constant
printf('Keq=%.d10^331',Keq/10^331)
//There are some errors in the solution given in textbook
//page 486
