clc
// initialization of variables
clear
sigma_1=100 //kg*f/cm^2
sigma_2=100 //kg*f/cm^2
sigma_3=-200 //kg*f/cm^2
// calculations
tau_oct=1/3*sqrt((sigma_1-sigma_2)^2+(sigma_2-sigma_3)^2+(sigma_3-sigma_1)^2)
// Results
printf('Octahedra shear stress at the point is=%.1f kgf/cm^2',tau_oct)
