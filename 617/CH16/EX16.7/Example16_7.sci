clc();
clear;

// To calculate the amount of water evaporated in per hour for a square foot of water surface

u=3.82*10^-7;                          // Viscosity in lb-sec/ft^2
rho=2.3*10^-3;                         // Density in lbsec^2/ft^4
A=1;                                   // Area in ft^2
Cp=0.24;                               // Specific heat capacity in abtu/lbm-degF
v=4*3600;                              // Velocity in ft/sec
k=0.015;                               // Thermal conductivity in Btu/hr-ft-degF
p=14.7;                                // Atmospheric pressure in psi 
M=29;                                  // Avg. molecular weight of air
T1=70+460;                             // Temperature of still air in degF
T2=90+460;                             // temperature of surface of water in degF
L=1;                                   // For characteristic of 1 ft    
D=0.992;                               // Diffusivity in ft^2/sec 
                        
// Heat transfer equation for laminar flow of a flat surface
Ngr=32.2*L^3*((T2/T1)-1)/(u/rho)^2;    // Grasshops number
Npr=u*3600*Cp*32.2/k;                  //  Prandtls number
Nnu=0.75*(Ngr*Npr)^.25;                // Nusselt number
h=Nnu*k/L;                             // Heat transfer coefficient
Ns=u*3600/(rho*D);                     // Schimdt mumber
hmc=h*D*(Ns/Npr)^0.25/k;               // Heat transfer coe
pv1=0.18;                              // Vapour pressure at 40% humidity
pv2=0.69;                              // Vapour pressure at saturation
pa1=p-pv1;                             // Absolute pressure of air at 40% rel. humidity in psi
pa2=p-pv2;                             // Absolute pressure of saturated air in psi
pbm=(pa1+pa2)/2;                       // Log mean pressure in psi
R=1544;                                // Universal gas constant in ft^3-psi/lbmol-degR
T=(T1+T2)/2;                           // Average temperature in degR
N=hmc*p*(pv2-pv1)*144/(R*T*pbm)*18;    // mass transfer rate in lbmol/hr-ft^2
printf("The amount of water evaporated per hour is %.4f lb mol/hr-ft^2",N);
