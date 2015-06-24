clc
//Example 3.6
//calculate the mass flow rate, volumetric flow rate and velocity of waterin a pipe
d1=0.25;//m diameter of pipe at position 1
v1=2;//m/s velocity
rho=998.2;//kg/m^3  density of water
a1=(%pi)/4*d1^2;//m^2
d2=0.125//m diameter of pipe at position 2
a2=(%pi)/4*d2^2;//m^2
m=rho*a1*v1//kg/s mass flow rate
printf("Mass flow rate is %f kg/s\n",m);
q=m/rho//m^3/s volumetric flow rate
printf("The volumetric flow rate is %f m^3/s\n",q);
v2=(a1/a2)*v1//m/s velocity
printf("Velocity of water is %f m/s",v2);