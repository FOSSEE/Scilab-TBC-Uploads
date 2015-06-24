// Scilab code Exa2.16 : : Page 94 (2011)
clc; clear;
A_0 = 3.7e+07;    // Initial activity, disintegrations per sec
T = 12.6;    // Half life of I-130, hours
t = 24*3600;    // time for dose absorbed calculation,sec
E = 0.29*1.6e-06;    // Average energy of beta rays, ergs
m = 2;    // Mass of iodine thyroid tissue, gm
lambda = 0.693/(T*3600);    // Disintegration constant, sec^-1
N_0 = A_0/lambda;    // Initial number of atoms
N = N_0*[1-%e^(-lambda*t)];    // Number of average atoms disintegrated
E_A = N*E;    // Energy of beta rays emitted, ergs
E_G = E_A/(2*97.00035);    // Energy of beta rays emitted per gram of tissue, REP  
printf("\nThe energy of beta rays emitted per gram of tissue = %6.1f REP", E_G);

// Result
// The energy of beta rays emitted per gram of tissue = 4245.0 REP 