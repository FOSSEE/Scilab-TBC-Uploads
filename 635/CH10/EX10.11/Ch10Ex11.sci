// Scilab Code Ex 10.11 Lorentz number calculation of a solid: Page-347 (2010
e = 1.6D-19;       // Electronic charge, in C
k = 1.38D-23;      // boltzmann constant, J/mol-K
T = 293;            // Absolute temperature of the solid
K = 390;    // Thermal conductivity of copper at 293 K, W/m-K
l = 0.5;    // Lenght of the copper wire, m
d = 0.3D-3;    // Diameter of cross-section of Cu, m
r = d/2;    // Radius of copper wire, m
R = 0.12;    // Resistance of copper wire, ohm
// As R = 1/con*l/(%pi*r^2)
// Solving for R
con = l/(%pi*r^2*R);    // Conductance of copper, per ohm per metre
// The Lorentz number is defined as the ratio of the Thermal conductivity to the 
// Electrical conductivity of a solid per degree rise in temperature
Lexp = K/(con*T);    // Experimental value of Lorentz number, watt ohm per kelvin square
Lth = %pi^2/3*(k/e)^2;  // Thoeretical value of Lorentz number value, watt ohm per kelvin square
disp(Lexp,"The experimetal value of Lorentz number, in watt ohm per kelvin square, is :"); 
disp(Lth,"The theoretical value of Lorentz number, in watt ohm per kelvin square, is :"); 
printf("\nThe theoretical value of Lorentz number is %f times higher than the experimental one.\n", Lth/Lexp);
// Result
// The experimetal value of Lorentz number, in watt ohm per kelvin square, is :
//    2.258D-08
// The theoretical value of Lorentz number, in watt ohm per kelvin square, is :
//    2.447D-08
// The theoretical value of Lorentz number is  times higher than the experimental one.
//    1.083817