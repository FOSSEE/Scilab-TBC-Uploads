// Scilab code Exa2.1: : Page-88 (2011) 
clc; clear;
T = 26.8*60;    // Half life of the substance, s
C = 3.7e+010;   // One curie, disintegration per sec
N = 6.022137e+026; // Avogadro number, per kmol
m = 214; // Molecular weight of RaB, kg/kmol
R = 1e+006; // One Rutherford, disintegration per sec.
W_C = C*T*m/(N*0.693); // Weight of one Curie of RaB, Kg 
W_R = R*T*m/(N*0.693); // Weight of one Rutherford of RaB, Kg 
printf("\nWeight of one Curie of RaB : %5.3e Kg \nWeight of one Rutherford of RaB : %5.3e Kg", W_C, W_R);

// Result
// Weight of one Curie of RaB : 3.051e-011 Kg 
// Weight of one Rutherford of RaB : 8.245e-016 Kg 