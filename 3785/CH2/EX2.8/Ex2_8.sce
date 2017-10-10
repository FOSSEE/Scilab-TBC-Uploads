// Example 2_8
clc;funcprot(0);
// Given data
d=3;// The internal diameter of a horizontal cylindrical fuel oil storage tank in m
SG=0.87;// Specific gravity of water oil 
t=0.2;// Thickness in m
z_0=0;// The initial height in m
z_1=-1.3;// The height of the water-oil interface in m
z_2=-1.5;// The height of the bottom of the tank in m
rho_w=1*10^3;// The density of water in kg/m^3
g=9.807;// The acceleration due to gravity in m/s^2

// Calculation
p_bminusp_0=rho_w*-g*((SG*(z_1-z_0))+(z_2-z_1));// The gage pressure at the bottom of the tank in Pa
printf("The gage pressure at the bottom of the tank is %0.4e Pa",p_bminusp_0);