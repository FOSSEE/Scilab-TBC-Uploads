clc();
clear;

// To calculate the amount of water evaporated per hour per square foot of surface area

u=0.0437;                             // Viscosity in lb/hr-ft
rho=0.077;                            // Density in lb-ft^2
D=0.992;                              // Diameter of pipe in ft
v=4*3600;                             // Velocity in ft/sec
L=6/12;                               // Length of pipe parallel to direction of air flow in ft 
p=14.7;                               // Atmospheric pressure in psi 
T=460+65;                             // Temperature in degR

// Heat transfer equation for laminar flow of a flat surface
Nre=L*v*rho/u;                        // Reynolds number
Ns=u/(rho*D);                         // Schimdt mumber
Nnu=0.662*(Ns)^(1/3)*sqrt(Nre);       // Nusselt number
hmc=Nnu*D/L;                          // Heat transfer coefficient
pv1=0.144;                            // Vapour pressure at 40% humidity
pv2=0.252;                            // Vapour pressure at saturation
pa1=p-pv1;                            // Absolute pressure of air at 40% rel. humidity in psi
pa2=p-pv2;                            // Absolute pressure of saturated air in psi
pbm=(pa1+pa2)/2;                      // Log mean pressure in psi
R=1544;                               // Universal gas constant in ft^3-psi/lbmol-degR
N=hmc*p*(pa1-pa2)*144/(R*T*pbm);
printf("The amount of water evaporated per hour is %.4f lb mol/hr-ft^2",N);