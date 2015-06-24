clc();
clear;

// To find the extent of heating of water and heat transfer 

d = 0.24/12;                    // Diameter of tubes in ft
l = 24/12;                      // Length of tubes in ft
v = 3;                          // velocity of cooling water in ft/sec
T = 140;                        // Temperature of cooling water in F
n = 0.514*10^-5;                // Kinematic viscosity in ft^2/sec
Pr = 3.02;                      // Prandtls number
k = 0.376;                      // Thermal conductivity in Btu/hr-ft-F
Re = d*v/n;                     // Reynolds number 
A = 1.5;                        // Experimental constant
// Turbulent flow
// Greater part of the flow is developed , A=1.5 from the table

St = 0.0384*(v*d/n)^-(1/4)/(1+A*(v*d/n)^-(1/8)*(Pr-1));   // Strantons number
Nu = Re*Pr*St;                                            // Nusselt number
h = Nu*k/d;                               // Heat transfer coefficient  

printf("The heat transfer coefficient of heating of waterr is %d Btu/hr-ft^2-F",h);

