
// Scilab Code Ex3.5: Page-98 (2013)
clc; clear
lambda_max = 500e-009;    // Maximum intensity wavelength emitted by the sun, m
b = 2.898e-003;    // Wein's constant, m-K
sigma = 5.67e-008;    // Stefan's constant, W/Sq.m-K^4
r = 6.96e+008;    // Radius of the sun, m
r_E = 6.37e+006;    // Radius of the earth, m
R_E = 1.49e+011;    // Mean-earth sun distance, m
S = 4*%pi*r^2;    // Surface area of the sun, Sq.m
T_sun = b/lambda_max;    // The temperature of the sun's surface, K
R_T = sigma*T_sun^4;    // Power per unit area radiated by the sun, W/Sq.m
P_sun = R_T*S;    // The total power radiated from the sun's surface, W
F = r_E^2/(4*R_E^2);    // Fraction of sun's radiation received by Earth
P_Earth_received = P_sun*F;    // The radiation received by the Earth from the sun, W
U_Earth = P_Earth_received*60*60*24;    // The radiation received by the Earth from the sun in one day, J
R_Earth = P_Earth_received/(%pi*r_E^2);    // Power received by the Earth per unit of exposed area, W/Sq.m
printf("\nThe surface temperature of the sun = %4d K", ceil(T_sun));
printf("\nThe power per unit area emitted from the surface of the sun = %4.2e W/Sq.m", R_T);
printf("\nThe energy received by the Earth each day from the radiation of sun = %4.2e J", U_Earth);
printf("\nThe power received by the Earth per unit of exposed area = %4d W/Sq.m", ceil(R_Earth));

// Result
// The surface temperature of the sun = 5796 K
// The power per unit area emitted from the surface of the sun = 6.40e+007 W/Sq.m
// The energy received by the Earth each day from the radiation of sun = 1.54e+022 J
// The power received by the Earth per unit of exposed area = 1397 W/Sq.m 
// The answers are given wrong in the textbook