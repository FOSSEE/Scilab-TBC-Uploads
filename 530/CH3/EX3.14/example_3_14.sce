clear;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 3
// Thermal Radiation

// Example 3.14
// Page 147
printf("Example 3.14, Page 147 \n\n")

D = 1 ; // [m]
r = 6250 ; // [km]
D_surf = 300 ; // [km]
s = 5.670*10^-8;
e = 0.3 ;
Tc = -18+273 ; // [K]
T_surf = 27+273 ; // [K]

// Rate of emissino of radiant energy from the two faces of satellite disc
r_emission = 2*e*%pi*((D/2)^2)*s*Tc^4; // [W]

// A2*F21 = A1*F12
sina = (r/(r+D_surf));
F12 = sina^2;

// Rate at which the satellite receives and absorbs energy coming from earth
r_receive = e*s*(%pi*((D/2)^2))*F12*T_surf^4; // [W]

r_loss = r_emission - r_receive; // [W]

printf("Net Rate at which energy is leaving the satellite = %f W",r_loss);

