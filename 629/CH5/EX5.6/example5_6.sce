clear
clc
//Example 5.6 WATER LEVEL DROP RATE IN DRAINING TANK
D1=0.1; //diameter of outlet[m]
DT=1; //diameter of tank[m]
A1=(%pi*D1^2)/4 //[m^2]
AT=(%pi*DT^2)/4 //[m^2]
g=9.81; //[m/s^2]
ho=2; //[m]
hf=0.5; //[m]
//mi=0,mo=rho*A1*V1=rho*sqrt(2gh)*A1, mcv=mi-mo
//continuity equation, mi=d(rho*AT*h)/dt
t=integrate('(-AT)*(A1*(sqrt(2*g*h)))^(-1)','h',ho,hf)
printf("\nThe time elapsed for that drop in water tank = %.1f s.\n",t)