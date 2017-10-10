clear
clc
//Example 6.3 FORCE ON A NOZZLE
d1=0.06; //[m]
A1=%pi*d1^2/4 //area[m^2]
d2=0.01; //[m]
rho=1.22; //density[kg/m^3]
p1=3.7*1000; //[Pa]
//Bernoulli equation, p1+rho*v1^2/2=rho*v2^2/2
v2=sqrt(2*p1/(rho*(1-(d2/d1)^4))) //Exit velocity[m/s]
printf("\n The air speed at the exit of the nozzle = %.1f m/s.\n\n",v2)
v1=v2*(d2/d1)^2 //Inlet velocity[m/s]
m=rho*A1*v1 //mass flow rate[kg/s]
//Force on flange
F=m*(v2-v1)-p1*A1 //[N]
printf("\n The force on the flange = %.2f N.\n",-F)