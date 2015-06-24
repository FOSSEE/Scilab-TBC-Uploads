clc();
clear;

// To calculate the thickness of turbulent boundary layer at a distance of 12 inch
x = 12/12;                           // Distance from leading edge in ft
v = 33;                              // Stream flowing velocity in ft
n = 15.4*10^(-5);                    // kinematic viscosity, feet^2/s

Re = v*x/n ;                         // reynolds number
delta = 0.376*x/(Re^0.2);            // Boundary layer thickness ,ft
delb = 0.036*delta*12;               // Turbulent layer thickness, in
printf("The turbulent boundarty layer thickness is %.3f ft",delb);