clc();
clear;

// To calculate overall heat transfer coefficient for heat exchanger

Tc1 = 139.7;                                  // Inlet cold fluid temperature in degF
Tc2 = 59.5;                                   // Outlet cold fluid temperature in degF
Th1 = 108.7;                                 // Inlet hot fluid temperature in degF
Th2 = 97.2;                                   // Outlet hot fluid temperature in degF
delt1 = Tc1-Th2;                         // Maximum temperature difference in degF
delt2 = Th1-Tc2;                         // Minimum temperature difference in degF
LMTD = round((delt1-delt2)/log(delt1/delt2));
printf(" \n The log mean temperature difference is %d degF",LMTD);     

m = 18210;                              // Flow rate through tubes
q = m*(Th2-Tc2);                        // Heat loss in Btu/hr
A = 48.1;                               // Area in ft^2
U = q/(A*LMTD);                         // Overall heat transfer coefficient
printf(" \n The overall heat transfer coefficient is %d Btu/hr-ft^2-degF \n",U);


// To calcalute using equations estabilished by correlation
Ts = 113;                               // Average tube temperature in degF
Tf = (123.9+Ts)/2;                      // Film temperature in degF
// At this temperature thermal properties are considered
p1 = 61.7/32.2;                              // Density in slug/ft^3
u1 = 1.38/32.2;                              // Viscosity in slug/ft-hr
Cp1 = 1*32.2;                                // Btu/slug/ft
k1 = 0.366;                                  // Thermal conductivity in Btu/hr-ft-degF
D1 = 0.375/12;                               // Diameter in ft
v1 = 7610;                                   // Velocity in ft/sec
Nre1 = v1*D1*p1/u1;                          // Reynolds number
Npr1 = u1*Cp1/k1;                            // Prandtls number
Nnu1 = 0.33*Nre1^0.6*Npr1^(1/3);             // Nusselt number
h1 = Nnu1*k1/D1;                             // Heat transfer coefficient
printf(" \n The outer heat transfer coefficient is %d Btu/hr-ft^2-degF ",h1);

// Taking the thermal properties at 78.3 degF
p2 = 62.2/32.2;                              // Density in slug/ft^3
u2 = 2.13/32.2;                              // Viscosity in slug/ft-hr
Cp2 = 1*32.2;                                // Heat capacity in Btu/slug/ft
k2 = 0.348;                                  // Thermal conductivity in Btu/hr-ft-degF
D2 = 0.277/12;                               // Diameter in ft
v2 = 7140;                                   // Velocity in ft/sec
Nre2 = v2*D2*p2/u2;                          // Reynolds number
Npr2 = u2*Cp2/k2;                            // Prandtls number
Nnu2 = 0.023*Nre2^0.8*Npr2^(0.4);            // Nusselt number
h2 = Nnu2*k2/D2;                             // Heat transfer coefficient
printf(" \n The inner heat transfer coefficient is %d Btu/hr-ft^2-degF",h2);

k3 = 58;
U1 = 1/((D1/(D2*h2))+(D1*log(D1/D2)/(2*k3))+(1/h1));   // Heat transfer coefficient 
printf(" \n The overall heat transfer coefficient accordind to estabilished correlation  is %d Btu/hr-ft^2-degF \n",U1);