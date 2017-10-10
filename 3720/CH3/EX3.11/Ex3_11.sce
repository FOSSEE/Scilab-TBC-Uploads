// Example 3_11
clc;clear;funcprot(0);
// Given values
rho_sw=1025;// The density of sea water in kg/m^3
rho_con=2300;// The density of concrete in kg/m^3
g=9.81;// The acceleration due to gravity in m/s^2

// Calculation (a)
V=0.4*0.4*3; // Volume of the block in m^3;
F_air=(rho_con*g*V)/1000;// kN
printf('Tension in rope must be equal to the weight of the block,F_air=%0.1f kN\n',F_air);
// Calculation (b)
F_b=(rho_sw*g*V)/1000;// kN
printf('Balance force F_b=%0.1f kN\n',F_b);
F_water=F_air-F_b;// kN
printf('Tension in rope when it is completely immersed in water,F_water=%0.1f kN\n',F_water);
