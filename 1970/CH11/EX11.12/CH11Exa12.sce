// Scilab code Exa11.12 : : Page-539 (2011)
clc; clear;
e = 1.6e-19;        // Charge of an electron, C
R = 9.144;            // Radius, metre
m_p = 1.67e-027;        // Mass of the proton, Kg
E = 3.6*1.6e-13;        // Energy, joule
L = 3.048;         // Length of the one synchrotron section, metre 
T = 3;            // Kinetic energy, giga electron volts
c = 3e+08;        // Velocity of the light, metre per sec
m_0_c_sq = 0.938;    // Relativistic energy, mega electron volts
B = round (sqrt(2*m_p*E)/(R*e)*10^4);        // Maximum magnetic field density, web per square metre
v = B*10^-4*e*R/m_p;        // Velocity of the proton, metre per sec
f_c = v/(2*%pi*R*10^6);        // Frequency of the circular orbit, mega cycles per sec
f_0 = 2*%pi*R*f_c*10^3/(2*%pi*R+4*L);    // Reduced frequency, kilo cycles per sec
B_m = 3.33*sqrt(T*(T+2*m_0_c_sq))/R;    // Relativistic field, web per square metre
f_0 = c^2*e*R*B*1e-004/((2*%pi*R+4*L)*(T+m_0_c_sq)*e*1e+015);    // Maximum frequency of the accelerating voltage, mega cycles per sec
 printf("\nThe maximum magnetic flux density = %5.3f weber/Sq.m\nThe maximum frequency of the accelerating voltage = %4.2f MHz", B_m, f_0);
 
// Result
// The maximum magnetic flux density = 1.393 weber/Sq.m
// The maximum frequency of the accelerating voltage = 0.09 MHz
// Answer is given wrongly in the textbook 
