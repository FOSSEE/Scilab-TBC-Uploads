clc
clear
//Initialization of variables
G=-30050 //kJ/kmol
R=8.314
T=573 //K
//calculations
lnk=G/(R*T)
k=exp(lnk)
x=poly(0,"x")
vec=roots(4*x^2 - k*(1-x)^2)
x2=vec(2)
//results
printf("Mole fraction of HCN = %.4f",x2)
