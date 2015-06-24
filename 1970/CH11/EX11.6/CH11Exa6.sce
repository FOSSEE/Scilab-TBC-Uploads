// Scilab code Exa11.6: : Page-537 (2011)
clc; clear;
K_E = 7.5*1.6023e-13;        // Kinetic energy, joule 
r = 0.51;                    // Radius of the proton's orbit, metre
E = 5*10^6;                // Electric field, volts per metre
m = 1.67e-27;            // Mass of the proton, Kg
q = 1.6023e-19;                // Charge of the proton, C
v = sqrt(2*K_E/m);        // Velocity of the proton, metre per sec
B_red = E/v;                // The effective reduction in magnetic field, tesla
B = m*v/(q*r);            // Total magnetic field produced, tesla
r_change = r*B_red/B;        // The change in orbit radius, metre
 printf("\nThe effective reduction in magnetic field = %5.3f tesla  \nThe change in orbit radius = %5.3f metre ", B_red, r_change);

// Result
// The effective reduction in magnetic field = 0.132 tesla  
// The change in orbit radius = 0.087 metre  