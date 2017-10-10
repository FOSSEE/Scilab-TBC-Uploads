clear
clc
//Example 5.7 DEPRESSURIZATION OF GAS IN TANK
V=10; //volume[m^3]
po=500; //initial pressure[kPa]
pf=400; //final pressure[kPa]
R=518; //gas constant[J/kg.K]
T=300; //[K]
A=10^-7; //area[m^2]
//mi=0,mo=0.66*p*A/sqrt(R*T), mcv=mi-mo
//continuity equation, mi=V*d(rho)/dt
t=integrate('-V*(0.66*A*p*sqrt(R*T))^(-1)','p',po,pf)
printf("\nThe time elapsed for the absolute pressure drop = %.f s.\n",t)