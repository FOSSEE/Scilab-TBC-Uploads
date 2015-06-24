clc();
clear;

// To calculate the true gas temperature

D1=36/12;                                    // diameter of circular duct in ft
D2=5/96;                                     // diameter of tube in ft
Tl=800;                                      // Temperature of tube in degF
To=500;                                      // Temperature of duct in degF
k=0.02;                                      // Thermal conductivity in lb/ft^-2-hr
u=0.18*(10^-9)*(3600^2);                     // Viscosity in slug/ft-hr
p=0.04/32.2;                                 // Density in slug/ft^3
n=u/p;                                       // Kinematic viscosity in ft^2/hr
v=15*3600;                                   // Velocity in ft/hr
e=0.8;                                       // Emmisivity 
Nre=v*D2/n;                                  // Reynolds number
Nnu=0.3*(Nre^0.57);                          // Nusselt number
h=Nnu*k/D2;                                  // Heat transfer coefficient
Tg=Tl+0.174*e*((((Tl+460)/100)^4)-((To+460)/100)^4)/h;   // Gas temperature in degF
printf("The temperature of gas is %d degF",Tg);