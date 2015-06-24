// Scilab code Exa2.9 :  : Page 91 (2011)
clc; clear;
M_Po = 209.9829; // Mass of Polonium, g
M_Pb = 205.9745; // Mass of lead, g
A = 6.22137e+023; // Avogadro's number
M_He = 4.0026; // Mass of alpha particle, g
C = 3e+08; // Velocity of light, m/s
T = 138*24*3600; // Half life, sec
P = 250; // Power produced, joule/sec
Q = [M_Po-M_Pb-M_He]*931.25; // disintegration energy, MeV
lambda = 0.693/T; // Disintegration constant, per year
N = P/(lambda*Q*1.60218e-013); // Number of atoms, atom
N_0 = N*%e^(1.833); // Number of atoms present initially, atom
W = N_0/A*210; // Weight of Po-210 after one year, g
A_0 = N_0*lambda/(3.7e+010); // Initial activity, curie
printf("\nThe weight of Po-210 after one year = %5.2f g \nThe initial activity of the material = %4.2e curies", W, A_0);

// Result
// The weight of Po-210 after one year = 10.49 g 
// The initial activity of the material = 4.88e+004 curies