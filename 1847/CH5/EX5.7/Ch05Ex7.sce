// Scilab Code Ex5.7 :: Page-5.32 (2009)
clc;clear;
A = 235;    // Atomic weight of uranium, gm/mol
N_A = 6.023e+026;   // No. of atoms present in 235 kg of uranium-235
N = N_A*5/A; // No. of nuceli of uranium in 5 kg of U-235
E = N*200;  // Energy released in the fission of 5 kg of U-235, MeV
t = 24*3600;    // Time taken to consume 5 kg of U-235, sec
P = E/t;    // Total power output of the nuclear reactor, MeV per second
printf("\nThe total power output of the nuclear reactor = %4.2e MeV per second", P);

// Result
// The total power output of the nuclear reactor = 2.97e+22 MeV per second 
