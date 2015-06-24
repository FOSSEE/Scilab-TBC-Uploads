clc();
clear;

// To calculate heat transfer coeeficient fir air flowing over a pipe

D=1/12;                                    // Inner diameter of pipe in ft
k=0.0174;                                  // Thermal conductivity in btu/hr-ft-degF
Nre=8000;                                  // Reynolds number

// From table we can find out nusselt number
Nnu=0.3*Nre^0.57;                           // Nusselt number
h=round(Nnu)*k/D;                           // Heat transfer coefficient in btu/hr-ft^2-degF

printf("heat transfer coefficient for air flowing is %.1f Btu/hr-ft^2-degF",h);

