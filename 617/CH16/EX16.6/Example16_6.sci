clc();
clear;

// To estimate the amount of water transferred 

u=0.047;                              // Viscosity in lb/hr-ft
rho=0.069;                            // Density in lb-ft^2
D=0.992;                              // Diameter of pipe in ft
v=7.5*3600;                           // Velocity in ft/sec
L=2;                                  // Length of pipe parallel to direction of air flow in ft 
M=0.992;                              // Molecular weight
p=14.696;                             // Atmospheric pressure in psi 
T=460+65;                             // Temperature in degR
M=29;                                 // molecular weight of air
M2=18;                                // Molecular weight of water vapour
A=4;                                  // Area of water surface in ft^2
// Heat transfer equation for laminar flow of a flat surface
Nre=L*v*rho/u;                        // Reynolds number

// Assuming the case that of a fluid flowing parallel to a flat plate , jm=0.0039
jm=0.0039;
Ns=u/(rho*D);                         // Schimdt mumber
Gm=v*rho/M;                           // Mole flow rate
pv1=0.672;                            // Vapour pressure at 40% humidity
pv2=0.600;                            // Vapour pressure at saturation
pa1=p-pv1;                            // Absolute pressure of air at 40% rel. humidity in psi
pa2=p-pv2;                            // Absolute pressure of saturated air in psi
pbm=(pa1+pa2)/2;                      // Log mean pressure in psi
hmp=jm*Gm/(pbm*144*Ns^(2/3));             // Heat transfer coefficient in lbmol/ft^2-hr-psi
N=hmp*(pv1-pv2)*144;                // Mass transfer rate in lb mol/hr-ft^2
W=N*A*M2;
printf("The amount of water evaporated per hour is %.3f lb mol/hr-ft^2",W);