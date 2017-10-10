clc;
s=2; //specific gravity of liquid
m=102; // mass density of water in msl/m^3
m1=1000; // mass density of water in kg/m^3
w=2*m; // mass density of liquid in msl/m^3
w1=2*m1; // mass density of liquid in kg/m^3
k=5.58; // kinematic viscosity in stokes
k1=5.58*10^-4; //kinematic viscosity in m^2/sec
u=k1*w; // dynamic viscosity of liquid 
printf('dynamic viscosity in matric gravitational unit is %f kg sec/m^2\n',u);
u=k1*w1; // dynamic viscosity of liquid
printf('dynamic viscosity in S.I unit is %f N sec/m^2',u')
