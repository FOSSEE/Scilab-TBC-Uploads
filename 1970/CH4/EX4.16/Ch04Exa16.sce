// Scilab code Exa4.16 : : Page 182 (2011)
clc; clear;
u = 1.49;        // Refractive index
E = 20*1.60218e-019;        // Energy of the electron, joule
m_e = 9.1e-031;            // Mass of the electron, Kg
C = 3e-08;                // Velocity of the light, m/s
bta = (1 + {1/(E/(m_e*C^2)+1)}^2 );   // Boost parameter
z = 1;         // 
L_1 = 4000e-010;            // Initial wavelength, metre
L_2 = 7000e-010;            // Final wavelength, metre
N = 2*%pi*z^2/137*(1/L_1-1/L_2)*(1-1/(bta^2*u^2));        // Number of quanta of visible light, quanta per centimetre
printf("\nThe total number of quantas during emission of visible light = %d quanta/cm", round(N/100));

// Result 
// The total number of quantas during emission of visible light = 270 quanta/cm 