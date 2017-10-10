clear
clc
//Example 12.12 MASS FLOW IN TRUNCATED NOZZLE
k=1.4;
d=0.03; //diameter[m]
A=%pi*d^2/4 //area[m^2]
pt=160; //[kPa]
pb=100; //[kPa]
Tt=273+80; //total temp.[K]
//Mach number at exit
Me=sqrt((2/(k-1))*[(pt/pb)^((k-1)/k)-1])
//Static temperature at exit
Te=Tt/(1+((k-1)/2)*Me^2) //[K]
R=287; //[J/kg.K]
//Static density at exit
rho=pb*10^3/(R*Te) //[kg/m^3]
c=sqrt(k*R*Te) //speed of sound[m/s]
//Mass flow rate
m=rho*A*Me*c //[kg/s]
printf("\n The mass flow rate = %.3f kg/s.\n",m)