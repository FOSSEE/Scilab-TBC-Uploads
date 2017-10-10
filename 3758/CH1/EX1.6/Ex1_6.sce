clc;
u=4.9*10^-4; //dynamic viscosity in kg sec/m^2
k=3.49*10^-2; //kinematic viscosity in stokes 
k=3.49*10^-6; //converting kinematic viscosity in stokes to m^2/sec
w=102; // mass density of water in kg/m^3
m=u/k; //calculating mass density in kg/m^3
s=m/w; // calculating specific gravity of liquid
printf(' specific gravity of liquid is %f',s);
