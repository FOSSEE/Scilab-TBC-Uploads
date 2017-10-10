clear
clc
//Example 5.4 MASS ACCUMULATION IN A TANK
A=0.0025; //area[m^2]
V=7; //velocity[m/s]
rho=1000; //density[kg/m^3]
mi=rho*V*A //inlet mass flow rate[kg/s]
Q=0.003; //[m^3/s]
mo=rho*Q //outlet mass flow rate[kg/s]
//Continuity equation, mcv+mo-mi=0
mcv=mi-mo //accumulation rate[kg/s]
printf("\nThe rate of water accumulating in the tank = %.1f kg/s.\n",mcv)