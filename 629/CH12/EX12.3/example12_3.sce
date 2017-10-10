clear
clc
//Example 12.3 TOTAL TEMPERATURE CALCULATION
T=273+(-50) //static temperature [K]
k=1.4;
M=1.6; //Mach number
//Total temperature
Tt=T*(1+(k-1)*M^2/2) //[K]
printf("\n The surface temperature of the aircraft = %.f K.\n",Tt)