// Scilab code Exa2.3: : Page 89 (2011)
clc; clear;
T = 1.31e+09*365*24*60*60;    // Half life of the substance,sec
N = 6.022137e+026; // Avogadro number.
m = 0.35*0.012*10^-2; // Mass of K-40, Kg.
A = m*N*0.693/(T*40); // Activity of K-40, disintegrations/sec. 
printf("\nThe activity of K-40 = %5.3e disintegrations/sec = %5.3f micro-curie", A, A/3.7e+004);

// Result
// The activity of K-40 = 1.061e+004 disintegrations/sec = 0.287 micro-curie 