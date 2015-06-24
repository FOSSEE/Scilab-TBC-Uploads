// Scilab code Exa6.7: : Page-242 (2011)
clc; clear;
N = 3.7e+10*60;        // Number of disintegration, per sec
H = 0.0268*4.182;        // Heat produced at the output, joule
E = H/(N*1.6e-013);        // Energy of the beta particle, joule
M_Bi = -14.815;            // Mass of Bismuth, MeV
M_Po = -15.977;            // Mass of polonium, MeV
E_0 = M_Bi-M_Po;            // End point energy, MeV
E_ratio = E/E_0;            // Ratio of beta particle energy with end point energy
printf("\nThe energy of the beta particle = %5.3f MeV \nThe ratio of beta particle energy with end point energy = %5.3f ", E, E_ratio);

// Result
// The energy of the beta particle = 0.316 MeV 
// The ratio of beta particle energy with end point energy = 0.272  
