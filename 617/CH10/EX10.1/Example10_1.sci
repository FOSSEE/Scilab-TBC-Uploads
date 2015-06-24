clc();
clear;

// To determne the heat transfer coefficient for steam
y=1.9;                                      // Density in slug/ft^-2
u=0.0354;                                   // Viscosity in slug/ft-hr
k=0.376;                                    // Thermal conductivity in Btu/hr-ft-degF
l=32600;                                    // Heat of condensation in Btu/slug
Tg=142;                                     // Temperature of steam in degF
Tw=138;                                     // Temperature of wall in degF
delT=Tg-Tw;                                 // Temperature driving force in degF
g=418*10^6;                                 // Gravity in ft/sec^2
L=1/12;                                     // Outside diameter of horizontal tube in ft
C=0.725;                                    // For horizontal tube
h=C*(g*y^2*l*k^3/(L*u*delT))^0.25;          // Heat transfer coefficient in Btu/hr-ft^2-degF
printf("The heat transfer coefficient for steam condensing on a horizontal tube is %d Btu/hr-ft^2-degF",h);