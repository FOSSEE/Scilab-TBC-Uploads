clc;
clear;

// To find the tempearure difference in the plane wall with heat sources
d1 = 0.55;                        // Inside diameter of copper wire
d2 = 0.8;                         // Outside diameter of copper wire
phi = 0.6;                        // Fraction of copper in wire
j = 1300;                         // Current density in conductors in amp/in^2
p = 9.5*10^(-6);                  // Specific resistance in ohm-in^2/ft
h = 4;                            // Heat transfer coefficient on both sides ofcoil
k = 0.2;                          // Thermal conductivity of coil in Btu/hr-ft-F     
T0 = 70;                          // Temperature of air in degF
// Considering it as a plane wall with a thickness of 0.25 ft
b = 0.125;                        // half the thickness of wall in ft
l = 0.0625;                       // Distance between the two walls 
q = j*j*p*phi*144*3.412;          // Generation of heat in Btu/hr-ft-F
th0 = (4730*l*l/(2*k))+(4730*l/h);          // Teperature difference in F
t0 = T0+th0;                      // Temperature at the center in F

printf("The temperature at the centre of the pool is %.1f degF \n",t0);
