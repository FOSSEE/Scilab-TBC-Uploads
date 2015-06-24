clc
clear
//Initialization of variables
dH=-2369859 //Btu
r=1.986
dn=5.5
T=536.7 //R
//calculations
dQ=dH+dn*r*T
//results
printf("Higher heating value = %d Btu",dQ)
