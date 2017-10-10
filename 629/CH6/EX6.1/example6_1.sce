clear
clc
//Example 6.1 THRUST OF ROCKET
g=9.81; //[m/s^2]
m=0.04; //mass[kg]
D=0.01; //[m]
A=%pi*D^2/4 //area[m^2]
rho=0.5; //density[kg/m^3]
v=450; //[m/s]
//Sum of forces, Fz=-Fb-m.g
Mo=-rho*A*v^2 //momentum outflow[N]
Fz=Mo //[N]
Fb=-Fz-m*g //Force on beam[N]
printf("\n The force acting on the beam that supports the rocket, Fb = %.2f N.\n",Fb)