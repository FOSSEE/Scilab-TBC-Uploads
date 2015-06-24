clc
//Example 3.5
//calculate velocity and mass flow rate of natural in a pipe
d1=2;//ft diameter of pipe at position 1
a1=(%pi)/4*d1^2;//ft^2
v1=50;//ft/s vel of gas at position 1
rho1=2.58;//lbm/ft^3 density of gas at position 1
d2=3;//ft diameter of pipe at position 2
a2=(%pi)/4*d2^2;
rho2=1.54;//lbm/ft^3 density at position 2
v2=(rho1/rho2)*(a1/a2)*v1//ft/s
printf("Velocity is %f ft/s\n",v2);
m=rho1*v1*a1//lbm/s mass flow rate
printf("The mass flow rate is %f lbm/s",m);