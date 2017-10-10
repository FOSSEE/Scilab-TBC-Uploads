t=0.216; // shear stress in N/m^2
v=0.216; // velocity gradient in sec^-1
m=959.42; // mass density of castor oil in kg/m^3
u=t/v; //determining dynamic viscosity of castor oil in N sec/m^2
k=u/m; // calculating kinematic viscosity
printf('kinematic viscosity of castor oil is %f m^2/sec',k); 
