// Scilab code Exa6.2 : : Page-241 (2011)
clc; clear;
M_0 = 9.10939e-031;         // Rest mass of the electron, Kg
C = 2.92e+08;            // Velocity of the light, metre per sec
E = 1.71*1.60218e-013;        // Energy of the beta particle, joule
e = 1.60218e-019;                // Charge of the electron, C 
R = 0.1;                     // Radius of the orbit, metre
B = M_0*C*(E/(M_0*C^2)+1)*1/(R*e); // Magnetic field perpendicular to the beam  of the particle, weber per square metre

printf("\nThe magnetic field perpendicular to the beam of the particle = %5.3f Wb/square-metre", B);

// Result
// The magnetic field perpendicular to the beam of the particle = 0.075 Wb/square-metre 
