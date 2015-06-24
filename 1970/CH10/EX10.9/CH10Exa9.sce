// Scilab code Exa10.9 : : Page-458 (2011)
clc; clear;
d = 0.1;                // Thickness of Fe-54 sheet, Kg per squre metre
M = 54;                   // Mass number of Fe 
m = 1.66e-027;            // Mass of the proton, Kg
n = d/(M*m);            // Number of nuclei in unit area of the target, nuclei per square metre
ds = 10^-5;            // Area, metre square
r = 0.1;                // Distance between detector and target foil, metre
d_omega =ds/r^2;        // Solid angle, steradian
d_sigma = 1.3e-03*10^-3*10^-28;        // Differential cross section, square metre per nuclei
P = d_sigma*n;                // Probablity, event per proton
I = 10^-7;                    // Current, ampere
e = 1.6e-19;                // Charge of the proton, C
N = I/e;            // Number of protons per second in the incident beam, proton per sec
dN = P*N;            // Number of events detected per second, events per sec
printf("\nThe number of events detected = %d events per sec", dN);

// Result
// The number of events detected = 90 events per sec 