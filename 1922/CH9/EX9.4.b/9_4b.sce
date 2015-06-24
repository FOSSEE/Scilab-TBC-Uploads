clc
clear
//Initialization of variables
G=-30050 //kJ/kmol
R=8.314
T=573 //K
phi1=0.980
phi2=0.915
phi3=0.555
//calculations
lnk=G/(R*T)
k=exp(lnk)
kexp= k*phi1*phi2/phi3^2 /4
x=poly(0,"x")
vec=roots(x^2 - kexp*(1-x)^2)
x2=vec(2)
//results
printf("Mole fraction of HCN = %.4f",x2)

