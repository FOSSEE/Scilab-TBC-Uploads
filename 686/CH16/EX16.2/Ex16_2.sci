clc();
clear;

// To calculatevthe amount of water evaporated per hour per square feet from the water surface

u = 10;                    // Flow of air stream in fps
r = 33.3;                  // Relative humidity
T = 519;                   // Temperature in Rankine
p = 0.1130;                // Partial pressure of water vapour
x = 4/12;                  // Water surface in the wind direction    
n = 15.99*10^-5;           // Kinematic viscosity
k = 0.0149;                // Thermal conductivity in Btu/hr-ft-F
Re = u*x/n;                // reynolds number
D = 1.127;                 // Diffusion coefficient in ft^2/sec
R = 85.74;                 // Gas constant in Imperial in Imperial units 

hd =0.664*Re^0.5*(n*3600/D)^(1/3)*D/x;            // Heat transfer coefficient
Pr = 0.710;                                // Prandtls number
Nu = 0.664*sqrt(Re)*Pr^(1/3);              // Nusselt number
h = Nu*k/x;                                // Heat transfer coefficient
ps = 0.2473;                               // Saturation pressure of water vapour
m = hd*(ps-p)*144/(R*T);                        // Water vapour formation rate in lb/hr-ft^2

printf("The rate of amount of water evaporated per sq. foot is %.3f lb/hr-ft^2",m);




