clc
clear
//Initialization of variables
v1=81 //cm^3/gmol
v2=97 //cm^3/gmol
d1=9.2 //(cal/cm^3)^0.5
d2=8.6 //(cal/cm^3)^0.5
R=1.987
T=373.1 //K
//calculations
d=0.5*(d1+d2)
lng1=v1*(d1-d)^2 /(R*T)
lng2=v2*(d2-d)^2 /(R*T)
g1=exp(lng1)
g2=exp(lng2)
//results
printf("Activity coeffecients of components are %.3f and %.3f respectively",g1,g2)
