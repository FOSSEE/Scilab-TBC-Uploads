clc();
clear;
 
 // To calculate the heat transfer coefficient 
 
L = 1029;                    // Heat of evaporation in Btu/lb
n = 0.654*10^-5;             // Kinematic viscosity in Btu/hr-ft-F            
p = 62;                      // density in lb/ft^3
k = 0.367;                   // Thermal conductivity in Btu/hr-ft^2-F
g = 32.2;                    // Gravity
x = 3/12;                    // Distance from upper edge in ft
ts = 114;                    // Saturation temperature in F
tw = 105;                    // Wall temperature in F

h = (g*k^3*p*L*3600/(4*n*x*(ts-tw)))^0.25;    // Heat transfer coefficient
hav = h*4/3;                                   // Avg heat transfer coefficient

printf("The average heat transfer coefficient is %d Btu/hr-ft^2-F",hav);



