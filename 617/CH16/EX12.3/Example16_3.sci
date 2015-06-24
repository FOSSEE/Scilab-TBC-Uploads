clc();
clear;

// To compute the ammonia diffusing through the stagnant air

x=0.1/12;                            // thickness of still air layer in ft
T=77+460;                            // temperature in degR
p=1;                                 // Atmospheric pressure in atm
pa1=0.3;                             // Pressure of ammonia in still air in atm
pb1=p-pa1;                           // pressure of air in atm
pa2=0;                               // pressure of ammonia in the absorption plane
pb2=p-pa2;                           // pressure of air in absorption plane
pbm=(pb2-pb1)/(log(pb2/pb1));          // Logarithmic mean pressure
D=0.914;                             // Diffusion coefficient for ammonia
R=0.729;                             // Gas constant in ft^3-atm/lb-mole-degR
N=D*p*(pa1-pa2)/(R*T*x*pbm);
printf("The amount of ammonia diffusing through the stagnant air is %.1f lb-mol/hr-ft^2",N);