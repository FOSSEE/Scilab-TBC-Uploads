clc
clear
//Initialization of variables
dH=-2369859 //Btu
r=1.986 //Gas constant
dn=5.5 //Change in number of moles
T=536.7 //R
//calculations
dQ=dH+dn*r*T
//results
printf("Higher heating value = %d Btu",dQ)
