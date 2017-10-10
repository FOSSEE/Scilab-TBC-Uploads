clear
clc
//Example 2.1 DENSITY OF AIR
T=4+273; //[K]
p=101*10^3; //[N/m^2]
R=287; //[J/kg.K]
//Density
rho=p/(R*T) //[kg/m^3]
printf("\n The density of the air = %.2f kg/m^3.\n",rho)
