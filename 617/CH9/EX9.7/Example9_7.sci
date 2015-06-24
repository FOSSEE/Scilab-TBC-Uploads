clc();
clear;
// To calculate the outside tube area for a single-pass steam condenser

Do=1/12;                               // Outside diameter of the condenser in ft
Di=0.902/12;                           // Outside diameter of the condenser in ft
Ts=81.7;                               // Steam temperature in degF
Tw1=61.4;                              // Water inlet temperature in degF
Tw2=69.9;                              // Water outlet temperature in degF
k=63;                                  // Thermal conductivity in Btu/hr-ft-degF
v=7;                                   // average velocity in ft/sec
h1=1270;                               // water side film coefficient i Btu/hr-ft^2-degF
h2=1000;                               // Steam side film coefficient in Btu/hr-ft^2-degF

U=1/((Do/(Di*h1))+(Do*log(Do/Di)/(2*k))+(1/h2));     // Heat transfer coefficient
LMTD=((Ts-Tw1)-(Ts-Tw2))/log((Ts-Tw1)/(Ts-Tw2));   // Log mean temperature diff.
m=731300;                                          // Saturated steam to be handled in lb/hr
L=1097.4-49.7;                                     // Change in enthalpy in Btu/lb
q=m*L;                                             // Heat required in Btu/hr
A=q/(U*LMTD);                                      // Area of condenser in ft^2
printf("The area of steam condenser is %d ft^2",A);

