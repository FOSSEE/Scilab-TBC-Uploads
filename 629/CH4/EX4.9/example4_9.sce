clear
clc
//Example 4.9 PITOT TUBE APPLICATION WITH PRESSURE GAGE
p=98*10^3; //pressure[N/m^3]
R=287; //gas constant[J/kg.K]
T=20+273; //temperature[K]
rho=p/(R*T) //density[kg/m^3]
del_p=730; //[N/m^2]
//Pitot-static tube equation,
V=sqrt(2*del_p/rho) //velocity[m/s]
printf("\nThe velocity of air in the tunnel = %.1f m/s.\n",V)